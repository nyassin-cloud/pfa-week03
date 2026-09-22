"""Maya 2026 Weather Generator. Run this entire file in Script Editor > Python.

Y-up, scene units, finite playback-range bake. Select static polygon objects,
capture them, enable collisions, then generate a tab. Each tab is a separate layer.
Snow buildup is capped, overlapping surface geometry, not a physical snow solver.
Rain disappears on impact; no fluid, wetness, splashes, clouds or thunder audio.
PNG cards support real alpha. Arnold conversion requires the mtoa plugin.
"""
import math
import os
import random
import traceback
from functools import partial
import maya.cmds as cmds
import maya.api.OpenMaya as om


PRESETS = {
    # count, radius, frames/fall, wind X, turbulence, spin, color, geometry
    'Snow': (150, .12, 72, 2, .7, 90, (.95, .98, 1), 'Sphere'),
    'Rain': (200, .035, 18, 1, .05, 0, (.55, .72, .9), 'Streak'),
    'Ash': (140, .07, 110, 4, 1.5, 180, (.24, .22, .2), 'Card'),
    'Dust': (180, .035, 150, 5, 2, 50, (.55, .42, .25), 'Sphere'),
    'Leaves': (80, .23, 90, 4, 2, 540, (.55, .24, .045), 'Leaf'),
    'Storm': (240, .045, 22, 12, 1.4, 0, (.5, .62, .73), 'Streak'),
    'Thunderstorm': (240, .045, 18, 14, 1.2, 0, (.5, .62, .73), 'Streak'),
    'Snow Storm': (240, .10, 38, 12, 2.2, 220, (.95, .98, 1), 'Sphere'),
    'Custom': (100, .12, 72, 2, 1, 180, (.7, .65, .5), 'Card'),
}


def key(node, attr, frame, value, stepped=False):
    cmds.setKeyframe(node, attribute=attr, time=frame, value=value,
                     inTangentType='linear',
                     outTangentType='step' if stepped else 'linear')


class WeatherGenerator:
    WINDOW = 'weatherGenerator2026UI'
    TAG = 'weatherGenerator2026Owned'

    def __init__(self):
        self.ui = {}
        self.colliders = []
        if cmds.window(self.WINDOW, exists=True):
            cmds.deleteUI(self.WINDOW)
        cmds.window(self.WINDOW, title='Weather Generator | Maya 2026',
                    widthHeight=(620, 850))
        root = cmds.columnLayout(adjustableColumn=True, rowSpacing=6)
        cmds.text(label='WEATHER GENERATOR', font='boldLabelFont', height=28)
        cmds.text(label='Bake the playback range. Each tab creates its own weather layer.')
        cmds.button(label='Capture selected static polygon colliders', command=self.capture)
        self.collider_label = cmds.text(label='No colliders captured.')
        cmds.text(label='Colliders are sampled at range start. Regenerate after scene edits.')
        self.tabs = cmds.tabLayout(innerMarginWidth=8, innerMarginHeight=8)
        for name, preset in PRESETS.items():
            scroll = cmds.scrollLayout(childResizable=True, height=650)
            cmds.columnLayout(adjustableColumn=True, rowSpacing=5)
            c = self.ui[name] = {}
            count, size, duration, wind, turb, spin, color, geo = preset
            c['image'] = cmds.textFieldButtonGrp(label='Transparent PNG', buttonLabel='Browse',
                                               buttonCommand=partial(self.browse, name))
            c['geo'] = cmds.optionMenuGrp(label='Geometry (without PNG)')
            for item in ('Sphere', 'Streak', 'Card', 'Leaf'):
                cmds.menuItem(label=item)
            cmds.optionMenuGrp(c['geo'], edit=True, value=geo)
            c['color'] = cmds.colorSliderGrp(label='Color', rgbValue=color)
            for field, label, value in [('count', 'Particle count (1-500)', count),
                                         ('duration', 'Frames per fall', duration),
                                         ('seed', 'Random seed', 42),
                                         ('cap', 'Maximum deposits (0-2000)', 500),
                                         ('interval', 'Lightning interval (frames)', 48)]:
                c[field] = cmds.intFieldGrp(label=label, value1=value)
            for field, label, value in [
                ('width', 'Emitter width', 20), ('depth', 'Emitter depth', 20),
                ('height', 'Fall height above base', 15),
                ('cx', 'Emitter center X', 0), ('base', 'Base / ground Y', 0),
                ('cz', 'Emitter center Z', 0), ('size', 'Particle radius', size),
                ('variation', 'Size / speed variation (0-0.9)', .3),
                ('wx', 'Wind X distance per fall', wind),
                ('wz', 'Wind Z distance per fall', 0),
                ('turb', 'Turbulence distance', turb), ('gust', 'Gust strength', .5),
                ('spin', 'Tumble degrees per fall', spin),
                ('deposit', 'Deposit radius multiplier', 2.5),
                ('slope', 'Maximum deposit slope (degrees)', 55),
                ('flash', 'Lightning light intensity', 3)]:
                c[field] = cmds.floatFieldGrp(label=label, value1=value, precision=3)
            c['collision'] = cmds.checkBox(label='Collide with captured polygon meshes', value=False)
            c['ground'] = cmds.checkBox(label='Also collide with base ground plane', value=True)
            c['accumulate'] = cmds.checkBox(label='Build surface deposits on impact',
                                            value=name in ('Snow', 'Snow Storm'))
            c['lightning'] = cmds.checkBox(label='Add lightning bolts and light flashes',
                                          value=name == 'Thunderstorm')
            cmds.button(label='Generate / replace ' + name, height=32, command=partial(self.generate, name))
            cmds.button(label='Select ' + name, command=partial(self.select, name))
            cmds.button(label='Clear ' + name, command=partial(self.clear, name))
            cmds.button(label='Arnold: PNG original colors', command=partial(self.arnold, name, False))
            cmds.button(label='Arnold: PNG white', command=partial(self.arnold, name, True))
            cmds.setParent(self.tabs)
            cmds.tabLayout(self.tabs, edit=True, tabLabel=(scroll, name))
        cmds.setParent(root)
        self.status = cmds.text(label='Start with 100-200 particles. Press 6 for textures, then Play.', height=30)
        cmds.showWindow(self.WINDOW)

    def browse(self, name, *_):
        paths = cmds.fileDialog2(fileMode=1, fileFilter='PNG (*.png)')
        if paths:
            cmds.textFieldButtonGrp(self.ui[name]['image'], edit=True, text=paths[0])

    def capture(self, *_):
        shapes = set()
        for node in cmds.ls(selection=True, objectsOnly=True, long=True) or []:
            candidates = [node] if cmds.nodeType(node) == 'mesh' else (
                cmds.listRelatives(node, allDescendents=True, type='mesh', fullPath=True) or [])
            for shape in candidates:
                if cmds.getAttr(shape + '.intermediateObject'):
                    continue
                if any(shape.startswith(g + '|') for g in self.groups()):
                    continue
                shapes.add(shape)
        self.colliders = sorted(shapes)
        cmds.text(self.collider_label, edit=True, label='Captured {} polygon meshes.'.format(len(shapes)))

    def groups(self, name=None):
        return [n for n in cmds.ls(type='transform', long=True) or []
                if cmds.attributeQuery(self.TAG, node=n, exists=True)
                and cmds.getAttr(n + '.' + self.TAG)
                and (name is None or cmds.getAttr(n + '.weatherType') == name)]

    def own(self, group, node):
        indices = cmds.getAttr(group + '.resources', multiIndices=True) or []
        cmds.connectAttr(node + '.message', '{}.resources[{}]'.format(group, max(indices, default=-1) + 1))
        return node

    def delete_group(self, group):
        nodes = cmds.listConnections(group + '.resources', source=True, destination=False) or []
        cmds.delete(group)
        for node in set(nodes):
            if cmds.objExists(node):
                cmds.delete(node)

    def clear(self, name, *_):
        cmds.undoInfo(openChunk=True, chunkName='Clear weather')
        try:
            for group in self.groups(name):
                self.delete_group(group)
        finally:
            cmds.undoInfo(closeChunk=True)

    def select(self, name, *_):
        groups = self.groups(name)
        if groups:
            cmds.select(groups, replace=True)

    def material(self, group, color, image=''):
        mat = self.own(group, cmds.shadingNode('lambert', asShader=True, name='Weather_MAT#'))
        sg = self.own(group, cmds.sets(renderable=True, noSurfaceShader=True, empty=True, name='Weather_SG#'))
        cmds.connectAttr(mat + '.outColor', sg + '.surfaceShader')
        cmds.setAttr(mat + '.color', *color, type='double3')
        if image:
            tex = self.own(group, cmds.shadingNode('file', asTexture=True, name='Weather_PNG#'))
            uv = self.own(group, cmds.shadingNode('place2dTexture', asUtility=True))
            cmds.setAttr(tex + '.fileTextureName', image, type='string')
            cmds.setAttr(tex + '.alphaIsLuminance', False)
            cmds.connectAttr(uv + '.outUV', tex + '.uvCoord')
            cmds.connectAttr(uv + '.outUvFilterSize', tex + '.uvFilterSize')
            cmds.connectAttr(tex + '.outColor', mat + '.color')
            cmds.connectAttr(tex + '.outTransparency', mat + '.transparency')
            # Track this specific PNG shading group for Arnold conversion.
            cmds.addAttr(sg, longName='weatherTexture', attributeType='message')
            cmds.connectAttr(tex + '.message', sg + '.weatherTexture')
        return sg

    def geometry(self, group, kind, size, sg, image=False):
        if image or kind == 'Card':
            cards = [cmds.polyPlane(width=size*2, height=size*2, axis=axis,
                     subdivisionsX=1, subdivisionsY=1, constructionHistory=False)[0]
                     for axis in ((1, 0, 0), (0, 0, 1))]
            obj = cmds.polyUnite(cards, constructionHistory=False)[0]
        elif kind == 'Leaf':
            obj = cmds.polyCreateFacet(point=[(-size, 0, 0), (0, size*.2, size*2),
                                               (size, 0, 0), (0, 0, -size)], constructionHistory=False)[0]
        else:
            obj = cmds.polySphere(radius=size, subdivisionsX=6, subdivisionsY=4,
                                  constructionHistory=False)[0]
            if kind == 'Streak':
                cmds.scale(.4, 8, .4, obj)
                cmds.makeIdentity(obj, apply=True, scale=True)
        obj = cmds.parent(obj, group)[0]
        cmds.sets(obj, edit=True, forceElement=sg)
        return obj

    def hit(self, a, b, meshes, ground):
        self._last_collision_label = None
        direction = om.MVector(*b) - om.MVector(*a)
        if direction.length() < 1e-9:
            return None
        # cmds positions are in scene/UI units; OpenMaya mesh coordinates are cm.
        unit_scale = om.MDistance(1.0, om.MDistance.uiUnit()).asCentimeters()
        ray_origin = om.MFloatPoint(*[value*unit_scale for value in a])
        ray_direction = om.MFloatVector(*[direction[i]*unit_scale for i in range(3)])
        best = None
        for mesh, accel in meshes:
            result = mesh.closestIntersection(ray_origin, ray_direction,
                        om.MSpace.kWorld, 1.0, False, accelParams=accel)
            if result and (best is None or result[1] < best[0]):
                normal = mesh.getPolygonNormal(result[2], om.MSpace.kWorld).normal()
                best = (result[1], tuple(result[0][i]/unit_scale for i in range(3)), normal)
                self._last_collision_label = mesh.fullPathName()
        if ground is not None and a[1] >= ground and b[1] <= ground and a[1] != b[1]:
            ratio = (a[1] - ground) / (a[1] - b[1])
            if best is None or ratio < best[0]:
                best = (ratio, tuple(a[i] + direction[i]*ratio for i in range(3)), om.MVector(0, 1, 0))
                self._last_collision_label = 'Invisible ground plane'
        return best

    def values(self, name):
        c = self.ui[name]
        v = {}
        for k, control in c.items():
            if k in ('image', 'geo', 'color'):
                continue
            if k in ('collision', 'ground', 'accumulate', 'lightning'):
                v[k] = cmds.checkBox(control, query=True, value=True)
            elif k in ('count', 'duration', 'seed', 'cap', 'interval'):
                v[k] = cmds.intFieldGrp(control, query=True, value1=True)
            else:
                v[k] = cmds.floatFieldGrp(control, query=True, value1=True)
        v['image'] = cmds.textFieldButtonGrp(c['image'], query=True, text=True).strip()
        v['geo'] = cmds.optionMenuGrp(c['geo'], query=True, value=True)
        v['color'] = cmds.colorSliderGrp(c['color'], query=True, rgbValue=True)
        if any(not math.isfinite(x) for x in v.values() if isinstance(x, (float, int))):
            raise ValueError('Settings must be finite numbers.')
        if not 1 <= v['count'] <= 500 or not 2 <= v['duration'] <= 1000:
            raise ValueError('Use 1-500 particles and 2-1000 frames per fall.')
        positive_fields = {'width': 'Emitter width', 'depth': 'Emitter depth',
                           'height': 'Fall height', 'size': 'Particle radius'}
        if v['accumulate']:
            positive_fields['deposit'] = 'Deposit spread'
        invalid = ['{} = {}'.format(label, v[k]) for k, label in positive_fields.items() if v[k] <= 0]
        if invalid:
            raise ValueError('These values must be greater than zero: ' + ', '.join(invalid))
        if not 0 <= v['variation'] <= .9 or not 0 <= v['slope'] <= 90:
            raise ValueError('Variation must be 0-0.9; slope must be 0-90.')
        if not 0 <= v['cap'] <= 2000 or v['interval'] < 6 or v['flash'] < 0:
            raise ValueError('Deposit cap: 0-2000. Lightning interval: at least 6. Intensity: nonnegative.')
        if v['image'] and not os.path.isfile(v['image']):
            raise ValueError('PNG file not found.')
        if v['collision'] and (not self.colliders or any(not cmds.objExists(n) for n in self.colliders)):
            raise ValueError('Capture existing polygon colliders first.')
        return v

    def generate(self, name, *_):
        group = None
        meshes = []
        self.last_build = {'ok': False, 'weather': name}
        try:
            v = self.values(name)
            if cmds.upAxis(query=True, axis=True) != 'y':
                raise ValueError('This generator requires a Y-up scene.')
            start = int(math.ceil(cmds.playbackOptions(query=True, minTime=True)))
            end = int(math.floor(cmds.playbackOptions(query=True, maxTime=True)))
            if not 1 <= end-start <= 1000:
                raise ValueError('Set a playback range of 2-1001 frames.')
        except Exception as error:
            self.report_build_error(error)
            return
        previous_time = cmds.currentTime(query=True)
        old = self.groups(name)
        rng = random.Random(v['seed'])
        cmds.undoInfo(openChunk=True, chunkName='Generate ' + name)
        cmds.refresh(suspend=True)
        try:
            cmds.progressWindow(title='Bake ' + name, progress=0, maxValue=v['count'], isInterruptable=True)
            cmds.currentTime(start)
            if v['collision']:
                for shape in self.colliders:
                    selection = om.MSelectionList()
                    selection.add(shape)
                    mesh = om.MFnMesh(selection.getDagPath(0))
                    meshes.append((mesh, mesh.autoUniformGridParams()))
            group = cmds.group(empty=True, name=name.replace(' ', '') + '_Weather#')
            cmds.addAttr(group, longName=self.TAG, attributeType='bool', defaultValue=True)
            cmds.addAttr(group, longName='weatherType', dataType='string')
            cmds.setAttr(group + '.weatherType', name, type='string')
            cmds.addAttr(group, longName='resources', attributeType='message', multi=True)
            sg = self.material(group, v['color'], v['image'])
            deposit_sg = self.material(group, v['color']) if v['accumulate'] else None
            deposits = 0
            for index in range(v['count']):
                if cmds.progressWindow(query=True, isCancelled=True):
                    raise RuntimeError('Bake cancelled; previous layer retained.')
                size = v['size'] * rng.uniform(1-v['variation'], 1+v['variation'])
                obj = self.geometry(group, v['geo'], size, sg, bool(v['image']))
                duration = max(2, v['duration'] * rng.uniform(1-v['variation'], 1+v['variation']))
                age = rng.uniform(0, duration)
                x = v['cx'] + rng.uniform(-v['width']/2, v['width']/2)
                z = v['cz'] + rng.uniform(-v['depth']/2, v['depth']/2)
                phase = rng.uniform(0, math.tau)
                previous = None
                reset = False
                for frame in range(start, end+1):
                    if reset or age >= duration:
                        age = 0
                        x = v['cx'] + rng.uniform(-v['width']/2, v['width']/2)
                        z = v['cz'] + rng.uniform(-v['depth']/2, v['depth']/2)
                        previous = None
                        reset = False
                        # Hide the teleport interval until the new position is keyed.
                        key(obj, 'visibility', frame-1, 0, True)
                    u = age/duration
                    wave = math.sin(u*math.tau*2+phase)-math.sin(phase)
                    gust = v['gust'] * math.sin(frame*.08+phase)
                    pos = (x+v['wx']*u + v['turb']*wave + gust*u,
                           v['base']+v['height']*(1-u),
                           z+v['wz']*u+v['turb']*.6*math.sin(u*math.tau*3+phase))
                    hit = self.hit(previous, pos, meshes, v['base'] if v['ground'] else None) if previous else None
                    # End each fall at base, so the final ground crossing is tested.
                    if not hit and age+1 >= duration:
                        bottom = (pos[0], v['base']-.001, pos[2])
                        hit = self.hit(pos, bottom, meshes, v['base'] if v['ground'] else None)
                    if hit:
                        pos = hit[1]
                        reset = True
                        if v['accumulate'] and deposits < v['cap'] and hit[2].y >= math.cos(math.radians(v['slope'])):
                            blob = self.geometry(group, 'Sphere', size*v['deposit'], deposit_sg)
                            normal = hit[2]
                            cmds.setAttr(blob + '.translate', *pos, type='double3')
                            rot = om.MVector(0, 1, 0).rotateTo(normal).asEulerRotation()
                            cmds.setAttr(blob + '.rotate', *[math.degrees(a) for a in rot], type='double3')
                            cmds.setAttr(blob + '.scaleY', .3)
                            key(blob, 'visibility', start-1, 0, True)
                            key(blob, 'visibility', frame, 1, True)
                            deposits += 1
                    for axis, value in zip('XYZ', pos):
                        key(obj, 'translate'+axis, frame, value)
                    if v['geo'] == 'Streak' and previous and not v['image']:
                        direction = om.MVector(*pos)-om.MVector(*previous)
                        rot = om.MVector(0, 1, 0).rotateTo(direction.normal()).asEulerRotation() if direction.length() else om.MEulerRotation()
                        angles = [math.degrees(a) for a in rot]
                    else:
                        angles = [v['spin']*u, math.degrees(phase)+v['spin']*.7*u, v['spin']*.3*wave]
                    for axis, value in zip('XYZ', angles):
                        key(obj, 'rotate'+axis, frame, value)
                    key(obj, 'visibility', frame, 0 if hit else 1, True)
                    previous = pos
                    age += 1
                key(obj, 'visibility', start-1, 0, True)
                key(obj, 'visibility', end+1, 0, True)
                cmds.progressWindow(edit=True, progress=index+1, status='Particle {} / {}'.format(index+1, v['count']))
            if v['lightning']:
                self.lightning(group, v, start, end, rng)
            # Register generated animation curves as owned resources for cleanup.
            descendants = cmds.listRelatives(group, allDescendents=True, fullPath=True) or []
            curves = set(cmds.listConnections(descendants, source=True, destination=False, type='animCurve') or [])
            for curve in curves:
                self.own(group, curve)
            for old_group in old:
                self.delete_group(old_group)
            cmds.select(group, replace=True)
            self.last_build = {'ok': True, 'weather': name, 'group': group, 'start': start, 'end': end}
            cmds.text(self.status, edit=True, label='{}: {} particles, {} deposits; baked {}-{}.'.format(name, v['count'], deposits, start, end))
        except Exception as error:
            if group and cmds.objExists(group):
                self.delete_group(group)
            self.last_build['error'] = str(error)
            traceback.print_exc()
        finally:
            try:
                for mesh, _ in meshes:
                    mesh.freeCachedIntersectionAccelerator()
                cmds.progressWindow(endProgress=True)
                cmds.currentTime(start if self.last_build['ok'] else previous_time)
            finally:
                cmds.refresh(suspend=False)
                cmds.undoInfo(closeChunk=True)
            cmds.refresh(force=True)
        if not self.last_build['ok']:
            self.report_build_error(self.last_build.get('error', 'Build did not finish.'))

    def report_build_error(self, error):
        message = 'Weather build stopped: ' + str(error)
        cmds.text(self.status, edit=True, label=message)
        cmds.warning(message)
        cmds.confirmDialog(title='Weather build stopped', message=message,
                           button=['OK'], defaultButton='OK')

    def lightning(self, group, v, start, end, rng):
        sg = self.material(group, (.7, .8, 1))
        mat = cmds.listConnections(sg+'.surfaceShader', source=True, destination=False)[0]
        cmds.setAttr(mat+'.incandescence', 4, 4, 5, type='double3')
        light = cmds.directionalLight(name='WeatherLightning#', intensity=0)
        parent = cmds.listRelatives(light, parent=True, fullPath=True)[0]
        parent = cmds.parent(parent, group)[0]
        light = cmds.listRelatives(parent, shapes=True, fullPath=True)[0]
        cmds.setAttr(parent+'.rotate', -65, 25, 0, type='double3')
        key(light, 'intensity', start-1, 0, True)
        for frame in range(start+5, end-3, v['interval']):
            bolt = cmds.group(empty=True, parent=group, name='LightningBolt#')
            x, z = v['cx']+rng.uniform(-v['width']/2, v['width']/2), v['cz']+rng.uniform(-v['depth']/2, v['depth']/2)
            points = [(x+rng.uniform(-.8,.8), v['base']+v['height']*(1-i/8), z+rng.uniform(-.5,.5)) for i in range(9)]
            for a, b in zip(points, points[1:]):
                direction = om.MVector(*b)-om.MVector(*a)
                segment = cmds.polyCylinder(radius=max(.015, v['size']*.4), height=direction.length(), subdivisionsX=5, subdivisionsY=1, constructionHistory=False)[0]
                segment = cmds.parent(segment, bolt)[0]
                cmds.setAttr(segment+'.translate', *[(a[i]+b[i])/2 for i in range(3)], type='double3')
                rot = om.MVector(0,1,0).rotateTo(direction.normal()).asEulerRotation()
                cmds.setAttr(segment+'.rotate', *[math.degrees(n) for n in rot], type='double3')
                cmds.sets(segment, edit=True, forceElement=sg)
            key(bolt, 'visibility', start-1, 0, True)
            for offset, visible, intensity in ((0,1,v['flash']), (1,0,0), (2,1,v['flash']*.65), (3,0,0)):
                key(bolt, 'visibility', frame+offset, visible, True)
                key(light, 'intensity', frame+offset, intensity, True)

    def arnold(self, name, white, *_):
        groups = self.groups(name)
        if not groups:
            cmds.warning('Generate this weather layer first.')
            return
        try:
            if not cmds.pluginInfo('mtoa', query=True, loaded=True):
                cmds.loadPlugin('mtoa')
        except RuntimeError as error:
            cmds.warning('Arnold unavailable: '+str(error))
            return
        cmds.undoInfo(openChunk=True, chunkName='Weather Arnold material')
        try:
            for group in groups:
                resources = cmds.listConnections(group+'.resources', source=True, destination=False) or []
                for sg in [n for n in resources if cmds.nodeType(n)=='shadingEngine' and cmds.attributeQuery('weatherTexture', node=n, exists=True)]:
                    texture = cmds.listConnections(sg+'.weatherTexture', source=True, destination=False)[0]
                    current = cmds.listConnections(sg+'.surfaceShader', source=True, destination=False) or []
                    shader = current[0] if current and cmds.nodeType(current[0])=='aiStandardSurface' else self.own(group, cmds.shadingNode('aiStandardSurface', asShader=True, name='Weather_Arnold#'))
                    incoming = cmds.connectionInfo(shader+'.emissionColor', sourceFromDestination=True)
                    if incoming:
                        cmds.disconnectAttr(incoming, shader+'.emissionColor')
                    cmds.setAttr(shader+'.base', 0)
                    cmds.setAttr(shader+'.specular', 0)
                    cmds.setAttr(shader+'.emission', 1)
                    if white:
                        cmds.setAttr(shader+'.emissionColor', 1,1,1, type='double3')
                    else:
                        cmds.connectAttr(texture+'.outColor', shader+'.emissionColor', force=True)
                    for channel in 'RGB':
                        cmds.connectAttr(texture+'.outAlpha', shader+'.opacity'+channel, force=True)
                    cmds.connectAttr(shader+'.outColor', sg+'.surfaceShader', force=True)
                for shape in cmds.listRelatives(group, allDescendents=True, type='mesh', fullPath=True) or []:
                    if cmds.attributeQuery('aiOpaque', node=shape, exists=True):
                        cmds.setAttr(shape+'.aiOpaque', False)
            cmds.text(self.status, edit=True, label='Arnold PNG materials updated. Restart the render.')
        finally:
            cmds.undoInfo(closeChunk=True)




"""Run after weather_generator.py to install the redesigned interface."""
from PySide6 import QtCore, QtGui, QtWidgets, QtSvg
from shiboken6 import wrapInstance
import maya.OpenMayaUI as omui


class WeatherStudio(WeatherGenerator):
    STYLES = {
        'Snow': ('Snowfall', '#9cdeff', 'Soft flakes and gentle drift',
                 'M12 2V22M3 7L21 17M3 17L21 7M8 4L12 7L16 4M8 20L12 17L16 20'),
        'Rain': ('Rainfall', '#62aaff', 'Fast, directional rain streaks',
                 'M7 3L3 11M14 3L10 11M21 3L17 11M8 14L4 22M16 14L12 22'),
        'Ash': ('Ashfall', '#b8aec8', 'Slow, tumbling airborne ash',
                'M5 4L8 7L5 10L2 7ZM17 2L20 5L17 8L14 5ZM12 12L16 16L12 20L8 16ZM21 16V21'),
        'Dust': ('Dust', '#dfbe80', 'Fine drifting particles',
                 'M2 7H14Q22 7 19 3M2 12H20M2 17H12Q20 17 17 21'),
        'Leaves': ('Autumn', '#eca16c', 'Fluttering leaves and warm colors',
                   'M4 20Q1 4 21 3Q22 21 4 20ZM4 20L17 7M9 15V9M9 15H16'),
        'Storm': ('Squall', '#80bbc6', 'Strong gusts and slanted rain',
                  'M3 11Q0 5 7 5Q11 0 16 5Q23 3 22 11ZM7 15L3 21M14 15L10 21M21 15L17 21'),
        'Thunderstorm': ('Thunder', '#c5a1ff', 'Rain with lightning and light flashes',
                         'M3 9Q0 3 7 4Q12 0 16 4Q23 2 22 10M13 7L7 15H12L9 23L20 12H14L17 7Z'),
        'Snow Storm': ('Blizzard', '#8de5de', 'Dense snow in turbulent wind',
                       'M2 5H21M2 9H16M12 12V23M7 15L17 21M7 21L17 15M19 12H23'),
        'Custom': ('Studio', '#d9c58f', 'Design your own falling effect',
                   'M5 2V22M12 2V22M19 2V22M2 7H8M9 16H15M16 10H22'),
    }

    def __init__(self):
        self.ui = {}
        self.colliders = []
        if cmds.window(self.WINDOW, exists=True):
            cmds.deleteUI(self.WINDOW)
        screen = QtGui.QGuiApplication.screenAt(QtGui.QCursor.pos()) or QtGui.QGuiApplication.primaryScreen()
        available = screen.availableGeometry() if screen else None
        width = min(780, max(440, available.width()-80)) if available else 780
        height = min(760, max(340, available.height()-120)) if available else 760
        cmds.window(self.WINDOW, title='Atmosphere | Weather Studio', widthHeight=(width, height),
                    sizeable=True, resizeToFitChildren=False, menuBar=True)
        self.main_form = cmds.formLayout()
        self.settings_scroll = cmds.scrollLayout(parent=self.main_form, childResizable=True)
        root = cmds.columnLayout(adjustableColumn=True, rowSpacing=8)
        cmds.text(label='A T M O S P H E R E', font='boldLabelFont', height=38)
        cmds.text(label='WEATHER STUDIO  /  Choose a look. Shape its motion. Build your scene.', height=24)
        cmds.frameLayout(label='Scene surfaces  |  Shared across weather layers', collapsable=True, marginWidth=10, marginHeight=8)
        cmds.columnLayout(adjustableColumn=True, rowSpacing=5)
        cmds.button(label='Use selected objects as collision surfaces', height=30, command=self.capture)
        self.collider_label = cmds.text(label='No surfaces selected.', align='left')
        cmds.text(label='Static polygon objects only. Regenerate after moving a surface.', align='left')
        cmds.setParent(root)
        self.tabs = cmds.tabLayout(innerMarginWidth=10, innerMarginHeight=10, scrollableTabs=True)
        for name, preset in PRESETS.items():
            title, hex_color, description, _ = self.STYLES[name]
            color = QtGui.QColor(hex_color)
            accent = (color.redF(), color.greenF(), color.blueF())
            tint = tuple(channel * .27 for channel in accent)
            count, size, duration, wind, turb, spin, particle_color, geo = preset
            # One outer scrollbar contains surfaces, tabs, utilities and inline help.
            # Tab pages have no fixed-height inner scroll area.
            scroll = cmds.columnLayout(adjustableColumn=True)
            page = cmds.columnLayout(adjustableColumn=True, rowSpacing=8)
            cmds.text(label=title.upper() + '  /  ' + description, height=38,
                      font='boldLabelFont', backgroundColor=tint)
            c = self.ui[name] = {}

            def section(label, collapsed=False):
                cmds.setParent(page)
                cmds.frameLayout(label=label, collapsable=True, collapse=collapsed,
                                 marginWidth=10, marginHeight=8)
                cmds.columnLayout(adjustableColumn=True, rowSpacing=6)

            def fields(items, integer=False):
                factory = cmds.intFieldGrp if integer else cmds.floatFieldGrp
                for field, label, value in items:
                    options = {} if integer else {'precision': 4}
                    c[field] = factory(label=label, value1=value, **options)

            section('01  /  Look & density')
            c['image'] = cmds.textFieldButtonGrp(label='Texture PNG', buttonLabel='Browse',
                                                buttonCommand=partial(self.browse, name))
            c['geo'] = cmds.optionMenuGrp(label='Particle shape')
            for item in ('Sphere', 'Streak', 'Card', 'Leaf'):
                cmds.menuItem(label=item)
            cmds.optionMenuGrp(c['geo'], edit=True, value=geo)
            c['color'] = cmds.colorSliderGrp(label='Particle color', rgbValue=particle_color)
            fields([('count', 'Particle count (1-500)', count)], True)
            fields([('size', 'Particle radius', size), ('variation', 'Natural variation (0-0.9)', .3)])

            section('02  /  Motion & wind')
            fields([('duration', 'Frames per fall', duration)], True)
            fields([('wx', 'Wind travel X', wind), ('wz', 'Wind travel Z', 0),
                    ('turb', 'Swirl distance', turb), ('gust', 'Gust strength', .5),
                    ('spin', 'Tumble per fall (degrees)', spin)])

            section('03  /  Emitter volume', True)
            fields([('width', 'Width', 20), ('depth', 'Depth', 20), ('height', 'Fall height', 15),
                    ('cx', 'Center X', 0), ('cz', 'Center Z', 0), ('base', 'Ground level Y', 0)])

            section('04  /  Collision & buildup', True)
            c['collision'] = cmds.checkBox(label='Use captured scene surfaces', value=False)
            c['ground'] = cmds.checkBox(label='Use invisible ground plane', value=True)
            c['accumulate'] = cmds.checkBox(label='Leave surface deposits', value=name in ('Snow', 'Snow Storm'))
            fields([('deposit', 'Deposit spread', 2.5), ('slope', 'Maximum surface slope', 55)])
            fields([('cap', 'Deposit limit (0-2000)', 500)], True)
            cmds.text(label='Buildup uses surface patches, not a physical snow simulation.', align='left')

            section('05  /  Lightning', name != 'Thunderstorm')
            c['lightning'] = cmds.checkBox(label='Enable bolts and light flashes', value=name == 'Thunderstorm')
            fields([('interval', 'Frames between strikes', 48)], True)
            fields([('flash', 'Flash intensity', 3)])

            section('06  /  Render & variation', True)
            fields([('seed', 'Random seed', 42)], True)
            cmds.button(label='Arnold PNG  /  Original colors', command=partial(self.arnold, name, False))
            cmds.button(label='Arnold PNG  /  Pure white', command=partial(self.arnold, name, True))
            cmds.text(label='Apply after generation. Restart your Arnold render.', align='left')
            cmds.setParent(self.tabs)
            cmds.tabLayout(self.tabs, edit=True, tabLabel=(scroll, title))
        cmds.setParent(root)
        self.utilities = cmds.columnLayout(adjustableColumn=True, rowSpacing=5)
        self.footer = cmds.columnLayout(parent=self.main_form, adjustableColumn=True, rowSpacing=5)
        self.build_button = cmds.button(label='Build Snowfall', height=40, command=self.build_active)
        cmds.rowLayout(numberOfColumns=2, adjustableColumn=1, columnWidth2=(300, 100))
        cmds.button(label='Select layer', command=lambda *_: self.select(self.active_name()))
        cmds.button(label='Clear layer', command=lambda *_: self.clear(self.active_name()))
        cmds.setParent(self.footer)
        self.status = cmds.text(label='Set your playback range, build a layer, then press Play.', height=42, wordWrap=True)
        cmds.formLayout(self.main_form, edit=True,
            attachForm=[(self.settings_scroll, 'top', 0), (self.settings_scroll, 'left', 0),
                        (self.settings_scroll, 'right', 0), (self.footer, 'left', 8),
                        (self.footer, 'right', 8), (self.footer, 'bottom', 8)],
            attachControl=[(self.settings_scroll, 'bottom', 8, self.footer)])
        cmds.tabLayout(self.tabs, edit=True, changeCommand=self.update_active)
        cmds.showWindow(self.WINDOW)
        self.decorate_tabs()
        self.update_active()

    def active_name(self):
        index = cmds.tabLayout(self.tabs, query=True, selectTabIndex=True)
        return list(PRESETS)[max(0, index - 1)]

    def build_active(self, *_):
        self.generate(self.active_name())

    def update_active(self, *_):
        title, color, _, _ = self.STYLES[self.active_name()]
        qcolor = QtGui.QColor(color)
        cmds.button(self.build_button, edit=True, label='Build / replace ' + title,
                    backgroundColor=(qcolor.redF()*.45, qcolor.greenF()*.45, qcolor.blueF()*.45))

    def decorate_tabs(self):
        pointer = omui.MQtUtil.findControl(self.tabs) or omui.MQtUtil.findLayout(self.tabs)
        if not pointer:
            return
        widget = wrapInstance(int(pointer), QtWidgets.QWidget)
        bars = widget.findChildren(QtWidgets.QTabBar)
        bar = next((b for b in bars if b.count() == len(PRESETS)), None)
        if bar is None:
            return
        bar.setIconSize(QtCore.QSize(22, 22))
        bar.setStyleSheet('QTabBar::tab { padding: 10px 12px; } QTabBar::tab:selected { background: #383d46; }')
        for index, name in enumerate(PRESETS):
            title, color, description, path = self.STYLES[name]
            svg = ('<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">'
                   '<path d="' + path + '" fill="none" stroke="' + color + '" '
                   'stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"/></svg>')
            renderer = QtSvg.QSvgRenderer(QtCore.QByteArray(svg.encode('utf-8')))
            pixmap = QtGui.QPixmap(44, 44)
            pixmap.fill(QtCore.Qt.GlobalColor.transparent)
            painter = QtGui.QPainter(pixmap)
            renderer.render(painter)
            painter.end()
            pixmap.setDevicePixelRatio(2)
            bar.setTabIcon(index, QtGui.QIcon(pixmap))
            bar.setTabTextColor(index, QtGui.QColor(color))
            bar.setTabToolTip(index, title + ': ' + description)





"""Run after the Weather Studio script. Adds explicit particle-source controls."""
import os
import maya.cmds as cmds
from functools import partial


class WeatherStudioOptionalTextures(WeatherStudio):
    WEATHER_SHAPES = {
        'Snow': 'Sphere', 'Rain': 'Streak', 'Ash': 'Card',
        'Dust': 'Sphere', 'Leaves': 'Leaf', 'Storm': 'Streak',
        'Thunderstorm': 'Streak', 'Snow Storm': 'Sphere',
        'Custom': 'Card',
    }

    def __init__(self):
        self.source_controls = {}
        super().__init__()
        for name, controls in self.ui.items():
            parent = cmds.textFieldButtonGrp(
                controls['image'], query=True, parent=True
            )
            menu = cmds.optionMenuGrp(
                parent=parent,
                label='Particle source',
                changeCommand=partial(self.source_changed, name)
            )
            for label in (
                'Automatic weather shape',
                'Choose a shape',
                'PNG texture'
            ):
                cmds.menuItem(label=label)
            self.source_controls[name] = menu
            self.source_changed(name)
        cmds.text(
            self.status, edit=True,
            label='Ready. Automatic weather shapes need no image file.'
        )
        cmds.button(
            parent=self.utilities,
            label='Preview weather in viewport', height=32,
            command=self.preview_weather
        )
        self.preview_after_build = cmds.checkBox(
            parent=self.utilities,
            label='Frame weather in viewport after a successful build', value=True
        )

    def preview_weather(self, *_):
        groups = self.groups(self.active_name())
        if not groups:
            cmds.warning('Build this weather layer first.')
            return
        build = getattr(self, 'last_build', {})
        start = build.get('start') if build.get('weather') == self.active_name() else None
        cmds.currentTime(start if start is not None else cmds.playbackOptions(query=True, minTime=True))
        cmds.select(groups, replace=True)
        panel = cmds.getPanel(withFocus=True)
        if not panel or cmds.getPanel(typeOf=panel) != 'modelPanel':
            panels = [p for p in cmds.getPanel(visiblePanels=True)
                      if cmds.getPanel(typeOf=p) == 'modelPanel']
            panel = panels[0] if panels else None
        if panel:
            cmds.modelEditor(panel, edit=True, polymeshes=True,
                             displayAppearance='smoothShaded')
            if cmds.isolateSelect(panel, query=True, state=True):
                cmds.isolateSelect(panel, edit=True, addSelected=True)
            camera = cmds.modelPanel(panel, query=True, camera=True)
            cmds.viewFit(camera, fitFactor=0.8)
        cmds.refresh(force=True)
        cmds.text(self.status, edit=True,
                  label='Weather selected at playback start. Press Play. Check Isolate Select if hidden.')

    def source_changed(self, name, *_):
        mode = cmds.optionMenuGrp(
            self.source_controls[name], query=True, select=True
        )
        controls = self.ui[name]
        cmds.textFieldButtonGrp(
            controls['image'], edit=True, enable=True
        )
        cmds.optionMenuGrp(
            controls['geo'], edit=True, enable=(mode == 2)
        )

    def browse(self, name, *_):
        paths = cmds.fileDialog2(fileMode=1, fileFilter='PNG (*.png)')
        if paths:
            cmds.textFieldButtonGrp(self.ui[name]['image'], edit=True, text=paths[0])
            cmds.optionMenuGrp(self.source_controls[name], edit=True, select=3)
            self.source_changed(name)
            cmds.text(self.status, edit=True, label='PNG selected. Build / replace to apply it.')

    def values(self, name):
        controls = self.ui[name]
        mode = cmds.optionMenuGrp(
            self.source_controls[name], query=True, select=True
        )
        image = cmds.textFieldButtonGrp(
            controls['image'], query=True, text=True
        ).strip()
        if mode == 3:
            if not image or not os.path.isfile(image):
                raise ValueError(
                    'Choose an existing PNG, or set Particle source '
                    'to Automatic weather shape to build without an image.'
                )
            return super().values(name)

        # Ignore stored PNG paths completely when using generated shapes.
        # Restore the field afterward so switching modes keeps the chosen file.
        cmds.textFieldButtonGrp(controls['image'], edit=True, text='')
        try:
            settings = super().values(name)
        finally:
            cmds.textFieldButtonGrp(
                controls['image'], edit=True, text=image
            )
        settings['image'] = ''
        if mode == 1:
            settings['geo'] = self.WEATHER_SHAPES[name]
        return settings

    def build_active(self, *_):
        name = self.active_name()
        try:
            self.repair_sizes(name)
            self.generate(name)
            if getattr(self, 'last_build', {}).get('ok') and cmds.checkBox(
                    self.preview_after_build, query=True, value=True):
                try:
                    self.preview_weather()
                except Exception as error:
                    cmds.warning('Weather was built, but camera preview failed: ' + str(error))
        except Exception as error:
            import traceback
            traceback.print_exc()
            self.report_build_error(error)

    def repair_sizes(self, name):
        defaults = {'width': 20.0, 'depth': 20.0, 'height': 15.0,
                    'size': PRESETS[name][1]}
        if cmds.checkBox(self.ui[name]['accumulate'], query=True, value=True):
            defaults['deposit'] = 2.5
        corrected = []
        for setting, default in defaults.items():
            field = self.ui[name][setting]
            cmds.floatFieldGrp(field, edit=True, precision=8)
            value = cmds.floatFieldGrp(field, query=True, value1=True)
            if value <= 0:
                cmds.floatFieldGrp(field, edit=True, value1=default)
                slider = getattr(self, '_precision_sliders', {}).get(name, {}).get(setting)
                if slider:
                    cmds.floatSliderGrp(slider, edit=True, value=default)
                corrected.append('{}: {} -> {}'.format(setting, value, default))
        if corrected:
            cmds.warning('Restored valid weather sizes: ' + '; '.join(corrected))





"""Static environment interaction and chronological, layered deposition."""

def weather_warmup_frames(duration, fall=1.0, lift=0.0):
    net = fall-lift
    return min(240, max(0, math.ceil(duration*1.3/net))) if net > .001 else 0


def safe_spawn_height(top, lower, hit_y, random_fraction):
    # Spread particles through unobstructed air instead of resetting them all to the top.
    floor = max(lower, hit_y) if hit_y is not None else lower
    padding = max(abs(top-lower)*.0001, 1e-9)
    floor = min(top, floor+padding)
    return floor+(top-floor)*random_fraction


def weather_simulation_floor(emitter_base, surface_bottom, particle_radius, emitter_height):
    if surface_bottom is None:
        return emitter_base
    return min(emitter_base, surface_bottom-max(particle_radius, emitter_height*.001))


def reusable_splash_slot(slots, frame, limit):
    for index, slot in enumerate(slots):
        if slot['free_frame'] <= frame:
            return index
    return len(slots) if len(slots) < limit else None

def fit_weather_bounds(bounds, old_dimensions):
    spans = [max(0.0, bounds[i+3]-bounds[i]) for i in range(3)]
    extent = max(spans)
    if extent <= 0:
        raise ValueError('The selected surfaces have zero size.')
    settings = {'cx': (bounds[0]+bounds[3])/2, 'cz': (bounds[2]+bounds[5])/2,
                'width': max(spans[0], extent*.05)*1.1,
                'depth': max(spans[2], extent*.05)*1.1,
                'base': bounds[1]-extent*.005,
                'height': spans[1]+extent*.505}
    ratio = max(settings['width'], settings['depth'], settings['height'])/max(max(old_dimensions), 1e-12)
    return settings, ratio


def dot3(a, b):
    return sum(x*y for x, y in zip(a, b))


def deposit_intersection(a, b, deposit):
    """Intersect a segment with an oriented flattened ellipsoid, without Maya."""
    center, normal, radius, thickness = deposit[:4]
    origin = tuple(a[i]-center[i] for i in range(3))
    direction = tuple(b[i]-a[i] for i in range(3))
    inverse_r2 = 1.0/(radius*radius)
    correction = 1.0/(thickness*thickness)-inverse_r2

    def metric(x, y):
        return dot3(x, y)*inverse_r2 + dot3(x, normal)*dot3(y, normal)*correction

    aa = metric(direction, direction)
    bb = 2*metric(origin, direction)
    cc = metric(origin, origin)-1
    discriminant = bb*bb-4*aa*cc
    if aa < 1e-15 or discriminant < 0:
        return None
    root = math.sqrt(max(0, discriminant))
    for t in sorted(((-bb-root)/(2*aa), (-bb+root)/(2*aa))):
        if 1e-7 < t <= 1:
            point = tuple(a[i]+t*direction[i] for i in range(3))
            local = tuple(point[i]-center[i] for i in range(3))
            gradient = tuple(local[i]*inverse_r2 + normal[i]*dot3(local, normal)*correction for i in range(3))
            length = math.sqrt(dot3(gradient, gradient))
            return t, point, tuple(value/length for value in gradient)
    return None


class DepositIndex:
    """XZ spatial index. Only deposits already created enter this index."""
    def __init__(self, cell_size):
        self.cell_size = max(.01, cell_size)
        self.cells = {}
        self.items = []

    def cells_for(self, low_x, high_x, low_z, high_z):
        for x in range(math.floor(low_x/self.cell_size), math.floor(high_x/self.cell_size)+1):
            for z in range(math.floor(low_z/self.cell_size), math.floor(high_z/self.cell_size)+1):
                yield x, z

    def add(self, item):
        index = len(self.items)
        self.items.append(item)
        center, _, radius, thickness = item[:4]
        extent = max(radius, thickness)
        for cell in self.cells_for(center[0]-extent, center[0]+extent, center[2]-extent, center[2]+extent):
            self.cells.setdefault(cell, []).append(index)

    def hit(self, a, b):
        candidates = set()
        bounds = (min(a[0], b[0]), max(a[0], b[0]), min(a[2], b[2]), max(a[2], b[2]))
        # Large wind steps should not enumerate millions of empty cells.
        if ((bounds[1]-bounds[0])/self.cell_size+1)*((bounds[3]-bounds[2])/self.cell_size+1) > 10000:
            candidates.update(range(len(self.items)))
        else:
            for cell in self.cells_for(*bounds):
                candidates.update(self.cells.get(cell, []))
        best = None
        for index in sorted(candidates):
            hit = deposit_intersection(a, b, self.items[index])
            if hit and (best is None or hit[0] < best[0]):
                best = (*hit, self.items[index][4])
        return best


class WeatherEnvironment(WeatherStudioOptionalTextures):
    RAIN = {'Rain', 'Storm', 'Thunderstorm'}

    def __init__(self):
        super().__init__()
        self.interaction_ui = {}
        parent = cmds.text(self.collider_label, query=True, parent=True)
        cmds.button(parent=parent, label='Use ALL visible polygon surfaces', command=self.capture_environment)
        cmds.button(parent=parent, label='Fit current emitter around captured surfaces', command=self.fit_surfaces)
        cmds.button(parent=parent, label='Select registered surfaces', command=self.select_surfaces)
        self.auto_scene_fit = cmds.checkBox(parent=parent, label='Auto-fit weather to scene before building', value=True,
            annotation='Uses registered surfaces, otherwise selected meshes, otherwise visible scene meshes. Scales emitter and weather distances. Disable for manual sizing.')
        cmds.text(parent=parent, label='Captured surfaces enable collisions and replace the invisible ground.', align='left')
        for name, controls in self.ui.items():
            parent = cmds.checkBox(controls['accumulate'], query=True, parent=True)
            c = self.interaction_ui[name] = {}
            c['stack'] = cmds.checkBox(parent=parent, label='New particles collide with existing deposits', value=True)
            c['warmup'] = cmds.checkBox(parent=parent, label='Warm up falling particles before playback', value=True)
            c['thickness'] = cmds.floatSliderGrp(parent=parent, label='Deposit thickness ratio', field=True,
                minValue=.05, maxValue=.8, value=.3, precision=3)
            c['max_height'] = cmds.floatSliderGrp(parent=parent, label='Maximum pile height', field=True,
                minValue=.1, maxValue=10, fieldMaxValue=100, value=3, precision=3)
            c['splashes'] = cmds.checkBox(parent=parent, label='Rain impact rings', value=name in self.RAIN)
            c['splash_life'] = cmds.intSliderGrp(parent=parent, label='Splash lifetime (frames)', field=True,
                minValue=2, maxValue=24, value=6)
            c['streak_length'] = cmds.floatSliderGrp(
                parent=cmds.optionMenuGrp(controls['geo'], query=True, parent=True),
                label='Rain streak length ratio', field=True, minValue=1, maxValue=12,
                value=4, precision=3,
                annotation='Length is particle diameter times this ratio. Only affects generated streaks.')
            cmds.checkBox(controls['accumulate'], edit=True, value=name not in self.RAIN)
            cmds.intFieldGrp(controls['cap'], edit=True, label='Surface effect limit (0-2000)', value1=800)
        cmds.text(self.status, edit=True, label='Select your ground and objects, capture surfaces, fit emitter, then Build.')
        cmds.button(parent=self.utilities, label='Diagnose weather motion / upper band', command=self.diagnose_motion)

    def diagnose_motion(self, *_):
        report = getattr(self, '_motion_report', 'Build a weather layer first to collect motion and collision information.')
        print(report)
        cmds.confirmDialog(title='Weather motion report', message=report, button=['OK'])

    def build_active(self, *_):
        try:
            if cmds.checkBox(self.auto_scene_fit, query=True, value=True):
                self.repair_sizes(self.active_name())
                self.colliders = [shape for shape in self.colliders if cmds.objExists(shape)]
                if not self.colliders:
                    self.capture()
                if not self.colliders:
                    self.capture_environment()
                if self.colliders:
                    self.fit_surfaces()
                else:
                    cmds.warning('No polygon environment found. Using the emitter dimensions shown in this tab.')
            super().build_active()
        except Exception as error:
            self.report_build_error(error)

    def capture(self, *_):
        super().capture()
        if self.colliders:
            for controls in self.ui.values():
                cmds.checkBox(controls['collision'], edit=True, value=True)
                cmds.checkBox(controls['ground'], edit=True, value=False)

    def capture_environment(self, *_):
        original = cmds.ls(selection=True, long=True) or []
        owned = self.groups()
        shapes = [s for s in cmds.ls(type='mesh', long=True, visible=True) or []
                  if not cmds.getAttr(s+'.intermediateObject')
                  and not any(s.startswith(g+'|') for g in owned)]
        try:
            if shapes:
                cmds.select(shapes, replace=True)
            else:
                cmds.select(clear=True)
            self.capture()
        finally:
            if original:
                cmds.select(original, replace=True)
            else:
                cmds.select(clear=True)

    def select_surfaces(self, *_):
        existing = [n for n in self.colliders if cmds.objExists(n)]
        if existing:
            cmds.select(existing, replace=True)

    def fit_surfaces(self, *_):
        if not self.colliders or any(not cmds.objExists(n) for n in self.colliders):
            cmds.warning('Capture existing surfaces first.')
            return
        bounds = cmds.exactWorldBoundingBox(self.colliders)
        name = self.active_name()
        dimensions = [cmds.floatFieldGrp(self.ui[name][k], query=True, value1=True) for k in ('width', 'depth', 'height')]
        settings, factor = fit_weather_bounds(bounds, dimensions)
        for setting in ('size', 'wx', 'wz', 'turb', 'gust'):
            settings[setting] = cmds.floatFieldGrp(self.ui[name][setting], query=True, value1=True)*factor
        for setting, value in settings.items():
            cmds.floatFieldGrp(self.ui[name][setting], edit=True, precision=8, value1=value)
            slider = getattr(self, '_precision_sliders', {}).get(name, {}).get(setting)
            if slider:
                self.set_scaled_slider(slider, value)
        extra = self.interaction_ui[name]['max_height']
        self.set_scaled_slider(extra, cmds.floatSliderGrp(extra, query=True, value=True)*factor)
        if hasattr(self, 'detail_ui'):
            for setting in ('flutter', 'vortex', 'air_height', 'air_lift', 'air_step', 'bolt_width', 'air_density', 'air_noise'):
                slider = self.detail_ui[name][setting]
                value = cmds.floatSliderGrp(slider, query=True, value=True)
                self.set_scaled_slider(slider, value/factor if setting in ('air_density', 'air_noise') else value*factor)
        cmds.text(self.status, edit=True, label='Weather fitted to your surfaces (size multiplier {:.5g}). Build / replace to apply.'.format(factor))

    def set_scaled_slider(self, slider, value):
        low = cmds.floatSliderGrp(slider, query=True, minValue=True)
        high = cmds.floatSliderGrp(slider, query=True, maxValue=True)
        field_low = cmds.floatSliderGrp(slider, query=True, fieldMinValue=True)
        field_high = cmds.floatSliderGrp(slider, query=True, fieldMaxValue=True)
        # Leave headroom so rounding does not place the value just outside an endpoint.
        lower = value-abs(value)*.1
        upper = value+abs(value)*.1
        cmds.floatSliderGrp(slider, edit=True, precision=8,
                            fieldMinValue=min(field_low, lower), fieldMaxValue=max(field_high, upper),
                            minValue=min(low, lower), maxValue=max(high, upper), value=value)

    def impact(self, a, b, meshes, ground, deposits, stack):
        base = self.hit(a, b, meshes, ground)
        best = (base[0], base[1], tuple(base[2]), base[1][1]) if base else None
        layered = deposits.hit(a, b) if stack else None
        if layered and (best is None or layered[0] < best[0]):
            best = layered
            self._last_collision_label = 'Generated deposits'
        return best

    def geometry(self, group, kind, size, sg, image=False):
        obj = super().geometry(group, kind, size, sg, image)
        if kind == 'Streak' and not image:
            name = getattr(self, '_building_name', self.active_name())
            length = cmds.floatSliderGrp(self.interaction_ui[name]['streak_length'], query=True, value=True)
            if not 0 < length <= 100:
                raise ValueError('Rain streak length ratio must be greater than zero and at most 100.')
            cmds.scale(1, length/8.0, 1, obj)
            cmds.makeIdentity(obj, apply=True, scale=True)
        return obj

    def place_deposit(self, group, sg, hit, radius, ratio, frame, start, max_height):
        _, point, normal, foundation = hit
        thickness = radius*ratio
        # Keep the ellipsoid almost tangent to its supporting surface.
        center = tuple(point[i]+normal[i]*thickness*.85 for i in range(3))
        extent_y = math.sqrt(radius*radius*(1-normal[1]**2)+thickness*thickness*normal[1]**2)
        if center[1]+extent_y-foundation > max_height:
            return None
        blob = self.geometry(group, 'Sphere', radius, sg)
        cmds.setAttr(blob+'.translate', *center, type='double3')
        rotation = om.MVector(0, 1, 0).rotateTo(om.MVector(*normal)).asEulerRotation()
        cmds.setAttr(blob+'.rotate', *[math.degrees(a) for a in rotation], type='double3')
        cmds.setAttr(blob+'.scaleY', ratio)
        key(blob, 'visibility', start-1, 0, True)
        key(blob, 'visibility', frame, 1, True)
        return center, normal, radius, thickness, foundation

    def splash(self, group, sg, hit, radius, frame, start, lifetime):
        index = reusable_splash_slot(self._splash_pool, frame, self._splash_limit)
        if index is None:
            return False
        if index == len(self._splash_pool):
            obj = cmds.polyTorus(radius=2, sectionRadius=.2,
                                 subdivisionsX=12, subdivisionsY=4, constructionHistory=False)[0]
            obj = cmds.parent(obj, group)[0]
            cmds.sets(obj, edit=True, forceElement=sg)
            key(obj, 'visibility', start-1, 0, True)
            self._splash_pool.append({'node': obj, 'free_frame': 0})
        obj = self._splash_pool[index]['node']
        self._splash_pool[index]['free_frame'] = frame+lifetime+1
        normal = om.MVector(*hit[2])
        rotation = om.MVector(0, 1, 0).rotateTo(normal).asEulerRotation()
        for i, axis in enumerate('XYZ'):
            key(obj, 'translate'+axis, frame, hit[1][i]+normal[i]*radius*.3, True)
            key(obj, 'rotate'+axis, frame, math.degrees(rotation[i]), True)
        key(obj, 'visibility', frame, 1, True)
        key(obj, 'visibility', frame+lifetime, 0, True)
        for axis in 'XYZ':
            key(obj, 'scale'+axis, frame, radius*.3)
            key(obj, 'scale'+axis, frame+lifetime, radius*(2.5 if axis != 'Y' else .15))
        return True

    def generate(self, name, *_):
        self._building_name = name
        self.last_build = {'ok': False, 'weather': name}
        try:
            v = self.values(name)
            if cmds.upAxis(query=True, axis=True) != 'y':
                raise ValueError('Use a Y-up scene.')
            start = int(math.ceil(cmds.playbackOptions(query=True, minTime=True)))
            end = int(math.floor(cmds.playbackOptions(query=True, maxTime=True)))
            if getattr(self, '_draft_mode', False):
                end = min(end, start+71)
            if not 1 <= end-start <= 1000:
                raise ValueError('Use a playback range of 2-1001 frames.')
            c = self.interaction_ui[name]
            stack = cmds.checkBox(c['stack'], query=True, value=True)
            ratio = cmds.floatSliderGrp(c['thickness'], query=True, value=True)
            max_height = cmds.floatSliderGrp(c['max_height'], query=True, value=True)
            splashes = cmds.checkBox(c['splashes'], query=True, value=True) and name in self.RAIN
            lifetime = cmds.intSliderGrp(c['splash_life'], query=True, value=True)
            detail = v.get('detail_settings', {})
            warmup = weather_warmup_frames(v['duration'], detail.get('fall', 1), detail.get('lift', 0)) if cmds.checkBox(c['warmup'], query=True, value=True) and v['count'] else 0
            simulation_start = start-warmup
            if not .01 <= ratio <= 1 or not math.isfinite(max_height) or max_height <= 0 or not 2 <= lifetime <= 24:
                raise ValueError('Thickness: 0.01-1; pile height: positive; splash life: 2-24.')
        except Exception as error:
            self.report_build_error(error)
            return
        old = self.groups(name)
        previous_time = cmds.currentTime(query=True)
        group = None
        meshes = []
        rng = random.Random(v['seed'])
        deposits = DepositIndex(max(.05, v['size']*v['deposit']*3))
        ground = v['base'] if v['ground'] else None
        simulation_floor = v['base']
        cmds.undoInfo(openChunk=True, chunkName='Build environment weather')
        cmds.refresh(suspend=True)
        try:
            cmds.currentTime(start)
            cmds.progressWindow(title='Build '+name, progress=0, maxValue=end-simulation_start+1, isInterruptable=True)
            if v['collision']:
                for shape in self.colliders:
                    selection = om.MSelectionList()
                    selection.add(shape)
                    mesh = om.MFnMesh(selection.getDagPath(0))
                    meshes.append((mesh, mesh.autoUniformGridParams()))
                surface_bottom = cmds.exactWorldBoundingBox(self.colliders)[1]
                simulation_floor = weather_simulation_floor(v['base'], surface_bottom, v['size'], v['height'])
                if warmup:
                    distance_ratio = (v['base']+v['height']-simulation_floor)/v['height']
                    warmup = weather_warmup_frames(v['duration']*distance_ratio, detail.get('fall', 1), detail.get('lift', 0))
                    simulation_start = start-warmup
                    cmds.progressWindow(edit=True, maxValue=end-simulation_start+1)
            group = cmds.group(empty=True, name=name.replace(' ', '')+'_Weather#')
            cmds.addAttr(group, longName=self.TAG, attributeType='bool', defaultValue=True)
            cmds.addAttr(group, longName='weatherType', dataType='string')
            cmds.setAttr(group+'.weatherType', name, type='string')
            cmds.addAttr(group, longName='resources', attributeType='message', multi=True)
            sg = self.material(group, v['color'], v['image'])
            solid_sg = self.material(group, v['color'])
            self.begin_surface_effects(group, v, start, end, meshes)
            states = []

            def spawn(state, first=False):
                x = v['cx']+rng.uniform(-v['width']/2, v['width']/2)
                z = v['cz']+rng.uniform(-v['depth']/2, v['depth']/2)
                top = (x, v['base']+v['height'], z)
                point = top
                if first:
                    below = (x, simulation_floor, z)
                    obstacle = self.impact(top, below, meshes, ground, deposits, stack)
                    y = safe_spawn_height(top[1], simulation_floor, obstacle[1][1] if obstacle else None, rng.random())
                    point = (x, y, z)
                state['position'] = point
                state['reset'] = False
                state['age'] = 0

            for index in range(v['count']):
                if cmds.progressWindow(query=True, isCancelled=True):
                    raise RuntimeError('Build cancelled; previous layer retained.')
                size = v['size']*rng.uniform(1-v['variation'], 1+v['variation'])
                obj = self.particle_geometry(group, v['geo'], size, sg, bool(v['image']))
                state = {'object': obj, 'size': size, 'duration': max(2, v['duration']*rng.uniform(1-v['variation'], 1+v['variation'])),
                         'phase': rng.uniform(0, math.tau)}
                spawn(state, first=True)
                key(obj, 'visibility', start-1, 0, True)
                states.append(state)
            deposits_count = 0
            splash_count = 0
            hit_counts = {}
            height_min, height_max = float('inf'), float('-inf')
            travel = 0.0
            # Frame-first order is essential: no flake can land on a future deposit.
            for frame in range(simulation_start, end+1):
                if cmds.progressWindow(query=True, isCancelled=True):
                    raise RuntimeError('Build cancelled; previous layer retained.')
                for state in states:
                    obj = state['object']
                    if state['reset']:
                        if frame >= start:
                            key(obj, 'visibility', frame-1, 0, True)
                        spawn(state)
                    a = state['position']
                    duration = state['duration']
                    u = state['age']/duration
                    phase = state['phase']
                    velocity = self.motion_velocity(state, v, frame)
                    b = tuple(a[i]+velocity[i] for i in range(3))
                    hit = self.impact(a, b, meshes, ground, deposits, stack)
                    if hit:
                        b = hit[1]
                        state['reset'] = True
                        if frame >= start:
                            label = self._last_collision_label or 'Unknown surface'
                            hit_counts[label] = hit_counts.get(label, 0)+1
                        if frame < start:
                            pass
                        elif name in self.RAIN:
                            hit = self.surface_impact(group, v, hit, frame, start)
                            if splashes and self.splash(group, solid_sg, hit, state['size'], frame, start, lifetime):
                                splash_count += 1
                        elif v['accumulate'] and deposits_count < v['cap'] and hit[2][1] >= math.cos(math.radians(v['slope'])):
                            radius = state['size']*v['deposit']
                            if name == 'Leaves':
                                leaf = self.geometry(group, 'Leaf', state['size'], solid_sg)
                                cmds.setAttr(leaf+'.translate', *[b[i]+hit[2][i]*.01 for i in range(3)], type='double3')
                                rotation = om.MVector(0, 1, 0).rotateTo(om.MVector(*hit[2])).asEulerRotation()
                                cmds.setAttr(leaf+'.rotate', *[math.degrees(r) for r in rotation], type='double3')
                                key(leaf, 'visibility', start-1, 0, True)
                                key(leaf, 'visibility', frame, 1, True)
                                deposits_count += 1
                            else:
                                deposit = self.place_deposit(group, solid_sg, hit, radius, ratio, frame, start, max_height)
                                if deposit:
                                    deposits.add(deposit)
                                    deposits_count += 1
                    elif b[1] < simulation_floor-state['size']:
                        state['reset'] = True
                    if frame < start:
                        state['position'] = b
                        state['age'] += 1
                        continue
                    height_min = min(height_min, b[1])
                    height_max = max(height_max, b[1])
                    travel += abs(b[1]-a[1])
                    for axis, value in zip('XYZ', b):
                        key(obj, 'translate'+axis, frame, value)
                    if v['geo'] == 'Streak' and not v['image']:
                        rotation = om.MVector(0, 1, 0).rotateTo(om.MVector(*velocity).normal()).asEulerRotation()
                        angles = [math.degrees(r) for r in rotation]
                    else:
                        angles = [v['spin']*u, v['spin']*.7*u+math.degrees(phase), v['spin']*.3*math.sin(u*math.tau+phase)]
                    for axis, value in zip('XYZ', angles):
                        key(obj, 'rotate'+axis, frame, value)
                    key(obj, 'visibility', frame, 0 if state['reset'] else 1, True)
                    state['position'] = b
                    state['age'] += 1
                cmds.progressWindow(edit=True, progress=frame-simulation_start+1, status=('Warming up' if frame < start else 'Baking')+' frame {} / {} | {} deposits'.format(frame, end, deposits_count))
            for state in states:
                key(state['object'], 'visibility', end+1, 0, True)
            if v['lightning']:
                self.lightning(group, v, start, end, rng)
            self.finish_layer(group, v, start, end, rng)
            descendants = cmds.listRelatives(group, allDescendents=True, fullPath=True) or []
            for curve in set(cmds.listConnections(descendants, source=True, destination=False, type='animCurve') or []):
                self.own(group, curve)
            for previous in old:
                self.delete_group(previous)
            self.last_build = {'ok': True, 'weather': name, 'group': group, 'start': start, 'end': end}
            top_hits = sorted(hit_counts.items(), key=lambda item: item[1], reverse=True)[:6]
            self._motion_report = (
                '{} | baked frames {}-{} | warmup {} frames\n'
                'Emitter bottom {:.6g}, top {:.6g}\n'
                'Observed particle heights: {:.6g} to {:.6g}\n'
                'Average vertical travel per particle per frame: {:.6g}\n'
                'Settling multiplier {}, updraft {}\n\n'
                'Most-hit surfaces:\n{}\n\n'
                'If an unwanted sky/ceiling/old effect is listed, select only the ground and house, '
                'capture those surfaces, then rebuild. If travel is nonzero but playback looks static, '
                'verify the current timeline lies within the baked frames.').format(
                    name, start, end, warmup, v['base'], v['base']+v['height'],
                    height_min if states else 0, height_max if states else 0,
                    travel/max(1, len(states)*(end-start+1)), detail.get('fall', 1), detail.get('lift', 0),
                    '\n'.join('{}: {} impacts'.format(label, count) for label, count in top_hits) or 'None')
            self._motion_report += '\nScene units: '+cmds.currentUnit(query=True, linear=True)
            cmds.select(group, replace=True)
            cmds.text(self.status, edit=True, label='{} built: {} deposits, {} splashes. Scrub forward to see buildup.'.format(name, deposits_count, splash_count))
        except Exception as error:
            traceback.print_exc()
            self.last_build['error'] = str(error)
            if group and cmds.objExists(group):
                self.delete_group(group)
        finally:
            try:
                for mesh, _ in meshes:
                    mesh.freeCachedIntersectionAccelerator()
                cmds.progressWindow(endProgress=True)
                cmds.currentTime(start if self.last_build['ok'] else previous_time)
            finally:
                cmds.refresh(suspend=False)
                cmds.undoInfo(closeChunk=True)
        if not self.last_build['ok']:
            self.report_build_error(self.last_build.get('error', 'Build stopped.'))

    def particle_geometry(self, group, kind, size, sg, image):
        return self.geometry(group, kind, size, sg, image)

    def motion_velocity(self, state, v, frame):
        duration = state['duration']
        u = state['age']/duration
        phase = state['phase']
        return ((v['wx']+v['turb']*math.tau*math.cos(u*math.tau+phase)+v['gust']*math.sin(frame*.08+phase))/duration,
                -v['height']/duration,
                (v['wz']+v['turb']*math.tau*.6*math.sin(u*math.tau+phase))/duration)

    def finish_layer(self, group, v, start, end, rng):
        pass

    def begin_surface_effects(self, group, v, start, end, meshes):
        self._splash_pool = []
        self._splash_limit = v['cap']

    def surface_impact(self, group, v, hit, frame, start):
        return hit





"""Procedural shapes, art-directed motion, air layers and branching lightning."""
import json


def validate_weather_detail(setting, value):
    """Validate physical meaning independently of a slider's display range."""
    if not isinstance(value, (int, float)) or not math.isfinite(value):
        raise ValueError('{} must be a finite number; received {!r}.'.format(setting, value))
    positive = {'air_height', 'air_step', 'air_noise', 'bolt_width'}
    nonnegative = {'flutter', 'vortex', 'air_lift', 'air_density'}
    if setting in positive:
        if value <= 0:
            raise ValueError('{} must be greater than zero; received {}.'.format(setting, value))
        return value
    if setting in nonnegative:
        if value < 0:
            raise ValueError('{} cannot be negative; received {}.'.format(setting, value))
        return value
    ranges = {
        'sx': (.1, 4), 'sy': (.1, 4), 'sz': (.1, 4), 'irregular': (0, .8),
        'curl': (0, 1), 'detail': (4, 24), 'roughness': (.01, 1),
        'transmission': (0, 1), 'color_variation': (0, .7), 'opacity': (.05, 1),
        'glow': (0, 10), 'fall': (.02, 3), 'lift': (0, 2), 'frequency': (.1, 8),
        'air_opacity': (.01, .5), 'air_banks': (1, 24), 'air_scale': (.1, 3),
        'air_drift': (0, 5), 'air_scatter': (-.8, .8), 'bolt_segments': (5, 30),
        'bolt_branches': (0, 12), 'bolt_jagged': (0, .25), 'bolt_spread': (.1, 2),
        'bolt_emission': (1, 30), 'bolt_flashes': (1, 4), 'bolt_jitter': (0, .4),
    }
    low, high = ranges[setting]
    if value < low and math.isclose(value, low, rel_tol=1e-7, abs_tol=1e-8):
        value = low
    if value > high and math.isclose(value, high, rel_tol=1e-7, abs_tol=1e-8):
        value = high
    if not low <= value <= high:
        raise ValueError('{} must be between {} and {}; received {}.'.format(setting, low, high, value))
    if setting in {'detail', 'air_banks', 'bolt_segments', 'bolt_branches', 'bolt_flashes'} and value != int(value):
        raise ValueError('{} must be a whole number.'.format(setting))
    return value

PRESETS.update({
    'Fog': (20, .025, 200, .5, .3, 0, (.75, .8, .85), 'Sphere'),
    'Sandstorm': (180, .055, 90, 18, 2.5, 180, (.62, .43, .2), 'Sphere'),
})


def lightning_paths(rng, origin, target, segments, jaggedness, branches, spread):
    main = [origin]
    height = abs(origin[1]-target[1])
    for i in range(1, segments):
        t = i/segments
        fade = math.sin(math.pi*t)
        main.append(tuple(origin[k]+(target[k]-origin[k])*t +
                          (rng.uniform(-1, 1)*jaggedness*height*fade if k != 1 else 0)
                          for k in range(3)))
    main.append(target)
    paths = [(main, 1.0)]
    for _ in range(branches):
        index = rng.randint(1, max(1, segments-2))
        root = main[index]
        length = height*rng.uniform(.1, .35)
        angle = rng.uniform(0, math.tau)
        tip = (root[0]+math.cos(angle)*length*spread, root[1]-length,
               root[2]+math.sin(angle)*length*spread)
        branch = [root]
        for j in range(1, 5):
            t = j/4
            branch.append(tuple(root[k]+(tip[k]-root[k])*t +
                                (rng.uniform(-1, 1)*length*.08 if k != 1 and j < 4 else 0)
                                for k in range(3)))
        paths.append((branch, rng.uniform(.2, .45)))
    return paths


class WeatherDetail(WeatherEnvironment):
    STYLES = dict(WeatherEnvironment.STYLES, **{
        'Fog': ('Fog', '#b3c8d1', 'Low drifting fog and atmospheric depth', 'M2 5H22M4 10H20M2 15H22M5 20H19'),
        'Sandstorm': ('Sandstorm', '#dbab60', 'Windblown grit and dense dusty air', 'M2 5H15Q23 5 20 2M2 11H22M2 17H14Q21 17 18 22'),
    })
    WEATHER_SHAPES = dict(WeatherEnvironment.WEATHER_SHAPES, Fog='Sphere', Sandstorm='Sphere')
    LOOKS = {'Snow': 'Crystal flake', 'Snow Storm': 'Snow clump', 'Rain': 'Rain streak',
             'Storm': 'Rain streak', 'Thunderstorm': 'Rain streak', 'Ash': 'Ash shard',
             'Dust': 'Dust grain', 'Leaves': 'Curled leaf', 'Custom': 'Sphere',
             'Fog': 'Dust grain', 'Sandstorm': 'Dust grain'}

    def __init__(self):
        self.detail_ui = {}
        self.detail_cache = {}
        self.custom_meshes = {}
        super().__init__()
        for name, controls in self.ui.items():
            c = self.detail_ui[name] = {}
            # Find the page containing the existing appearance section.
            col = cmds.optionMenuGrp(controls['geo'], query=True, parent=True)
            frame = cmds.columnLayout(col, query=True, parent=True)
            page = cmds.frameLayout(frame, query=True, parent=True)

            def section(title, collapse=True):
                cmds.frameLayout(parent=page, label=title, collapsable=True, collapse=collapse,
                                 marginWidth=10, marginHeight=8)
                cmds.columnLayout(adjustableColumn=True, rowSpacing=6)

            def slider(key_name, label, low, high, value, integer=False):
                factory = cmds.intSliderGrp if integer else cmds.floatSliderGrp
                options = {} if integer else {'precision': 4}
                c[key_name] = factory(label=label, field=True, minValue=low, maxValue=high,
                                     value=value, **options)

            section('07  /  Detailed particle design', False)
            c['particles'] = cmds.checkBox(label='Visible falling particles (off for air only)', value=name != 'Fog')
            c['shape'] = cmds.optionMenuGrp(label='Detailed shape')
            for label in ('Weather preset', 'Crystal flake', 'Snow clump', 'Raindrop', 'Rain streak',
                          'Ash shard', 'Dust grain', 'Curled leaf', 'Sphere', 'Selected mesh'):
                cmds.menuItem(label=label)
            cmds.button(label='Use selected polygon object as particle shape', command=partial(self.capture_particle, name))
            cmds.text(label='Detailed shapes apply in Automatic weather shape mode. PNG and Choose a shape keep their own source.', align='left', wordWrap=True)
            slider('sx', 'Shape width', .1, 4, 1)
            slider('sy', 'Shape height', .1, 4, 1)
            slider('sz', 'Shape depth', .1, 4, 1)
            slider('irregular', 'Edge irregularity', 0, .8, .4 if name in ('Ash', 'Dust') else .12)
            slider('curl', 'Leaf curl / flake bend', 0, 1, .35 if name == 'Leaves' else .05)
            slider('detail', 'Shape detail', 4, 24, 8, True)
            slider('roughness', 'Surface roughness', .01, 1, .12 if name in self.RAIN else .65)
            slider('transmission', 'Light transmission', 0, 1, .7 if name in self.RAIN else 0)
            slider('color_variation', 'Particle color variation', 0, .7, .25 if name in ('Leaves', 'Ash', 'Dust', 'Sandstorm') else .05)
            slider('opacity', 'Particle opacity', .05, 1, 1)
            slider('glow', 'Particle emission / embers', 0, 10, 0)

            section('08  /  Airflow & settling')
            slider('fall', 'Settling speed multiplier', .02, 3, .2 if name in ('Dust', 'Sandstorm', 'Fog') else (.5 if name == 'Ash' else 1))
            slider('vortex', 'Horizontal swirl speed', 0, 5, 1 if name in ('Dust', 'Sandstorm') else .2)
            slider('lift', 'Updraft / buoyancy', 0, 2, .08 if name in ('Dust', 'Ash') else 0)
            slider('frequency', 'Turbulence cycles per fall', .1, 8, 2)
            slider('flutter', 'Vertical flutter distance', 0, 3, 1 if name == 'Leaves' else .15)

            section('09  /  Fog, haze & dusty air', name not in ('Dust', 'Ash'))
            c['air_preview'] = cmds.checkBox(label='Soft air cards in viewport (approximation)', value=name in ('Dust', 'Ash', 'Fog', 'Sandstorm'))
            c['air_arnold'] = cmds.checkBox(label='Build true Arnold volume (requires MtoA)', value=False)
            air_color = (.62, .46, .28) if name in ('Dust', 'Sandstorm') else ((.32, .29, .27) if name == 'Ash' else (.7, .78, .85))
            c['air_color'] = cmds.colorSliderGrp(label='Air / fog tint', rgbValue=air_color)
            slider('air_density', 'Volume density', .001, .5, .055 if name == 'Dust' else .025)
            slider('air_opacity', 'Viewport haze opacity', .01, .5, .12)
            slider('air_height', 'Air layer height', .1, 30, 4)
            slider('air_lift', 'Air layer elevation', 0, 30, .5)
            slider('air_banks', 'Cloud banks', 1, 24, 8, True)
            slider('air_scale', 'Cloud size', .1, 3, 1)
            slider('air_noise', 'Volume noise frequency', .05, 5, .4)
            slider('air_drift', 'Air drift speed', 0, 5, 1)
            slider('air_scatter', 'Forward light scattering', -.8, .8, .25)
            slider('air_step', 'Volume sampling step', .01, 1, .15)
            cmds.text(label='Viewport cards are guides, hidden in renders. Arnold volumes need scene lighting and an Arnold render.', align='left', wordWrap=True)

            section('10  /  Lightning design', name != 'Thunderstorm')
            slider('bolt_segments', 'Bolt segments', 5, 30, 14, True)
            slider('bolt_branches', 'Branches per strike', 0, 12, 5, True)
            slider('bolt_width', 'Bolt radius', .005, .3, .035)
            slider('bolt_jagged', 'Path jaggedness', 0, .25, .06)
            slider('bolt_spread', 'Branch spread', .1, 2, .8)
            slider('bolt_emission', 'Bolt emission', 1, 30, 8)
            slider('bolt_flashes', 'Flashes per strike', 1, 4, 2, True)
            slider('bolt_jitter', 'Strike timing variation', 0, .4, .2)
            c['bolt_color'] = cmds.colorSliderGrp(label='Lightning color', rgbValue=(.65, .78, 1))
        parent = self.utilities
        cmds.button(parent=parent, label='Quick draft: 50 particles / 72 frames / reduced air and lightning', command=self.quick_draft)
        cmds.button(parent=parent, label='Save current tab preset...', command=self.save_preset)
        cmds.button(parent=parent, label='Load current tab preset...', command=self.load_preset)
        cmds.button(parent=parent, label='Check build cost', command=self.build_cost)
        cmds.text(self.status, edit=True, label='Detailed controls added below each tab. Expand sections 07-10, then Build.')

    def capture_particle(self, name, *_):
        selected = cmds.ls(selection=True, objectsOnly=True, long=True) or []
        if len(selected) != 1:
            cmds.warning('Select one polygon object.')
            return
        node = selected[0]
        if cmds.nodeType(node) == 'mesh':
            node = cmds.listRelatives(node, parent=True, fullPath=True)[0]
        if not cmds.listRelatives(node, shapes=True, type='mesh') or cmds.listRelatives(node, children=True, type='transform'):
            cmds.warning('Select a single polygon transform without child transforms.')
            return
        if any(node.startswith(g+'|') or node == g for g in self.groups()):
            cmds.warning('Use a source mesh outside generated weather groups.')
            return
        self.custom_meshes[name] = node
        cmds.optionMenuGrp(self.detail_ui[name]['shape'], edit=True, value='Selected mesh')
        cmds.optionMenuGrp(self.source_controls[name], edit=True, select=1)
        self.source_changed(name)

    def values(self, name):
        v = super().values(name)
        c = self.detail_ui[name]
        d = {}
        ints = {'detail', 'air_banks', 'bolt_segments', 'bolt_branches', 'bolt_flashes'}
        for setting, control in c.items():
            if setting == 'shape':
                d[setting] = cmds.optionMenuGrp(control, query=True, value=True)
            elif setting.endswith('_color'):
                d[setting] = cmds.colorSliderGrp(control, query=True, rgbValue=True)
            elif setting in ('air_preview', 'air_arnold', 'particles'):
                d[setting] = cmds.checkBox(control, query=True, value=True)
            else:
                factory = cmds.intSliderGrp if setting in ints else cmds.floatSliderGrp
                d[setting] = validate_weather_detail(setting, factory(control, query=True, value=True))
        if d['shape'] == 'Selected mesh' and not cmds.objExists(self.custom_meshes.get(name, '')):
            raise ValueError('Capture a polygon particle shape first.')
        if d['air_arnold'] and not cmds.pluginInfo('mtoa', query=True, loaded=True):
            cmds.loadPlugin('mtoa')
        self.detail_cache[name] = d
        d['base_color'] = v['color']
        self._particle_palettes = {}
        self.shape_rng = random.Random(v['seed']+1701)
        if not d['particles']:
            v['count'] = 0
            if not (d['air_preview'] or d['air_arnold'] or v['lightning']):
                raise ValueError('Enable particles, an air layer or lightning; all visible effects are currently off.')
        if getattr(self, '_draft_mode', False):
            v['count'] = min(v['count'], 50)
            v['cap'] = min(v['cap'], 150)
            d['air_banks'] = min(d['air_banks'], 4)
            d['bolt_branches'] = min(d['bolt_branches'], 2)
            d['bolt_segments'] = min(d['bolt_segments'], 8)
        v['detail_settings'] = d
        return v

    def quick_draft(self, *_):
        self._draft_mode = True
        try:
            self.build_active()
        finally:
            self._draft_mode = False

    def build_cost(self, *_):
        name = self.active_name()
        count = cmds.intFieldGrp(self.ui[name]['count'], query=True, value1=True)
        if not cmds.checkBox(self.detail_ui[name]['particles'], query=True, value=True):
            count = 0
        frames = max(0, int(cmds.playbackOptions(query=True, maxTime=True)-cmds.playbackOptions(query=True, minTime=True)+1))
        estimate = count*frames*7
        cmds.confirmDialog(title='Build estimate', button=['OK'], message=(
            '{} particles x {} frames: about {:,} particle keyframes.\n'
            'Deposits, splashes, custom shapes and air layers add cost.\n'
            'Quick draft replaces this tab with a shorter, lighter bake.').format(count, frames, estimate))

    def preset_controls(self, name):
        result = {}
        for prefix, controls in (('base', self.ui[name]), ('detail', self.detail_ui[name]), ('interaction', self.interaction_ui[name])):
            for setting, control in controls.items():
                result[prefix+'.'+setting] = control
        result['source.mode'] = self.source_controls[name]
        return result

    def control_kind(self, control):
        # Maya can report every *Grp widget as rowGroupLayout. Resolve the
        # creation command from our own setting definitions instead.
        for controls in self.ui.values():
            for setting, candidate in controls.items():
                if candidate != control:
                    continue
                if setting == 'image':
                    return 'textFieldButtonGrp'
                if setting == 'geo':
                    return 'optionMenuGrp'
                if setting == 'color':
                    return 'colorSliderGrp'
                if setting in {'collision', 'ground', 'accumulate', 'lightning'}:
                    return 'checkBox'
                if setting in {'count', 'duration', 'seed', 'cap', 'interval'}:
                    return 'intFieldGrp'
                return 'floatFieldGrp'
        for controls in self.detail_ui.values():
            for setting, candidate in controls.items():
                if candidate != control:
                    continue
                if setting == 'shape':
                    return 'optionMenuGrp'
                if setting.endswith('_color'):
                    return 'colorSliderGrp'
                if setting in {'particles', 'air_preview', 'air_arnold'}:
                    return 'checkBox'
                if setting in {'detail', 'air_banks', 'bolt_segments', 'bolt_branches', 'bolt_flashes'}:
                    return 'intSliderGrp'
                return 'floatSliderGrp'
        for controls in self.interaction_ui.values():
            for setting, candidate in controls.items():
                if candidate == control:
                    if setting in {'stack', 'warmup', 'splashes'}:
                        return 'checkBox'
                    return 'intSliderGrp' if setting == 'splash_life' else 'floatSliderGrp'
        if control in self.source_controls.values():
            return 'optionMenuGrp'
        for controls in getattr(self, '_precision_sliders', {}).values():
            for setting, candidate in controls.items():
                if candidate == control:
                    return 'intSliderGrp' if setting in {'duration', 'cap', 'interval'} else 'floatSliderGrp'
        raise ValueError('Unregistered weather setting control: '+str(control))

    def control_value(self, control, value=None, write=False):
        kind = self.control_kind(control)
        specs = {
            'floatFieldGrp': (cmds.floatFieldGrp, 'value1'),
            'intFieldGrp': (cmds.intFieldGrp, 'value1'),
            'floatSliderGrp': (cmds.floatSliderGrp, 'value'),
            'intSliderGrp': (cmds.intSliderGrp, 'value'),
            'checkBox': (cmds.checkBox, 'value'),
            'optionMenuGrp': (cmds.optionMenuGrp, 'value'),
            'colorSliderGrp': (cmds.colorSliderGrp, 'rgbValue'),
            'textFieldButtonGrp': (cmds.textFieldButtonGrp, 'text'),
        }
        if kind not in specs:
            raise ValueError('Unsupported preset control: '+kind)
        factory, flag = specs[kind]
        if write:
            factory(control, edit=True, **{flag: value})
        else:
            return factory(control, query=True, **{flag: True})

    def save_preset(self, *_):
        name = self.active_name()
        paths = cmds.fileDialog2(fileMode=0, fileFilter='Weather preset (*.json)')
        if not paths:
            return
        data = {'format': 'WeatherStudioPreset', 'version': 1, 'weather': name,
                'values': {key: self.control_value(control) for key, control in self.preset_controls(name).items()}}
        with open(paths[0], 'w', encoding='utf-8') as stream:
            json.dump(data, stream, indent=2)
        cmds.text(self.status, edit=True, label='Preset saved. Scene surfaces and custom meshes are not included.')

    def load_preset(self, *_):
        paths = cmds.fileDialog2(fileMode=1, fileFilter='Weather preset (*.json)')
        if not paths:
            return
        name = self.active_name()
        controls = self.preset_controls(name)
        before = {key: self.control_value(control) for key, control in controls.items()}
        try:
            with open(paths[0], encoding='utf-8') as stream:
                data = json.load(stream)
            if data.get('format') != 'WeatherStudioPreset' or data.get('version') != 1:
                raise ValueError('Not a supported Weather Studio preset.')
            for key, value in data['values'].items():
                if key in controls:
                    self.control_value(controls[key], value, write=True)
        except Exception as error:
            for key, value in before.items():
                self.control_value(controls[key], value, write=True)
            self.report_build_error(error)
            return
        for key, slider in getattr(self, '_precision_sliders', {}).get(name, {}).items():
            self.control_value(slider, self.control_value(self.ui[name][key]), write=True)
        self.source_changed(name)
        cmds.text(self.status, edit=True, label='Preset loaded. Capture any required custom mesh and surfaces, then Build.')

    def particle_geometry(self, group, kind, size, sg, image):
        name = self._building_name
        mode = cmds.optionMenuGrp(self.source_controls[name], query=True, select=True)
        if mode != 1 or image:
            return super().particle_geometry(group, kind, size, sg, image)
        d = self.detail_cache[name]
        shape = self.LOOKS[name] if d['shape'] == 'Weather preset' else d['shape']
        rng = self.shape_rng
        if shape == 'Selected mesh':
            obj = cmds.duplicate(self.custom_meshes[name], returnRootsOnly=True, inputConnections=False)[0]
            obj = cmds.parent(obj, world=True)[0] if cmds.listRelatives(obj, parent=True) else obj
            cmds.makeIdentity(obj, apply=True, translate=True, rotate=True, scale=True)
            bounds = cmds.exactWorldBoundingBox(obj)
            center = [(bounds[i]+bounds[i+3])/2 for i in range(3)]
            extent = max(bounds[i+3]-bounds[i] for i in range(3))
            if extent <= 1e-8:
                cmds.delete(obj)
                raise ValueError('Selected particle mesh has zero size.')
            cmds.move(*[-x for x in center], obj+'.vtx[*]', relative=True, worldSpace=True)
            cmds.scale(*([size*2/extent]*3), obj+'.vtx[*]', relative=True, pivot=(0, 0, 0))
        elif shape in ('Crystal flake', 'Ash shard', 'Curled leaf'):
            points = []
            count = 24 if shape == 'Crystal flake' else max(6, d['detail']*2)
            for i in range(count):
                angle = math.tau*i/count
                radius = size*(1+rng.uniform(-d['irregular'], d['irregular']))
                if shape == 'Crystal flake':
                    radius *= (1, .22, .42, .22)[i % 4]
                x, z = math.cos(angle)*radius, math.sin(angle)*radius
                if shape == 'Curled leaf':
                    x *= .55
                    z *= 1.6
                y = d['curl']*size*(z/size)**2
                points.append((x, 0, z))
            obj = cmds.polyCreateFacet(point=points, constructionHistory=False)[0]
            if d['curl']:
                for i, point in enumerate(points):
                    cmds.move(0, d['curl']*size*(point[2]/size)**2, 0,
                              '{}.vtx[{}]'.format(obj, i), relative=True)
        elif shape == 'Rain streak':
            obj = super().particle_geometry(group, 'Streak', size, sg, False)
        else:
            subdivisions = max(4, d['detail'])
            obj = cmds.polySphere(radius=size, subdivisionsX=subdivisions,
                                  subdivisionsY=max(4, subdivisions//2), constructionHistory=False)[0]
            if shape in ('Snow clump', 'Dust grain', 'Raindrop'):
                vertices = cmds.ls(obj+'.vtx[*]', flatten=True)
                for vertex in vertices:
                    x, y, z = cmds.pointPosition(vertex, local=True)
                    if shape == 'Raindrop':
                        taper = max(.15, 1-.65*max(0, y/size))
                        point = (x*taper, y*1.8, z*taper)
                    else:
                        factor = 1+rng.uniform(-d['irregular'], d['irregular'])
                        point = (x*factor, y*factor, z*factor)
                    cmds.xform(vertex, objectSpace=True, translation=point)
        if not (shape == 'Rain streak'):
            obj = cmds.parent(obj, group)[0]
        cmds.scale(d['sx'], d['sy'], d['sz'], obj, relative=True)
        cmds.makeIdentity(obj, apply=True, scale=True)
        if d['color_variation']:
            if group not in self._particle_palettes:
                self._particle_palettes[group] = [self.material(group, tuple(
                    max(.001, min(1, channel*(1+d['color_variation']*offset)))
                    for channel in d['base_color'])) for offset in (-1, -.33, .33, 1)]
            sg = rng.choice(self._particle_palettes[group])
        cmds.sets(obj, edit=True, forceElement=sg)
        if d['opacity'] < 1:
            for mesh in cmds.listRelatives(obj, shapes=True, fullPath=True) or []:
                if cmds.attributeQuery('aiOpaque', node=mesh, exists=True):
                    cmds.setAttr(mesh+'.aiOpaque', False)
        return obj

    def material(self, group, color, image=''):
        name = getattr(self, '_building_name', '')
        d = self.detail_cache.get(name)
        if image or d is None:
            return super().material(group, color, image)
        mat = self.own(group, cmds.shadingNode('standardSurface', asShader=True, name='WeatherSurface#'))
        sg = self.own(group, cmds.sets(renderable=True, noSurfaceShader=True, empty=True, name='WeatherSurfaceSG#'))
        cmds.connectAttr(mat+'.outColor', sg+'.surfaceShader')
        cmds.setAttr(mat+'.baseColor', *color, type='double3')
        cmds.setAttr(mat+'.specularRoughness', d['roughness'])
        cmds.setAttr(mat+'.transmission', d['transmission'])
        cmds.setAttr(mat+'.opacity', *([d['opacity']]*3), type='double3')
        cmds.setAttr(mat+'.emission', d['glow'])
        cmds.setAttr(mat+'.emissionColor', *color, type='double3')
        return sg

    def motion_velocity(self, state, v, frame):
        d = v['detail_settings']
        duration = state['duration']
        phase = state['phase']+state['age']/duration*math.tau*d['frequency']
        x, _, z = state['position']
        dx, dz = x-v['cx'], z-v['cz']
        length = max(1, math.hypot(dx, dz))
        swirl = d['vortex']/duration
        return ((v['wx']+v['turb']*math.tau*math.cos(phase)+v['gust']*math.sin(frame*.08+phase))/duration-dz/length*swirl,
                (-v['height']*d['fall']+v['height']*d['lift']+d['flutter']*math.sin(phase))/duration,
                (v['wz']+v['turb']*math.tau*.6*math.sin(phase))/duration+dx/length*swirl)

    def bolt_segment(self, group, a, b, radius, sg):
        direction = om.MVector(*b)-om.MVector(*a)
        obj = cmds.polyCylinder(radius=radius, height=max(1e-9, direction.length()),
                                subdivisionsX=6, subdivisionsY=1, constructionHistory=False)[0]
        obj = cmds.parent(obj, group)[0]
        rotation = om.MVector(0, 1, 0).rotateTo(direction.normal()).asEulerRotation()
        cmds.setAttr(obj+'.translate', *[(a[i]+b[i])/2 for i in range(3)], type='double3')
        cmds.setAttr(obj+'.rotate', *[math.degrees(r) for r in rotation], type='double3')
        cmds.sets(obj, edit=True, forceElement=sg)

    def lightning(self, group, v, start, end, rng):
        d = v['detail_settings']
        mat = self.own(group, cmds.shadingNode('standardSurface', asShader=True, name='LightningEmission#'))
        sg = self.own(group, cmds.sets(renderable=True, noSurfaceShader=True, empty=True))
        cmds.connectAttr(mat+'.outColor', sg+'.surfaceShader')
        cmds.setAttr(mat+'.base', 0)
        cmds.setAttr(mat+'.emission', d['bolt_emission'])
        cmds.setAttr(mat+'.emissionColor', *d['bolt_color'], type='double3')
        shape = cmds.directionalLight(name='LightningFlash#', intensity=0, rgb=d['bolt_color'])
        light = cmds.parent(cmds.listRelatives(shape, parent=True)[0], group)[0]
        shape = cmds.listRelatives(light, shapes=True, fullPath=True)[0]
        cmds.setAttr(light+'.rotate', -70, 20, 0, type='double3')
        key(shape, 'intensity', start-1, 0, True)
        frame = start+3
        while frame+d['bolt_flashes']*2 <= end:
            root = (v['cx']+rng.uniform(-v['width']/2, v['width']/2), v['base']+v['height'],
                    v['cz']+rng.uniform(-v['depth']/2, v['depth']/2))
            tip = (root[0]+rng.uniform(-1, 1)*v['width']*.15, v['base'], root[2]+rng.uniform(-1, 1)*v['depth']*.15)
            strike = cmds.group(empty=True, parent=group, name='BranchingStrike#')
            for path, width in lightning_paths(rng, root, tip, d['bolt_segments'], d['bolt_jagged'], d['bolt_branches'], d['bolt_spread']):
                for i, (a, b) in enumerate(zip(path, path[1:])):
                    self.bolt_segment(strike, a, b, d['bolt_width']*width*(1-.7*i/(len(path)-1)), sg)
            key(strike, 'visibility', start-1, 0, True)
            for flash in range(d['bolt_flashes']):
                f = frame+flash*2
                key(strike, 'visibility', f, 1, True)
                key(strike, 'visibility', f+1, 0, True)
                key(shape, 'intensity', f, v['flash']*rng.uniform(.6, 1), True)
                key(shape, 'intensity', f+1, 0, True)
            frame += max(d['bolt_flashes']*2+1, round(v['interval']*rng.uniform(1-d['bolt_jitter'], 1+d['bolt_jitter'])))

    def finish_layer(self, group, v, start, end, rng):
        d = v['detail_settings']
        if not d['air_preview'] and not d['air_arnold']:
            return
        air = cmds.group(empty=True, parent=group, name='AirLayer#')
        preview_sg = None
        volume_sg = None
        if d['air_preview']:
            mat = self.own(group, cmds.shadingNode('lambert', asShader=True, name='AirPreview#'))
            preview_sg = self.own(group, cmds.sets(renderable=True, noSurfaceShader=True, empty=True))
            cmds.connectAttr(mat+'.outColor', preview_sg+'.surfaceShader')
            cmds.setAttr(mat+'.color', *d['air_color'], type='double3')
            ramp = self.own(group, cmds.shadingNode('ramp', asTexture=True, name='SoftAirEdge#'))
            cmds.setAttr(ramp+'.type', 4)
            for index, (position, value) in enumerate(((0, 1-d['air_opacity']), (.6, 1-d['air_opacity']*.25), (1, 1))):
                cmds.setAttr('{} .colorEntryList[{}].position'.format(ramp, index).replace(' ', ''), position)
                cmds.setAttr('{}.colorEntryList[{}].color'.format(ramp, index), value, value, value, type='double3')
            cmds.connectAttr(ramp+'.outColor', mat+'.transparency')
        if d['air_arnold']:
            volume = self.own(group, cmds.shadingNode('aiStandardVolume', asShader=True, name='DustFogVolume#'))
            noise = self.own(group, cmds.shadingNode('aiNoise', asTexture=True, name='AirDensityNoise#'))
            gain = self.own(group, cmds.shadingNode('multiplyDivide', asUtility=True))
            volume_sg = self.own(group, cmds.sets(renderable=True, noSurfaceShader=True, empty=True))
            plug = '.aiVolumeShader' if cmds.attributeQuery('aiVolumeShader', node=volume_sg, exists=True) else '.volumeShader'
            cmds.connectAttr(volume+'.outColor', volume_sg+plug)
            cmds.setAttr(volume+'.densityChannel', '', type='string')
            cmds.setAttr(volume+'.scatterColor', *d['air_color'], type='double3')
            cmds.setAttr(volume+'.scatterAnisotropy', d['air_scatter'])
            cmds.setAttr(noise+'.scale', *([d['air_noise']]*3), type='double3')
            cmds.setAttr(noise+'.octaves', 3)
            cmds.connectAttr(noise+'.outColorR', gain+'.input1X')
            cmds.setAttr(gain+'.input2X', d['air_density'])
            cmds.connectAttr(gain+'.outputX', volume+'.density')
            key(noise, 'time', start, 0)
            key(noise, 'time', end, (end-start)/100*d['air_drift'])
        for index in range(d['air_banks']):
            x = v['cx']+rng.uniform(-v['width']*.4, v['width']*.4)
            z = v['cz']+rng.uniform(-v['depth']*.4, v['depth']*.4)
            y = v['base']+d['air_lift']+d['air_height']*.5
            width = v['width']*.25*d['air_scale']*rng.uniform(.7, 1.3)
            depth = v['depth']*.25*d['air_scale']
            cloud = cmds.group(empty=True, parent=air, name='AirBank#')
            if preview_sg:
                for axis in ((0, 0, 1), (1, 0, 0)):
                    card = cmds.polyPlane(width=width*2, height=d['air_height'], subdivisionsX=1, subdivisionsY=1,
                                          axis=axis, constructionHistory=False)[0]
                    card = cmds.parent(card, cloud)[0]
                    cmds.sets(card, edit=True, forceElement=preview_sg)
                    for shape in cmds.listRelatives(card, shapes=True, fullPath=True):
                        for attr in ('primaryVisibility', 'castsShadows', 'visibleInReflections', 'visibleInRefractions'):
                            cmds.setAttr(shape+'.'+attr, False)
            if volume_sg:
                obj = cmds.polySphere(radius=1, subdivisionsX=12, subdivisionsY=8, constructionHistory=False)[0]
                obj = cmds.parent(obj, cloud)[0]
                cmds.scale(width, d['air_height']*.5, depth, obj)
                cmds.makeIdentity(obj, apply=True, scale=True)
                shape = cmds.listRelatives(obj, shapes=True, fullPath=True)[0]
                if not cmds.attributeQuery('aiStepSize', node=shape, exists=True):
                    raise RuntimeError('MtoA did not expose mesh volume step size. Disable Arnold volume or check your MtoA version.')
                cmds.setAttr(shape+'.aiStepSize', d['air_step'])
                cmds.setAttr(shape+'.overrideEnabled', True)
                cmds.setAttr(shape+'.overrideShading', False)
                cmds.sets(obj, edit=True, forceElement=volume_sg)
            cmds.setAttr(cloud+'.translate', x, y, z, type='double3')
            key(cloud, 'translateX', start, x)
            key(cloud, 'translateX', end, x+v['wx']*(end-start)/v['duration']*d['air_drift'])
            key(cloud, 'translateZ', start, z)
            key(cloud, 'translateZ', end, z+v['wz']*(end-start)/v['duration']*d['air_drift'])
        key(air, 'visibility', start-1, 0, True)
        key(air, 'visibility', start, 1, True)
        key(air, 'visibility', end+1, 0, True)





"""Per-layer manipulators. Rebuild from a box to recalculate world-space collisions."""


def emitter_from_box(bounds):
    width, height, depth = (bounds[i+3]-bounds[i] for i in range(3))
    if not all(math.isfinite(x) for x in bounds) or min(width, height, depth) <= 1e-10:
        raise ValueError('The weather box must have a positive width, height and depth.')
    return {'cx': (bounds[0]+bounds[3])/2, 'cz': (bounds[2]+bounds[5])/2,
            'base': bounds[1], 'width': width, 'height': height, 'depth': depth}


class WeatherBoxes(WeatherDetail):
    def __init__(self):
        self.layer_colliders = {}
        super().__init__()
        self._box_layers_loaded = set()
        self.auto_collision_refresh = cmds.checkBox(
            parent=cmds.text(self.collider_label, query=True, parent=True),
            label='Automatically collide with current scene objects', value=True)
        frame = cmds.frameLayout(parent=self.utilities, label='Weather control box', collapsable=True,
                                 marginWidth=8, marginHeight=8)
        cmds.columnLayout(adjustableColumn=True, rowSpacing=5)
        self.use_weather_box = cmds.checkBox(label='Use existing control box when building this layer', value=True)
        self.scale_box_details = cmds.checkBox(label='Scale particle sizes and weather details with the box', value=True)
        cmds.button(label='Select control box / load layer settings', command=self.select_weather_box)
        cmds.button(label='Update weather from moved / scaled box', height=32, command=self.update_weather_box)
        cmds.text(label='W = move, R = scale. Then Update to rebake collisions. Rotation is locked.\nThe box is a guide; old particles stay in place until the update finishes.', align='left', wordWrap=True)

    def capture(self, *_):
        super().capture()
        self.layer_colliders[self.active_name()] = list(self.colliders)

    def refresh_scene_collisions(self, name):
        owned = list(self.groups())
        for node in cmds.ls(type='transform', long=True) or []:
            for tag in ('fallingSnowTool', 'studentSnowGeneratorOwned'):
                if cmds.attributeQuery(tag, node=node, exists=True) and cmds.getAttr(node+'.'+tag):
                    owned.append(node)
                    break
        shapes = [shape for shape in cmds.ls(type='mesh', long=True, visible=True) or []
                  if not cmds.getAttr(shape+'.intermediateObject')
                  and not any(shape.startswith(group+'|') for group in owned)]
        self.colliders = sorted(set(shapes))
        self.layer_colliders[name] = list(self.colliders)
        cmds.checkBox(self.ui[name]['collision'], edit=True, value=bool(self.colliders))
        if self.colliders:
            cmds.checkBox(self.ui[name]['ground'], edit=True, value=False)
        cmds.text(self.collider_label, edit=True,
                  label='Automatic collision: {} current scene meshes.'.format(len(self.colliders)))

    def box_for_layer(self, name):
        for group in self.groups(name):
            if cmds.attributeQuery('weatherControlBox', node=group, exists=True):
                boxes = cmds.listConnections(group+'.weatherControlBox', source=True, destination=False) or []
                if boxes and cmds.objExists(boxes[0]):
                    return group, cmds.ls(boxes[0], long=True)[0]
        return None, None

    def finish_layer(self, group, v, start, end, rng):
        super().finish_layer(group, v, start, end, rng)
        corners = [(-.5,-.5,-.5), (.5,-.5,-.5), (.5,-.5,.5), (-.5,-.5,.5),
                   (-.5,-.5,-.5), (-.5,.5,-.5), (.5,.5,-.5), (.5,-.5,-.5),
                   (.5,.5,-.5), (.5,.5,.5), (.5,-.5,.5), (.5,.5,.5),
                   (-.5,.5,.5), (-.5,-.5,.5), (-.5,.5,.5), (-.5,.5,-.5)]
        box = cmds.curve(degree=1, point=corners, name=self._building_name.replace(' ', '')+'_CONTROL_BOX#')
        box = cmds.parent(box, group)[0]
        cmds.setAttr(box+'.translate', v['cx'], v['base']+v['height']/2, v['cz'], type='double3')
        cmds.setAttr(box+'.scale', v['width'], v['height'], v['depth'], type='double3')
        for axis in 'XYZ':
            cmds.setAttr(box+'.rotate'+axis, lock=True, keyable=False, channelBox=False)
        cmds.addAttr(group, longName='weatherControlBox', attributeType='message')
        cmds.connectAttr(box+'.message', group+'.weatherControlBox')
        color = QtGui.QColor(self.STYLES[self._building_name][1])
        for shape in cmds.listRelatives(box, shapes=True, fullPath=True) or []:
            cmds.setAttr(shape+'.overrideEnabled', True)
            cmds.setAttr(shape+'.overrideRGBColors', True)
            cmds.setAttr(shape+'.overrideColorRGB', color.redF(), color.greenF(), color.blueF(), type='double3')
            for attribute in ('primaryVisibility', 'castsShadows', 'aiRenderCurve'):
                if cmds.attributeQuery(attribute, node=shape, exists=True):
                    cmds.setAttr(shape+'.'+attribute, False)
        cmds.addAttr(group, longName='weatherLayerSettings', dataType='string')
        settings = {key: self.control_value(control) for key, control in self.preset_controls(self._building_name).items()}
        cmds.setAttr(group+'.weatherLayerSettings', json.dumps(settings), type='string')
        cmds.addAttr(group, longName='weatherCollisionSurfaces', attributeType='message', multi=True)
        for index, surface in enumerate(self.colliders if v['collision'] else []):
            if cmds.objExists(surface):
                cmds.connectAttr(surface+'.message', '{}.weatherCollisionSurfaces[{}]'.format(group, index))
        template = self.custom_meshes.get(self._building_name)
        if template and cmds.objExists(template):
            cmds.addAttr(group, longName='weatherParticleTemplate', attributeType='message')
            cmds.connectAttr(template+'.message', group+'.weatherParticleTemplate')
        # Protect the baked world-space animation; move only the controller curve.
        for prefix in ('translate', 'rotate', 'scale'):
            for axis in 'XYZ':
                cmds.setAttr(group+'.'+prefix+axis, lock=True, keyable=False)

    def restore_layer_settings(self, name, group):
        if name in self.layer_colliders:
            self.colliders = list(self.layer_colliders[name])
        elif cmds.attributeQuery('weatherCollisionSurfaces', node=group, exists=True):
            connected = cmds.listConnections(group+'.weatherCollisionSurfaces', source=True, destination=False) or []
            self.colliders = (cmds.ls(connected, long=True, type='mesh') or []) if connected else []
            self.layer_colliders[name] = list(self.colliders)
        if name in self._box_layers_loaded:
            return
        if cmds.attributeQuery('weatherLayerSettings', node=group, exists=True):
            settings = json.loads(cmds.getAttr(group+'.weatherLayerSettings'))
            controls = self.preset_controls(name)
            for key, value in settings.items():
                if key in controls:
                    if self.control_kind(controls[key]) == 'floatSliderGrp':
                        self.set_scaled_slider(controls[key], value)
                    else:
                        if self.control_kind(controls[key]) == 'floatFieldGrp':
                            cmds.floatFieldGrp(controls[key], edit=True, precision=8)
                        self.control_value(controls[key], value, write=True)
            for setting, slider in getattr(self, '_precision_sliders', {}).get(name, {}).items():
                value = self.control_value(self.ui[name][setting])
                if self.control_kind(slider) == 'floatSliderGrp':
                    self.set_scaled_slider(slider, value)
                else:
                    self.control_value(slider, value, write=True)
            self.source_changed(name)
        if cmds.attributeQuery('weatherParticleTemplate', node=group, exists=True):
            templates = cmds.listConnections(group+'.weatherParticleTemplate', source=True, destination=False) or []
            if templates:
                self.custom_meshes[name] = templates[0]
        self._box_layers_loaded.add(name)

    def read_weather_box(self, name):
        group, box = self.box_for_layer(name)
        if not box:
            return False
        self.restore_layer_settings(name, group)
        # A negative scale mirrors a box; reject it instead of silently changing intent.
        if any(cmds.getAttr(box+'.scale'+axis) <= 0 for axis in 'XYZ'):
            raise ValueError('Use positive box scale values; mirrored or zero-sized boxes are unsupported.')
        settings = emitter_from_box(cmds.exactWorldBoundingBox(box))
        if cmds.checkBox(self.scale_box_details, query=True, value=True):
            ratios = [settings[k]/max(1e-12, cmds.floatFieldGrp(self.ui[name][k], query=True, value1=True)) for k in ('width', 'height', 'depth')]
            factor = (ratios[0]*ratios[1]*ratios[2])**(1/3)
            for setting, multiplier in {'size': factor, 'turb': factor, 'gust': factor, 'wx': ratios[0], 'wz': ratios[2]}.items():
                settings[setting] = cmds.floatFieldGrp(self.ui[name][setting], query=True, value1=True)*multiplier
            slider = self.interaction_ui[name]['max_height']
            self.set_scaled_slider(slider, cmds.floatSliderGrp(slider, query=True, value=True)*ratios[1])
            for setting in ('flutter', 'vortex', 'air_height', 'air_lift', 'air_step', 'bolt_width', 'air_density', 'air_noise'):
                slider = self.detail_ui[name][setting]
                multiplier = ratios[1] if setting in ('flutter', 'air_height', 'air_lift') else factor
                value = cmds.floatSliderGrp(slider, query=True, value=True)
                self.set_scaled_slider(slider, value/multiplier if setting in ('air_density', 'air_noise') else value*multiplier)
        for setting, value in settings.items():
            cmds.floatFieldGrp(self.ui[name][setting], edit=True, precision=8, value1=value)
            slider = getattr(self, '_precision_sliders', {}).get(name, {}).get(setting)
            if slider:
                self.set_scaled_slider(slider, value)
        return True

    def select_weather_box(self, *_):
        name = self.active_name()
        group, box = self.box_for_layer(name)
        if not box:
            cmds.warning('Build this layer once with the updated tool to create its control box.')
            return
        try:
            self.restore_layer_settings(name, group)
            cmds.select(box, replace=True)
            cmds.setToolTo('moveSuperContext')
            cmds.text(self.status, edit=True, label='Move (W) or scale (R) this box, then click Update weather from moved / scaled box.')
        except Exception as error:
            self.report_build_error(error)

    def build_active(self, *_):
        name = self.active_name()
        old_auto = cmds.checkBox(self.auto_scene_fit, query=True, value=True)
        # Include capture, auto-fit and preview in the same undo as the bake.
        cmds.undoInfo(openChunk=True, chunkName='Weather Studio Build')
        try:
            if cmds.checkBox(self.use_weather_box, query=True, value=True) and self.read_weather_box(name):
                cmds.checkBox(self.auto_scene_fit, edit=True, value=False)
            if cmds.checkBox(self.auto_collision_refresh, query=True, value=True):
                self.refresh_scene_collisions(name)
            super().build_active()
            if getattr(self, 'last_build', {}).get('ok'):
                self._box_layers_loaded.add(name)
                self.layer_colliders[name] = list(self.colliders)
        except Exception as error:
            self.report_build_error(error)
        finally:
            try:
                cmds.checkBox(self.auto_scene_fit, edit=True, value=old_auto)
            finally:
                cmds.undoInfo(closeChunk=True)

    def update_weather_box(self, *_):
        if not self.box_for_layer(self.active_name())[1]:
            cmds.warning('Build this layer first to create its control box.')
            return
        cmds.checkBox(self.use_weather_box, edit=True, value=True)
        self.build_active()





"""Accumulating shallow water and weather-specific deposition responses."""


def puddle_growth(hits, threshold, start_radius, max_radius, max_depth):
    if hits < threshold:
        return 0.0, 0.0
    amount = (hits-threshold+1)/threshold
    return min(max_radius, start_radius*math.sqrt(amount)), min(max_depth, max_depth*(1-math.exp(-amount*.15)))


class WeatherSurfaceResponse(WeatherBoxes):
    def __init__(self):
        super().__init__()
        self.surface_ui = {}
        for name, base in self.ui.items():
            parent = cmds.checkBox(base['accumulate'], query=True, parent=True)
            c = self.surface_ui[name] = {}
            c['puddles'] = cmds.checkBox(parent=parent, label='Rain accumulates into puddles', value=name in self.RAIN)
            c['threshold'] = cmds.intSliderGrp(parent=parent, label='Impacts before puddle', field=True, minValue=1, maxValue=30, value=3)
            c['limit'] = cmds.intSliderGrp(parent=parent, label='Maximum puddles', field=True, minValue=1, maxValue=200, value=60)
            c['spread'] = cmds.floatSliderGrp(parent=parent, label='Puddle spread (x rain radius)', field=True, minValue=2, maxValue=80, value=20, precision=3)
            c['depth'] = cmds.floatSliderGrp(parent=parent, label='Puddle depth (x rain radius)', field=True, minValue=.01, maxValue=2, value=.35, precision=4)
            c['slope'] = cmds.floatSliderGrp(parent=parent, label='Puddle maximum slope', field=True, minValue=0, maxValue=20, value=5, precision=2)
            c['roughness'] = cmds.floatSliderGrp(parent=parent, label='Water roughness', field=True, minValue=.01, maxValue=.5, value=.08, precision=3)
            c['tint'] = cmds.colorSliderGrp(parent=parent, label='Puddle water tint', rgbValue=(.65, .8, .9))
            cmds.text(parent=parent, label='Rain: shallow water. Snow: piles. Ash/dust: thin deposits. Leaves: scattered polygons.\nPuddles need repeated impacts on nearly flat surfaces; no runoff or fluid solver.', align='left', wordWrap=True)

    def preset_controls(self, name):
        result = super().preset_controls(name)
        for key, control in getattr(self, 'surface_ui', {}).get(name, {}).items():
            result['surface.'+key] = control
        return result

    def control_kind(self, control):
        for controls in getattr(self, 'surface_ui', {}).values():
            for key, candidate in controls.items():
                if control == candidate:
                    if key == 'puddles': return 'checkBox'
                    if key == 'tint': return 'colorSliderGrp'
                    return 'intSliderGrp' if key in ('threshold', 'limit') else 'floatSliderGrp'
        return super().control_kind(control)

    def values(self, name):
        v = super().values(name)
        s = {key: self.control_value(control) for key, control in self.surface_ui[name].items()}
        for key, low, high in [('threshold', 1, 30), ('limit', 1, 200), ('spread', 2, 80),
                               ('depth', .01, 2), ('slope', 0, 20), ('roughness', .01, .5)]:
            if not math.isfinite(s[key]) or not low-1e-7 <= s[key] <= high+1e-7:
                raise ValueError('Puddle {} must be between {} and {}.'.format(key, low, high))
        v['surface_settings'] = s
        return v

    def begin_surface_effects(self, group, v, start, end, meshes):
        super().begin_surface_effects(group, v, start, end, meshes)
        self._puddle_cells = {}
        self._puddle_count = 0
        self._puddle_meshes = meshes
        self._water_sg = None

    def water_material(self, group, settings):
        if self._water_sg:
            return self._water_sg
        mat = self.own(group, cmds.shadingNode('standardSurface', asShader=True, name='PuddleWater#'))
        sg = self.own(group, cmds.sets(renderable=True, noSurfaceShader=True, empty=True, name='PuddleWaterSG#'))
        cmds.connectAttr(mat+'.outColor', sg+'.surfaceShader')
        cmds.setAttr(mat+'.base', .15)
        cmds.setAttr(mat+'.baseColor', *settings['tint'], type='double3')
        cmds.setAttr(mat+'.specular', 1)
        cmds.setAttr(mat+'.specularIOR', 1.333)
        cmds.setAttr(mat+'.specularRoughness', settings['roughness'])
        cmds.setAttr(mat+'.transmission', .75)
        cmds.setAttr(mat+'.transmissionColor', *settings['tint'], type='double3')
        self._water_sg = sg
        return sg

    def supported_radius(self, center, normal, radius, surface, v):
        # Check a growing footprint against the same support so it does not
        # freely bridge roof edges, nearby objects or holes sampled by the rays.
        if surface == 'Invisible ground plane':
            return radius
        for _ in range(7):
            supported = True
            for index in range(12):
                angle = index*math.tau/12
                x = center[0]+math.cos(angle)*radius
                z = center[2]+math.sin(angle)*radius
                expected = center[1]-(normal[0]*(x-center[0])+normal[2]*(z-center[2]))/max(.01, normal[1])
                distance = max(v['size']*3, radius*.25)
                sample = self.hit((x, expected+distance, z), (x, expected-distance, z), self._puddle_meshes, None)
                if not sample or self._last_collision_label != surface or abs(sample[1][1]-expected) > v['size']*.5:
                    supported = False
                    break
            if supported:
                return radius
            radius *= .7
        return 0.0

    def surface_impact(self, group, v, hit, frame, start):
        s = v['surface_settings']
        if not s['puddles'] or hit[2][1] < math.cos(math.radians(s['slope'])):
            return hit
        surface = self._last_collision_label or 'surface'
        size = v['size']
        cell_size = size*s['spread']*2
        point = hit[1]
        identity = (surface, math.floor(point[0]/cell_size), math.floor(point[2]/cell_size),
                    math.floor(point[1]/max(size*2, 1e-9)))
        item = self._puddle_cells.get(identity)
        if item is None:
            # Keep sparse hit counting bounded independently of visible-puddle limit.
            if len(self._puddle_cells) >= 10000:
                return hit
            item = self._puddle_cells[identity] = {'hits': 0, 'point': point, 'normal': hit[2], 'node': None,
                                                 'radius': 0.0, 'depth': 0.0, 'last_frame': None}
        item['hits'] += 1
        radius, depth = puddle_growth(item['hits'], s['threshold'], size*s['spread']*.4,
                                      size*s['spread'], size*s['depth'])
        if radius == 0 or item['last_frame'] == frame:
            return hit
        if item['node'] is None and self._puddle_count >= s['limit']:
            return hit
        supported = self.supported_radius(item['point'], item['normal'], radius, surface, v)
        radius = max(item['radius'], supported)
        if radius <= size*.2:
            return hit
        if item['node'] is None:
            obj = cmds.polyCylinder(radius=1, height=1, subdivisionsX=24, subdivisionsY=1,
                                    constructionHistory=False, name='GrowingPuddle#')[0]
            obj = cmds.parent(obj, group)[0]
            cmds.move(0, .5, 0, obj+'.vtx[*]', relative=True, objectSpace=True)
            cmds.setAttr(obj+'.translate', *[item['point'][i]+item['normal'][i]*size*.02 for i in range(3)], type='double3')
            rotation = om.MVector(0, 1, 0).rotateTo(om.MVector(*item['normal'])).asEulerRotation()
            cmds.setAttr(obj+'.rotate', *[math.degrees(r) for r in rotation], type='double3')
            cmds.sets(obj, edit=True, forceElement=self.water_material(group, s))
            key(obj, 'visibility', start-1, 0, True)
            key(obj, 'visibility', frame, 1, True)
            item['node'] = obj
            self._puddle_count += 1
        obj = item['node']
        for axis, value in zip('XYZ', (radius, max(depth, size*.001), radius)):
            key(obj, 'scale'+axis, frame, value)
        item.update(radius=radius, depth=depth, last_frame=frame)
        # Raise this impact's splash above the shallow water if inside its footprint.
        distance = math.hypot(point[0]-item['point'][0], point[2]-item['point'][2])
        if distance <= radius:
            return hit[0], tuple(point[i]+hit[2][i]*depth for i in range(3)), hit[2], hit[3]
        return hit

    def place_deposit(self, group, sg, hit, radius, ratio, frame, start, max_height):
        name = self._building_name
        if name in ('Dust', 'Ash'):
            ratio *= .12 if name == 'Dust' else .2
            max_height = min(max_height, radius*.4)
        elif name == 'Sandstorm':
            ratio *= .5
            max_height *= .4
        return super().place_deposit(group, sg, hit, radius, ratio, frame, start, max_height)


weather_generator = WeatherSurfaceResponse()


"""Run after Weather Studio. Adds precision sliders without rebuilding the UI."""
import maya.cmds as cmds
from functools import partial


def add_weather_sliders(tool):
    # key: slider min, slider max, typed min, typed max, step, tooltip
    ranges = {
        'size': (.005, 1, .001, 100, .005, 'Particle radius in scene units. Try 0.15 for visible rain.'),
        'variation': (0, .9, 0, .9, .01, 'Variation in particle size and fall duration. Zero is uniform.'),
        'duration': (2, 240, 2, 1000, 1, 'Frames per fall. Lower values make particles fall faster.'),
        'wx': (-30, 30, -1000, 1000, .1, 'Horizontal X travel over one fall. Negative reverses direction.'),
        'wz': (-30, 30, -1000, 1000, .1, 'Horizontal Z travel over one fall. Negative reverses direction.'),
        'turb': (0, 10, 0, 1000, .05, 'Distance of sideways swaying. Zero removes this turbulence.'),
        'gust': (0, 5, 0, 1000, .05, 'Strength of the changing X drift.'),
        'spin': (0, 720, -7200, 7200, 1, 'Rotation per fall in degrees. Zero disables tumbling.'),
        'width': (.1, 100, .001, 10000, .1, 'Emitter width along X, in scene units.'),
        'depth': (.1, 100, .001, 10000, .1, 'Emitter depth along Z, in scene units.'),
        'height': (.1, 100, .001, 10000, .1, 'Distance from the emitter top to the ground level.'),
        'cx': (-100, 100, -100000, 100000, .1, 'Emitter center X.'),
        'cz': (-100, 100, -100000, 100000, .1, 'Emitter center Z.'),
        'base': (-100, 100, -100000, 100000, .1, 'Ground plane Y. The emitter top is this plus fall height.'),
        'deposit': (.1, 10, .001, 100, .05, 'Deposit radius as a multiplier of particle radius.'),
        'slope': (0, 90, 0, 90, 1, 'Steepest upward-facing surface that can receive deposits.'),
        'cap': (0, 1000, 0, 2000, 1, 'Maximum number of deposit objects. Zero prevents new deposits.'),
        'interval': (6, 240, 6, 10000, 1, 'Frames between lightning strikes. Smaller is more frequent.'),
        'flash': (0, 10, 0, 1000, .05, 'Lightning light intensity; appearance depends on exposure.'),
    }
    if getattr(tool, '_precision_sliders', None):
        cmds.warning('Precision sliders are already installed in this window.')
        return

    tool._precision_sliders = {}
    tool._slider_baseline = {}
    integer_keys = {'duration', 'cap', 'interval'}

    def changed(name, setting, *_):
        slider = tool._precision_sliders[name][setting]
        integer = setting in integer_keys
        reader = cmds.intSliderGrp if integer else cmds.floatSliderGrp
        writer = cmds.intFieldGrp if integer else cmds.floatFieldGrp
        writer(tool.ui[name][setting], edit=True,
               value1=reader(slider, query=True, value=True))
        cmds.text(tool.status, edit=True,
                  label='Settings changed. Click Build / replace to update the animation.')

    def reset_active(*_):
        name = tool.active_name()
        for setting, value in tool._slider_baseline[name].items():
            editor = cmds.intSliderGrp if setting in integer_keys else cmds.floatSliderGrp
            editor(tool._precision_sliders[name][setting], edit=True, value=value)
            changed(name, setting)

    for name, controls in tool.ui.items():
        tool._precision_sliders[name] = {}
        tool._slider_baseline[name] = {}
        for setting, limits in ranges.items():
            old = controls[setting]
            integer = setting in integer_keys
            field = cmds.intFieldGrp if integer else cmds.floatFieldGrp
            slider = cmds.intSliderGrp if integer else cmds.floatSliderGrp
            if not integer:
                field(old, edit=True, precision=4)
            value = field(old, query=True, value1=True)
            parent = field(old, query=True, parent=True)
            label = field(old, query=True, label=True)
            low, high, field_low, field_high, step, tip = limits
            # Preserve valid values already entered, even outside the normal slider range.
            field_low, field_high = min(field_low, value), max(field_high, value)
            options = dict(parent=parent, label=label, field=True, value=value,
                           minValue=min(low, value), maxValue=max(high, value),
                           fieldMinValue=field_low, fieldMaxValue=field_high,
                           step=step, annotation=tip,
                           changeCommand=partial(changed, name, setting),
                           dragCommand=partial(changed, name, setting))
            if not integer:
                options['precision'] = 4
            new = slider(**options)
            tool._precision_sliders[name][setting] = new
            tool._slider_baseline[name][setting] = value
            # Keep the original field as the generator's data source.
            field(old, edit=True, manage=False)

    parent = tool.utilities
    cmds.button(parent=parent, label='Reset current tab sliders to starting values',
                height=28, command=reset_active)
    cmds.text(tool.status, edit=True,
              label='Sliders ready. Type exact values beside each slider; build to apply changes.')


if 'weather_generator' not in globals() or not hasattr(weather_generator, 'build_button'):
    cmds.warning('Run the Weather Studio script first, then run this slider update.')
else:
    add_weather_sliders(weather_generator)


"""Embedded help. No external documents or internet connection are required."""

WEATHER_CONTROL_HELP = {
    'base.image': ('Texture PNG', 'Optional image with real alpha transparency. Browse selects a PNG and switches the particle source to PNG texture. Automatic weather shape ignores this path. Keep the image with your project.'),
    'base.geo': ('Particle shape', 'Used only in Choose a shape mode. Sphere makes round particles; Streak makes elongated rain; Card makes crossed planes; Leaf makes a simple leaf. Automatic mode uses section 07 instead.'),
    'base.color': ('Particle color', 'Base color for generated particles and deposits. PNG particles use their image colors. Section 07 can add brightness variation between generated particles.'),
    'base.count': ('Particle count', 'Number of reusable falling particles, from 1 to 500. More particles increase coverage and build time. Try 50 for a test or 100-200 for a short shot. Turn off Visible falling particles for air-only effects.'),
    'base.size': ('Particle radius', 'Size in scene units, before detailed shape proportions. Rain starts at 0.035; snow starts around 0.12. Radius 1 is very large for a 20-unit emitter. Type decimals for fine control.'),
    'base.variation': ('Natural variation', 'Random variation in particle size and fall duration, from 0 to 0.9. Zero produces uniform particles. The same seed repeats the variation.'),
    'base.duration': ('Frames per fall', 'Nominal time to travel the emitter height. Smaller values fall faster. Section 08 settling and updraft controls further change the vertical speed. Frame rate affects apparent speed in seconds.'),
    'base.wx': ('Wind travel X', 'Horizontal X travel per nominal fall, in scene units. Negative values reverse the direction. Also drives air-bank drift. Swirl and turbulence add to this motion.'),
    'base.wz': ('Wind travel Z', 'Horizontal Z travel per nominal fall. Negative values reverse direction. Use with X wind to choose any horizontal direction.'),
    'base.turb': ('Swirl distance', 'Strength of oscillating sideways motion. Higher values produce wider swaying paths. Section 08 controls frequency and a separate circular swirl.'),
    'base.gust': ('Gust strength', 'Adds time-varying X drift. Zero gives steadier wind. This is an art-directed motion control, not a physical wind-speed measurement.'),
    'base.spin': ('Tumble per fall', 'Approximate degrees of rotation during one nominal fall. Zero removes the animated tumble. Streak primitives follow travel direction instead.'),
    'base.width': ('Emitter width', 'Spawn region width along X, in scene units. Wider emitters spread the same particle count over more area, so coverage becomes thinner.'),
    'base.depth': ('Emitter depth', 'Spawn region depth along Z. Use Fit current emitter around captured surfaces to set the footprint automatically.'),
    'base.height': ('Fall height', 'Emitter top is Ground level Y plus this positive height. Put the top above the objects you want to cover.'),
    'base.cx': ('Center X', 'World X position of the emitter center. Negative positions are valid.'),
    'base.cz': ('Center Z', 'World Z position of the emitter center. Negative positions are valid.'),
    'base.base': ('Ground level Y', 'Lower limit of the fall region. It is also the infinite collision-plane height when invisible ground is enabled. When using real scene surfaces, put this below the lowest surface.'),
    'base.collision': ('Use captured scene surfaces', 'Checks particle paths against the registered polygon meshes. Capture objects first. Static surfaces are sampled at playback start; rebuild after editing or moving them.'),
    'base.ground': ('Use invisible ground plane', 'Adds an infinite horizontal collision plane at Ground level Y. It does not create a visible floor. Capturing real surfaces turns this off to prevent unintended blocking.'),
    'base.accumulate': ('Leave surface deposits', 'Snow, ash and dust create flattened deposits; leaves settle as leaf polygons. Rain modes use impact rings instead. Deposits remain after the baked range ends.'),
    'base.deposit': ('Deposit spread', 'Deposit radius relative to the falling particle radius. Larger values fill gaps faster, but can overhang edges. Does not enlarge falling particles.'),
    'base.slope': ('Maximum surface slope', 'Maximum tilt from horizontal, in degrees, that accepts deposits. Lower values restrict buildup to flatter surfaces. Correct outward-facing mesh normals are required.'),
    'base.cap': ('Surface effect limit', 'For snow, ash, dust and leaves: maximum deposit objects per build, up to 2000. For rain: reusable splash-pool size. Expired rings are reused throughout the bake, so rain does not stop splashing when a cumulative impact count is reached. Puddles have their own limit.'),
    'base.lightning': ('Enable bolts and light flashes', 'Creates lightning geometry and an animated directional light. Customize bolts in section 10. This does not generate thunder audio.'),
    'base.interval': ('Frames between strikes', 'Nominal time between lightning events. Smaller values create more strikes. Section 10 timing variation randomizes this interval.'),
    'base.flash': ('Flash intensity', 'Intensity of the directional lightning light. This is separate from the visible bolt emission. Exposure and scene lighting affect the result.'),
    'base.seed': ('Random seed', 'An integer that controls repeatable random choices. Change it for another arrangement; keep it fixed while comparing settings.'),
    'source.mode': ('Particle source', 'Automatic weather shape uses the detailed weather preset or selected design in section 07. Choose a shape uses the basic dropdown. PNG texture uses crossed image cards and requires an existing PNG.'),
    'interaction.stack': ('Collide with existing deposits', 'Lets later particles hit earlier snow, ash or dust deposits within this layer. Disable for surface patches without stacking. Separate weather layers and settled leaves do not exchange collision buildup.'),
    'interaction.warmup': ('Warm up falling particles', 'Advances particles before the playback start so the first frame has an established distribution. Uses up to 240 preparation frames. Warmup does not create deposits or extra visible-range animation keys. Rising particles skip automatic warmup.'),
    'interaction.thickness': ('Deposit thickness ratio', 'Thickness relative to deposit radius. Small values make flat layers; higher values make chunkier piles. Only affects deposits, not falling flakes.'),
    'interaction.max_height': ('Maximum pile height', 'Maximum pile height above its original supporting surface, in scene units. A pile on a roof uses the roof as its foundation. New deposits stop when this height would be exceeded.'),
    'interaction.splashes': ('Rain impact rings', 'Creates expanding polygon rings at Rainfall, Squall and Thunder impacts. This is a visual approximation, not a liquid simulation or puddle system.'),
    'interaction.splash_life': ('Splash lifetime', 'How many frames a ring remains visible after impact. Longer values leave more rings visible at once.'),
    'interaction.streak_length': ('Rain streak length ratio', 'Total streak length equals particle diameter times this ratio. At radius 0.035 and ratio 4, length is about 0.28 scene units. Shorten this instead of changing radius if rain looks stretched.'),
    'detail.particles': ('Visible falling particles', 'Disable to build air layers or lightning without individual particles. Fog starts with particles off. Enable at least one visible effect before building.'),
    'detail.shape': ('Detailed shape', 'Used in Automatic weather shape mode. Weather preset chooses a design for the current tab. Selected mesh requires capturing a polygon object with the button below.'),
    'detail.sx': ('Shape width', 'Multiplies local X size of detailed generated particles. Does not change emitter width, PNG cards or deposited snow.'),
    'detail.sy': ('Shape height', 'Multiplies local Y size of detailed generated particles. Use with rain length to refine proportions.'),
    'detail.sz': ('Shape depth', 'Multiplies local Z size of detailed generated particles. Values below 1 flatten the shape.'),
    'detail.irregular': ('Edge irregularity', 'Randomly varies crystal/shard outlines and snow-clump or dust-grain vertices. Zero is regular. Very high values make rougher, less natural silhouettes.'),
    'detail.curl': ('Leaf curl / flake bend', 'Bends leaf, ash-shard and crystal sheet geometry. Zero keeps it flat. Does not affect spheres, streaks or a custom mesh.'),
    'detail.detail': ('Shape detail', 'Controls sphere subdivisions and leaf/shard outline resolution. Higher values create more polygons and take longer to build. Crystal flakes have a fixed 24-point outline.'),
    'detail.roughness': ('Surface roughness', 'Lower values produce sharper specular reflections; higher values are matte. Used by generated standard-surface materials. Good lighting is needed to judge the result.'),
    'detail.transmission': ('Light transmission', 'Makes generated materials transmit light. Useful for rain. It is not the same as opacity and is best judged in a supported renderer.'),
    'detail.color_variation': ('Particle color variation', 'Creates four brightness variants of the base color and distributes them across detailed particles. It does not randomly change hue or recolor PNGs.'),
    'detail.opacity': ('Particle opacity', 'One is opaque; lower values make generated materials more transparent. Separate from PNG alpha and air-layer opacity.'),
    'detail.glow': ('Particle emission / embers', 'Adds self-lit color to generated materials. Useful for glowing ash-like particles. Does not add lens bloom, sparks physics or heat.'),
    'detail.fall': ('Settling speed multiplier', 'Multiplies downward travel speed. Below 1 makes particles linger; above 1 accelerates settling. Dust starts low.'),
    'detail.vortex': ('Horizontal swirl speed', 'Adds circular motion around the emitter center in the XZ plane. Zero removes this circular component. This is not a simulated tornado.'),
    'detail.lift': ('Updraft / buoyancy', 'Adds upward motion relative to emitter height and fall duration. If stronger than settling, particles rise and may leave the emitter volume.'),
    'detail.frequency': ('Turbulence cycles per fall', 'Controls how rapidly sideways oscillations and flutter change. Low values create broad wandering; high values create faster changes.'),
    'detail.flutter': ('Vertical flutter distance', 'Adds oscillating vertical motion. Useful for leaves and ash. Large values can temporarily lift particles.'),
    'detail.air_preview': ('Soft air cards in viewport', 'Shows crossed translucent cards as an approximate haze preview. Press 6 for the soft texture. Cards are hidden in renders and are not true volumetric fog.'),
    'detail.air_arnold': ('Build true Arnold volume', 'Creates bounded, noise-shaded mesh volumes. Requires MtoA, scene lighting and an Arnold render. Does not modify global atmosphere settings or simulate airflow around obstacles.'),
    'detail.air_color': ('Air / fog tint', 'Color of viewport haze and Arnold volume scattering. Warm brown works for dusty air; pale blue-gray works for fog.'),
    'detail.air_density': ('Volume density', 'Controls Arnold volume thickness. Start low: density compounds across overlapping banks. Does not control viewport cards.'),
    'detail.air_opacity': ('Viewport haze opacity', 'Opacity of the soft preview cards only. Does not affect Arnold volume density.'),
    'detail.air_height': ('Air layer height', 'Vertical size of each cloud bank in scene units. Lower values form a shallow ground layer.'),
    'detail.air_lift': ('Air layer elevation', 'Offsets cloud-bank bottoms above Ground level Y. It is a position control, separate from particle updraft.'),
    'detail.air_banks': ('Cloud banks', 'Number of overlapping haze or volume banks. More banks increase coverage and render cost.'),
    'detail.air_scale': ('Cloud size', 'Multiplies bank width and depth relative to the emitter footprint. Height uses its separate control.'),
    'detail.air_noise': ('Volume noise frequency', 'Sets the procedural density-noise scale for Arnold. Higher values create finer variation. Does not change viewport-card texture.'),
    'detail.air_drift': ('Air drift speed', 'Multiplies cloud travel driven by X/Z wind and the rate of Arnold noise evolution. Zero holds the air still. Banks can drift beyond the emitter footprint.'),
    'detail.air_scatter': ('Forward light scattering', 'Arnold scattering direction bias. Positive values favor forward scattering; zero is more even. Lighting and camera direction strongly affect the appearance.'),
    'detail.air_step': ('Volume sampling step', 'Arnold ray-marching step in scene units. Smaller values can resolve finer details but render more slowly. Larger values are faster but may show artifacts.'),
    'detail.bolt_segments': ('Bolt segments', 'Number of segments along the main lightning path. Higher values add bends and geometry.'),
    'detail.bolt_branches': ('Branches per strike', 'Number of smaller branches attached to each main bolt. Zero produces only the main path.'),
    'detail.bolt_width': ('Bolt radius', 'Main lightning thickness in scene units. Branches are thinner, and each path tapers toward its tip.'),
    'detail.bolt_jagged': ('Path jaggedness', 'Sideways displacement of lightning bends relative to strike height. Zero produces a straight main path.'),
    'detail.bolt_spread': ('Branch spread', 'Horizontal reach of lightning branches. Increase for wider forks.'),
    'detail.bolt_emission': ('Bolt emission', 'Self-lit brightness of the bolt material. Separate from Flash intensity, which lights the scene. Bloom requires renderer/postprocessing settings outside this tool.'),
    'detail.bolt_flashes': ('Flashes per strike', 'Number of short on/off flashes for the same bolt geometry. Each flash is one frame on followed by one frame off.'),
    'detail.bolt_jitter': ('Strike timing variation', 'Randomizes the nominal interval between strikes. Zero gives evenly timed lightning.'),
    'detail.bolt_color': ('Lightning color', 'Tint for both the emissive bolt and its flash light. Pale blue-white is a useful starting point.'),
    'surface.puddles': ('Rain accumulates into puddles', 'Rainfall, Squall and Thunder count nearby surface impacts. Repeated impacts create growing shallow water patches. Requires nearly flat, correctly oriented collision surfaces. No runoff, evaporation or liquid solver.'),
    'surface.threshold': ('Impacts before puddle', 'Nearby rain hits required before a water patch appears. Lower for a quick test; higher for slower accumulation. Only impacts during the visible bake count.'),
    'surface.limit': ('Maximum puddles', 'Maximum water-patch objects. Existing patches can keep growing after the object limit is reached, until their spread and depth limits.'),
    'surface.spread': ('Puddle spread', 'Maximum patch radius as a multiplier of rain radius. Nearby impacts are grouped using a related spatial cell size. Higher values create broader patches. Footprint sampling limits growth near edges.'),
    'surface.depth': ('Puddle depth', 'Maximum shallow-water thickness as a multiplier of rain radius. Puddles grow sideways and deepen gradually rather than stack like snow.'),
    'surface.slope': ('Puddle maximum slope', 'Maximum tilt from horizontal that can collect water. Low values avoid pools sitting on steep roofs or walls. This is a placement rule, not simulated drainage.'),
    'surface.roughness': ('Water roughness', 'Low values give sharper reflections; larger values soften them. Lighting and a supported renderer are needed to judge the water shader.'),
    'surface.tint': ('Puddle water tint', 'Base and transmission tint for shallow water patches. A pale tint helps keep water clear in a lit render.'),
}

WEATHER_ACTION_HELP = {
    'Automatically collide with current scene objects': 'Refreshes visible polygon collision surfaces on every build or box update, excluding generated weather. Particles can fall below the control box to reach those surfaces. Disable to use a manually captured surface list. Existing bakes still require Update after moving scene objects.',
    'Use existing control box when building this layer': 'Build uses the current layer box instead of automatic scene fitting. Disable to fit to scene surfaces again. A box is created after a successful build.',
    'Scale particle sizes and weather details with the box': 'Scales particle sizes, wind distances, piles, fog and lightning when reading a resized box. Disable to change emitter coverage while preserving detail sizes. Moving the box does not change sizes.',
    'Select control box / load layer settings': 'Selects this tab wireframe box and activates the Move tool. On first access after reopening, loads saved layer settings and collision-surface references. W moves and R scales. Rotation is locked.',
    'Update weather from moved / scaled box': 'Rebakes the current layer inside the edited box and recalculates collisions against its registered surfaces. Existing particles do not move live with the guide. Old geometry is replaced after a successful build.',
    'Diagnose weather motion / upper band': 'After building, reports baked frames, particle height range, average vertical movement and the surfaces hit most often. Helps identify unwanted ceiling/sky collisions or a playback-range mismatch.',
    'Auto-fit weather to scene before building': 'Enabled by default. Before building, fits the emitter and scales particle size, wind distances, piles, fog and lightning. Uses registered surfaces first, then selected meshes, then all visible meshes. Disable for manual sizing. Distant visible geometry can enlarge automatic bounds; capture only the intended surfaces to avoid this.',
    'Use selected objects as collision surfaces': 'Select polygon ground and objects, then click. Replaces the registered surface list, enables collisions on every tab and disables the invisible ground plane.',
    'Use ALL visible polygon surfaces': 'Registers visible polygon surfaces across the scene, excluding current generated weather groups. Large scenes take longer to test for collision.',
    'Fit current emitter around captured surfaces': 'Sets emitter bounds around registered objects and proportionally scales particle size, wind, piles, fog and lightning. Repeated fitting to unchanged bounds does not keep shrinking the effect. Rebuild afterward.',
    'Select registered surfaces': 'Selects the stored collision meshes so you can check what is included. Renamed or deleted objects need recapturing.',
    'Build / replace': 'Bakes the active tab over the playback range. Replaces its previous layer after a successful build; other tabs remain. Changing controls does not update an existing bake until you build again.',
    'Select layer': 'Selects the active weather tab layer. Press F over a viewport to frame the selected layer.',
    'Clear layer': 'Deletes the active tab weather geometry and owned resources. Other tabs remain. Maya Undo can restore a cleared layer.',
    'Preview weather in viewport': 'Moves to the bake start, selects and frames the layer, enables polygons, and adds it to an active isolate set. This changes viewport framing.',
    'Frame weather in viewport after a successful build': 'Automatically previews successful builds. Disable to preserve your camera framing.',
    'Reset current tab sliders to starting values': 'Restores the original precision sliders to values recorded when they were installed. It does not reset all advanced controls, build geometry or clear a layer.',
    'Quick draft': 'Replaces this tab with a lighter bake: at most 50 particles, 72 frames, 150 surface effects and reduced cloud/lightning detail. A normal build uses the full controls again.',
    'Save current tab preset': 'Saves this tab settings as JSON. Does not save collision objects, custom particle meshes or image files; it only records the image path.',
    'Load current tab preset': 'Loads settings into the active tab without building. Recapture required custom meshes and collision surfaces, check texture paths, then build.',
    'Check build cost': 'Estimates particle animation-key count. It is not a render-time estimate and excludes extra geometry and keys from deposits, air, splashes and lightning.',
    'Use selected polygon object as particle shape': 'Select one polygon transform without child transforms. Captures it as a template, switches to Automatic mode and selects the custom-mesh design. The source is retained; generated copies are normalized.',
    'Arnold PNG  /  Original colors': 'After building image particles, applies an unlit Arnold material using the PNG colors and alpha. Requires MtoA. Restart the render.',
    'Arnold PNG  /  Pure white': 'After building image particles, uses PNG alpha with white color. Requires MtoA. Does not recolor non-PNG geometry.',
}

WEATHER_LESSONS = {
    'Start here': (
        '1. Work in a Y-up Maya scene and set the playback range.\n'
        '2. Choose a weather tab. Start with 50-100 particles or Quick draft.\n'
        '3. Auto-fit is on by default. Select your polygon environment, or capture specific collision surfaces.\n'
        '4. Click Fit current emitter around captured surfaces.\n'
        '5. Use Automatic weather shape for built-in geometry, or Browse for a PNG.\n'
        '6. Click Build / replace. Press 5 for shaded polygons or 6 for textures, then Play.\n'
        '7. Change a control, then rebuild to see the change. Each tab is a separate layer.\n\n'
        'Hover over a control for help. Search this guide by setting name, effect or problem. '
        'All distances use scene units and all durations use timeline frames.'),
    'Weather recipes': (
        'Snowfall: crystal flakes, radius around 0.12-0.15, gentle wind. Capture a plane, fit the emitter, '
        'enable deposits and stacking, and use a long enough bake to see buildup.\n\n'
        'Rainfall: start with radius 0.035 and streak length ratio 4. Shorter falls are faster. '
        'Enable impact rings for splashes. Transmission is best judged in a lit render.\n\n'
        'Ashfall: irregular shards, slower settling, modest flutter and gray/brown air. Optional emission can create an ember-like look.\n\n'
        'Dust: fine grains, settling around 0.2, swirl around 1, modest updraft and warm air tint. '
        'Soft cards preview haze; enable Arnold volume for rendered dusty air.\n\n'
        'Autumn: curled leaves, moderate flutter, visible tumble and warm particle color. Leaves settle as polygons.\n\n'
        'Squall: faster rain with stronger sideways wind and turbulence. Add a light air layer if desired.\n\n'
        'Thunder: rain plus lightning. Start with 14 segments, five branches, two flashes. '
        'Adjust bolt radius, light intensity and emission for your scene scale and exposure.\n\n'
        'Blizzard: irregular snow clumps with stronger wind. Smaller footprints and larger deposit spread help show buildup.\n\n'
        'Studio: choose your own shape, motion and material, or capture a polygon particle template.\n\n'
        'Fog: particles start off. Use shallow air height for ground fog, and low density for Arnold rendering.\n\n'
        'Sandstorm: windblown grit, slow settling, strong wind and warm dusty banks. Tune drift so banks remain in your shot.'),
    'Surfaces and accumulation': (
        'Capture a real polygon plane and objects with the surface buttons. Capture replaces the previous list; '
        'select all desired objects together. The tool automatically turns off its invisible ground plane.\n\n'
        'Collision uses static mesh geometry sampled at playback start. Rebuild after scene edits. '
        'Particle centers are tested against surfaces; large shapes may partly intersect.\n\n'
        'Snow, ash and dust form flattened deposits. Later particles can land on earlier deposits in the same layer. '
        'Deposit spread, thickness, slope, height limit and surface-effect cap control coverage. '
        'Leaves settle but do not become collision layers. Rain uses expanding rings.\n\n'
        'Buildup does not merge into a continuous snow mesh, compact or avalanche. Separate weather layers '
        'do not share accumulated collision geometry. Air banks are procedural and do not flow around obstacles.'),
    'Viewport versus Arnold': (
        'Generated particles and deposits are polygon geometry and should be visible in a viewport. '
        'Press 5 for shading, or 6 for PNG and haze textures.\n\n'
        'Viewport haze consists of soft crossed cards. It is an approximation and is deliberately hidden in renders. '
        'Build true Arnold volume creates closed-mesh volumes with procedural density noise. '
        'These require MtoA, lighting and an Arnold render. Density and noise affect the Arnold volume; '
        'Viewport haze opacity affects only the cards.\n\n'
        'Material transmission, roughness and volume scattering depend on lighting and exposure. '
        'Lightning emission does not automatically create bloom. Arnold PNG buttons apply only to image particles. '
        'External PNG files must remain accessible.'),
    'Troubleshooting': (
        'Nothing appears: check the build status/error dialog, select the layer, go to the bake start, '
        'and use Preview weather in viewport. Check Show > Polygons and isolate selection. '
        'For air-only mode, enable a preview or Arnold volume.\n\n'
        'Radius reads zero: use a small positive decimal such as 0.035 for rain. Current controls keep four decimal places. '
        'A radius of 1 makes large particles. Use streak length to shorten rain.\n\n'
        'Browse or shape selection: Browse is always available and switches to PNG mode. '
        'Automatic mode ignores a stored PNG path and uses detailed shapes. Choose a shape enables the basic dropdown.\n\n'
        'No buildup: capture the surface, enable collisions/deposits/stacking, check slope and normals, '
        'fit the emitter, scrub forward, and check the height and object caps. Larger areas need more coverage.\n\n'
        'Slow builds: use Quick draft, fewer particles, shorter ranges, simpler custom meshes and lower shape detail. '
        'Lower surface-effect caps and bank/branch counts also help. Escape cancels at progress checks.\n\n'
        'Volume unavailable: confirm MtoA is installed and loaded. Turn Arnold volume off to build geometry and preview cards. '
        'If a build fails, its dialog and Script Editor traceback identify the issue.\n\n'
        'Air drifts out of frame: reduce wind or Air drift speed, enlarge the layer, or shorten the shot. '
        'Positive updraft can also carry individual particles above the emitter.'),
    'Scope and limits': (
        'This is a finite, baked procedural weather tool. It supports static polygon collision, '
        'layered geometric deposition, art-directed motion, approximate splash rings and optional Arnold volumes. '
        'It does not solve fluid dynamics, animated/deforming collider motion, puddles, runoff, wet materials, '
        'snow compaction, cross-layer buildup, thunder audio, camera shake or lens bloom.\n\n'
        'Build range: 2-1001 frames. Falling particles hide outside the baked range. Deposits persist after it. '
        'Particles: up to 500; surface effects: up to 2000 per layer. Higher mesh detail adds cost.\n\n'
        'Changing settings requires rebuilding. Generated layer resources are owned by the tool; '
        'do not reuse its materials on unrelated objects if you plan to clear the layer.\n\n'
        'Python syntax and numerical motion/collision checks were run outside Maya. '
        'Maya UI, scene evaluation, Undo and Arnold rendering still require in-app verification.'),
}


def weather_help_sections():
    sections = dict(WEATHER_LESSONS)
    sections['Buttons and workflow'] = '\n\n'.join(
        title+'\n'+text for title, text in WEATHER_ACTION_HELP.items())
    for prefix, title in (('base', 'Basic settings'), ('interaction', 'Collision controls'),
                          ('detail', 'Detailed settings'), ('surface', 'Puddles and surface response'), ('source', 'Choosing a particle source')):
        sections[title] = '\n\n'.join(label+'\n'+text for key, (label, text) in WEATHER_CONTROL_HELP.items()
                                       if key.startswith(prefix+'.'))
    return sections


def search_weather_help(query, topic='All topics'):
    terms = query.casefold().split()
    hits = []
    for title, content in weather_help_sections().items():
        if topic != 'All topics' and title != topic:
            continue
        # Search individual entries/paragraphs instead of printing entire chapters.
        paragraphs = content.split('\n\n')
        matches = [p for p in paragraphs if all(term in (title+' '+p).casefold() for term in terms)]
        if matches:
            hits.append(title.upper()+'\n'+'-'*len(title)+'\n'+'\n\n'.join(matches))
    return '\n\n\n'.join(hits) if hits else 'No matching help. Try a shorter phrase, such as radius, fog, PNG, snow, or build.'


def install_weather_help(tool):
    help_window = 'weatherStudioEmbeddedGuide'
    if cmds.window(help_window, exists=True):
        cmds.deleteUI(help_window)
    parent = tool.utilities
    frame = cmds.frameLayout(parent=parent, label='HELP  /  Learn the tool', collapsable=True,
                              collapse=True, marginWidth=10, marginHeight=8)
    cmds.columnLayout(adjustableColumn=True, rowSpacing=5)
    cmds.text(label='Hover over any setting for help. Search or choose a topic below.', align='left')
    current = cmds.text(label='', align='left')
    search = cmds.textField(placeholderText='Search: radius, fog, collision, PNG...')
    topic = cmds.optionMenuGrp(label='Help topic')
    for label in ['All topics']+list(weather_help_sections()):
        cmds.menuItem(label=label)
    body = cmds.scrollField(editable=False, wordWrap=True, height=230)

    def refresh(*_):
        name = tool.active_name()
        title, _, description, _ = tool.STYLES[name]
        cmds.text(current, edit=True, label='Current tab: '+title+' — '+description)
        query = cmds.textField(search, query=True, text=True)
        selected = cmds.optionMenuGrp(topic, query=True, value=True)
        cmds.scrollField(body, edit=True, text=search_weather_help(query, selected))

    def open_help(chosen='Start here', *_):
        cmds.frameLayout(frame, edit=True, collapse=False)
        cmds.textField(search, edit=True, text='')
        cmds.optionMenuGrp(topic, edit=True, value=chosen)
        refresh()

    def large_help(chosen='Start here', *_):
        if cmds.window(help_window, exists=True):
            cmds.deleteUI(help_window)
        window = cmds.window(help_window, title='Weather Studio | Built-in guide', widthHeight=(700, 600), sizeable=True)
        layout = cmds.formLayout()
        query_field = cmds.textField(placeholderText='Search controls, effects or problems...')
        topic_field = cmds.optionMenuGrp(label='Topic')
        for label in ['All topics']+list(weather_help_sections()):
            cmds.menuItem(label=label)
        text_area = cmds.scrollField(editable=False, wordWrap=True)
        cmds.formLayout(layout, edit=True,
            attachForm=[(query_field, 'top', 10), (query_field, 'left', 10), (query_field, 'right', 10),
                        (topic_field, 'left', 10), (topic_field, 'right', 10),
                        (text_area, 'left', 10), (text_area, 'right', 10), (text_area, 'bottom', 10)],
            attachControl=[(topic_field, 'top', 8, query_field), (text_area, 'top', 8, topic_field)])

        def update_large(*_):
            cmds.scrollField(text_area, edit=True, text=search_weather_help(
                cmds.textField(query_field, query=True, text=True),
                cmds.optionMenuGrp(topic_field, query=True, value=True)))

        cmds.textField(query_field, edit=True, textChangedCommand=update_large)
        cmds.optionMenuGrp(topic_field, edit=True, value=chosen, changeCommand=update_large)
        update_large()
        cmds.showWindow(window)

    cmds.textField(search, edit=True, textChangedCommand=refresh)
    cmds.optionMenuGrp(topic, edit=True, changeCommand=refresh)
    cmds.button(label='Show quick start', command=partial(open_help, 'Start here'))
    cmds.button(label='Explain the weather presets', command=partial(open_help, 'Weather recipes'))
    cmds.button(label='Help: nothing appears / other problems', command=partial(open_help, 'Troubleshooting'))
    cmds.button(label='Open a larger, resizable help window', command=partial(large_help, 'Start here'))
    # The main window creates its menu bar before showWindow. Do not try to
    # attach one retroactively: Maya can reject that after the window is shown.
    menu = cmds.menu(parent=tool.WINDOW, label='Help')
    for label in ('Start here', 'Weather recipes', 'Surfaces and accumulation', 'Viewport versus Arnold', 'Troubleshooting'):
        cmds.menuItem(parent=menu, label=label, command=partial(large_help, label))

    # Annotate the actual controls and their visible slider replacements.
    for name in tool.ui:
        for key, control in tool.preset_controls(name).items():
            entry = WEATHER_CONTROL_HELP.get(key)
            if entry:
                cmds.control(control, edit=True, annotation=entry[0]+': '+entry[1])
        for setting, control in getattr(tool, '_precision_sliders', {}).get(name, {}).items():
            entry = WEATHER_CONTROL_HELP.get('base.'+setting)
            if entry:
                cmds.control(control, edit=True, annotation=entry[0]+': '+entry[1])
    for control in cmds.lsUI(controls=True, long=True) or []:
        if not control.startswith(tool.WINDOW+'|'):
            continue
        kind = cmds.objectTypeUI(control)
        if kind not in ('button', 'checkBox'):
            continue
        factory = cmds.button if kind == 'button' else cmds.checkBox
        label = factory(control, query=True, label=True)
        for title, description in WEATHER_ACTION_HELP.items():
            if label.startswith(title):
                factory(control, edit=True, annotation=description)
                break
    previous = tool.update_active

    def tab_changed(*args):
        previous(*args)
        refresh()

    cmds.tabLayout(tool.tabs, edit=True, changeCommand=tab_changed)
    tool._help_frame = frame
    tool._help_refresh = refresh
    cmds.optionMenuGrp(topic, edit=True, value='Start here')
    refresh()


install_weather_help(weather_generator)
