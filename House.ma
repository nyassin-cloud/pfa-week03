//Maya ASCII 2027 scene
//Name: 1.ma
//Last modified: Mon, Sep 21, 2026 11:35:29 PM
//Codeset: 1252
requires maya "2027";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiPhysicalSky"
		 -nodeType "aiImagerDenoiserOidn" "mtoa" "5.6.2";
requires -nodeType "UsdDefaultSettings" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.37.0";
requires "stereoCamera" "10.0";
requires -nodeType "mia_physicalsun" -nodeType "mia_physicalsky" -dataType "byteArray"
		 "Mayatomr" "2016.0 - 3.13.1.10 ";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2027";
fileInfo "version" "2027";
fileInfo "cutIdentifier" "202607171511-52c21617ee";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26200)";
fileInfo "UUID" "B19F27BD-437A-CE0F-E0E2-BB9E4BE79883";
createNode transform -s -n "persp";
	rename -uid "7E47F5E2-4E9F-DDBE-59C8-67A3F095CE6F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.0076215845832139674 0.11903388002184656 0.47570635703584219 ;
	setAttr ".r" -type "double3" -3.3383527296030451 -0.99999999999989919 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C86E6647-417C-E39D-9A6A-E29DC10A16B2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".coi" 0.76190712131865701;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.50752340838914645 7.9604294445105204 -0.029387293632982647 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "DEFA143D-4433-E9E5-8847-E6835BE263E5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "75382155-48D7-A55F-C4B1-ACA711BF66E3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "0B55A47F-44B0-E637-1599-E0AE3CD928C4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DDE916EE-495E-B5F2-479C-CB875B610EA7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "879ECB0A-4F67-1915-2F11-0B847EA0F3CD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "536EFCCB-4C30-750B-39BD-F9B30FD02EF9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group7";
	rename -uid "5CA850A9-45B1-72F9-FA7B-3BA95316E5B2";
	setAttr ".t" -type "double3" -0.18611278945298707 -5.9976023200415103 -0.092843853017101255 ;
	setAttr ".s" -type "double3" 0.017816118837412992 0.017816118837412992 0.017816118837412992 ;
	setAttr ".rp" -type "double3" 0.19243070924654262 6.1441853018498991 0.09349152753680301 ;
	setAttr ".sp" -type "double3" 0.19243070924654262 6.1441853018498991 0.09349152753680301 ;
createNode transform -n "group1" -p "group7";
	rename -uid "984E90E6-4A8F-3525-0DFE-A3B2A1D47DDD";
	setAttr ".rp" -type "double3" 0 5.0541741078550615 0 ;
	setAttr ".sp" -type "double3" 0 5.0541741078550615 0 ;
createNode transform -n "pPipe1" -p "group1";
	rename -uid "11239C08-475A-D585-B551-2AA2461710A1";
	setAttr ".rp" -type "double3" -2.2878737505782323 3.2610357568714132 6.162704613533168 ;
	setAttr ".sp" -type "double3" -2.2878737505782323 3.2610357568714132 6.162704613533168 ;
createNode mesh -n "pPipeShape1" -p "pPipe1";
	rename -uid "75D84F81-4BD5-E1C6-2AE4-F4B9E1C2E0B4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -2.4155798 3.2950966 5.946516 
		-3.2231863 3.2950964 6.7465153 -2.4231865 0.12374368 5.9465156 -1.6155794 0.12374368 
		5.1465154 -2.4155798 3.0450966 6.3788934 -3.2231863 3.0450964 7.1788936 -2.4231865 
		-0.12625632 6.3788934 -1.6155794 -0.12625632 5.5788937 -2.3709898 3.2896862 6.3788934 
		-3.4677758 3.289686 7.3788934 -2.4677758 -0.37084609 6.3788929 -1.3709897 -0.37084591 
		5.3788934 -2.3709898 3.5396862 5.946516 -3.4677758 3.539686 6.9465156 -2.4677758 
		-0.12084611 5.9465156 -1.3709897 -0.12084592 4.946516;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 0 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 0
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 0 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1 1 -0.125 0
		 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe2" -p "group1";
	rename -uid "6BF55F78-47C9-148B-CE27-B797C62A174A";
	setAttr ".rp" -type "double3" 2.7820654515781529 6.5556021559611874 5.9613400486544652 ;
	setAttr ".sp" -type "double3" 2.7820654515781529 6.5556021559611874 5.9613400486544652 ;
createNode mesh -n "pPipeShape2" -p "pPipe2";
	rename -uid "DBE9F038-4192-A0E4-429D-798E1D35E0C2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  2.8305936 7.5291305 5.7738404 
		1.9335372 7.5291305 6.5738401 2.7335372 5.8320742 5.77384 3.6305935 5.8320742 4.9738402 
		2.8305936 7.2791305 6.1488404 1.9335372 7.2791305 6.9488401 2.7335372 5.5820742 6.14884 
		3.6305935 5.5820742 5.3488402 2.8427255 7.4912624 6.1488404 1.7214054 7.4912624 7.1488404 
		2.7214053 5.3699422 6.14884 3.8427255 5.3699422 5.1488404 2.8427255 7.7412624 5.7738404 
		1.7214054 7.7412624 6.7738404 2.7214053 5.6199422 5.77384 3.8427255 5.6199422 4.77384;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe3" -p "group1";
	rename -uid "2645CFC5-4146-01A3-A1D1-81A4466A953B";
	setAttr ".rp" -type "double3" -2.563190108207587 6.5556021559611874 5.9613400486544652 ;
	setAttr ".sp" -type "double3" -2.563190108207587 6.5556021559611874 5.9613400486544652 ;
createNode mesh -n "pPipeShape3" -p "pPipe3";
	rename -uid "18F7A36D-4D21-D48A-73E9-948B7318D358";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -2.514662 7.5291305 5.7738404 
		-3.4117181 7.5291305 6.5738401 -2.6117182 5.8320742 5.77384 -1.7146621 5.8320742 
		4.9738402 -2.514662 7.2791305 6.1488404 -3.4117181 7.2791305 6.9488401 -2.6117182 
		5.5820742 6.14884 -1.7146621 5.5820742 5.3488402 -2.5025299 7.4912624 6.1488404 -3.6238503 
		7.4912624 7.1488404 -2.6238501 5.3699422 6.14884 -1.5025299 5.3699422 5.1488404 -2.5025299 
		7.7412624 5.7738404 -3.6238503 7.7412624 6.7738404 -2.6238501 5.6199422 5.77384 -1.5025299 
		5.6199422 4.77384;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe4" -p "group1";
	rename -uid "26F02159-48CD-8440-7EEC-BB8558EEAF37";
	setAttr ".rp" -type "double3" 2.7820654515781529 2.0929556168518664 5.9613400486544652 ;
	setAttr ".sp" -type "double3" 2.7820654515781529 2.0929556168518664 5.9613400486544652 ;
createNode mesh -n "pPipeShape4" -p "pPipe4";
	rename -uid "6C712B73-46F7-EAAC-0B6F-5CB50EC2DD39";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  2.8305936 3.0664837 5.7738404 
		1.9335372 3.0664837 6.5738401 2.7335372 1.3694273 5.77384 3.6305935 1.3694277 4.9738402 
		2.8305936 2.8164837 6.1488404 1.9335372 2.8164837 6.9488401 2.7335372 1.1194274 6.14884 
		3.6305935 1.1194276 5.3488402 2.8427255 3.0286157 6.1488404 1.7214054 3.0286157 7.1488404 
		2.7214053 0.90729541 6.14884 3.8427255 0.90729558 5.1488404 2.8427255 3.2786157 5.7738404 
		1.7214054 3.2786157 6.7738404 2.7214053 1.1572953 5.77384 3.8427255 1.1572956 4.77384;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "group1";
	rename -uid "69CB966C-48BE-3993-542D-75A7DE2BF6D0";
	setAttr ".rp" -type "double3" -2.4201380728494857 1.6070257158398085 6.0655347364054206 ;
	setAttr ".sp" -type "double3" -2.4201380728494857 1.6070257158398085 6.0655347364054206 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "B9688567-4DD5-36E2-09A7-0A9A6653B61A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 3 "f[0:13]" "f[15:27]" "f[29:45]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[14]" "f[28]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 6 "f[2]" "f[7]" "f[11:12]" "f[17:18]" "f[23:25]" "f[36:38]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[3]" "f[13]" "f[19]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 6 "f[0]" "f[9]" "f[14:15]" "f[20:21]" "f[27:34]" "f[40:45]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 3 "f[5:6]" "f[22]" "f[35]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "f[4]" "f[8]" "f[26]" "f[39]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[10]" "f[16]";
	setAttr ".pv" -type "double2" 0.50218880176544189 0.11324794590473175 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 62 ".uvst[0].uvsp[0:61]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.22649589 0.125 0.22649589 0.375 0.52350414
		 0.625 0.52350414 0.875 0.22649589 0.625 0.22649589 0.42001843 0.25 0.42001843 0.5
		 0.42001843 0.52350414 0.42001843 0.75 0.42001843 0 0.42001843 1 0.42001843 0.22649589
		 0.58435917 0.25 0.58435917 0.5 0.58435917 0.52350414 0.58435917 0.75 0.58435917 0
		 0.58435917 1 0.58435917 0.22649589 0.375 0.08307483 0.125 0.083074823 0.375 0.66692519
		 0.42001843 0.66692519 0.58435917 0.66692519 0.625 0.66692519 0.875 0.083074823 0.625
		 0.08307483 0.58435917 0.08307483 0.42001843 0.08307483 0.42001843 0.22649589 0.42001843
		 0.08307483 0.58435917 0.08307483 0.58435917 0.22649589 0.42001843 0.071181148 0.375
		 0.071181148 0.125 0.071181141 0.375 0.67881882 0.42001843 0.67881882 0.58435917 0.67881882
		 0.625 0.67881882 0.875 0.071181141 0.625 0.071181148 0.58435917 0.071181148 0.58435917
		 0.071181148 0.42001843 0.071181148 0.42001843 0 0.58435917 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt[0:47]" -type "float3"  -2.4201381 1.6070257 6.0655346 
		-2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 
		6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 
		1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 
		-2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 
		6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 
		1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 
		-2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 
		6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 
		1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 
		-2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 
		6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 
		1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.3713579 1.6254506 6.0655346 
		-2.3713579 1.5886009 6.0655346 -2.4689183 1.6254506 6.0655346 -2.4689183 1.5886009 
		6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 
		1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 
		-2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 6.0655346 -2.4201381 1.6070257 
		6.0655346 -2.5183103 1.5230938 6.0655346 -2.3219659 1.5230938 6.0655346 -2.3219659 
		1.6909578 6.0655346 -2.5183101 1.6909578 6.0655346;
	setAttr -s 48 ".vt[0:47]"  -0.79190809 -1.56312776 0.068080448 0.79190809 -1.56312776 0.068080448
		 -0.79190809 1.56312776 0.068080448 0.79190809 1.56312776 0.068080448 -0.79190809 1.56312776 -0.068080448
		 0.79190809 1.56312776 -0.068080448 -0.79190809 -1.56312776 -0.068080448 0.79190809 -1.56312776 -0.068080448
		 -0.79190809 1.26920843 0.068080448 -0.79190809 1.26920843 -0.068080448 0.79190809 1.26920843 -0.068080448
		 0.79190809 1.26920843 0.068080448 -0.50670457 1.56312776 0.068080448 -0.50670457 1.56312776 -0.068080448
		 -0.50670457 1.26920843 -0.068080448 -0.50670457 -1.56312776 -0.068080448 -0.50670457 -1.56312776 0.068080448
		 -0.50670457 1.26920843 0.068080448 0.53443754 1.56312776 0.068080448 0.53443754 1.56312776 -0.068080448
		 0.53443754 1.26920843 -0.068080448 0.53443754 -1.56312776 -0.068080448 0.53443754 -1.56312776 0.068080448
		 0.53443754 1.26920843 0.068080448 -0.79190809 -0.52427518 0.068080448 -0.79190809 -0.52427518 -0.068080448
		 -0.50670457 -0.52427518 -0.068080448 0.53443754 -0.52427518 -0.068080448 0.79190809 -0.52427518 -0.068080448
		 0.79190809 -0.52427518 0.068080448 0.53443772 -0.52427518 0.068080448 -0.50670457 -0.52427518 0.068080448
		 -0.46135026 -0.44614732 -0.049048461 -0.46135026 1.19108033 -0.049048461 0.48908341 -0.44614732 -0.049048461
		 0.48908326 1.19108033 -0.049048461 -0.50670457 -0.673006 0.068080448 -0.79190809 -0.673006 0.068080448
		 -0.79190809 -0.673006 -0.068080448 -0.50670457 -0.673006 -0.068080448 0.53443754 -0.673006 -0.068080448
		 0.79190809 -0.673006 -0.068080448 0.79190809 -0.673006 0.068080448 0.53443772 -0.673006 0.068080448
		 0.53443772 -0.673006 -0.030950317 -0.50670457 -0.673006 -0.030950317 -0.50670457 -1.56312776 -0.030950317
		 0.53443754 -1.56312776 -0.030950317;
	setAttr -s 92 ".ed[0:91]"  0 16 0 2 12 0 4 13 0 6 15 0 0 37 0 1 42 0
		 2 4 0 3 5 0 4 9 0 5 10 0 6 0 0 7 1 0 8 2 0 9 25 0 8 9 1 10 28 0 9 14 1 11 3 0 10 11 1
		 11 23 1 12 18 0 13 19 0 12 13 1 14 20 1 13 14 1 15 21 0 14 26 1 16 22 0 15 16 1 17 8 1
		 16 36 0 17 12 1 18 3 0 19 5 0 18 19 1 20 10 1 19 20 1 21 7 0 20 27 1 22 1 0 21 22 1
		 23 17 0 22 43 0 23 18 1 24 8 0 25 38 0 24 25 1 26 39 1 25 26 1 27 40 1 26 27 1 28 41 0
		 27 28 1 29 11 0 28 29 1 30 23 0 29 30 1 31 17 0 30 31 0 31 24 1 31 32 0 17 33 0 32 33 0
		 30 34 0 34 32 0 23 35 0 34 35 0 35 33 0 36 31 1 37 24 0 36 37 1 38 6 0 37 38 1 39 15 1
		 38 39 1 40 21 1 39 40 1 41 7 0 40 41 1 42 29 0 41 42 1 43 30 1 42 43 1 43 36 0 43 44 0
		 36 45 0 44 45 0 16 46 0 46 45 0 22 47 0 46 47 0 47 44 0;
	setAttr -s 46 -ch 184 ".fc[0:45]" -type "polyFaces" 
		f 4 0 30 70 -5
		mu 0 4 0 24 48 49
		f 4 1 22 -3 -7
		mu 0 4 2 20 21 4
		f 4 74 73 -4 -72
		mu 0 4 51 52 23 6
		f 4 3 28 -1 -11
		mu 0 4 6 23 25 8
		f 4 -12 -78 80 -6
		mu 0 4 1 10 55 56
		f 4 10 4 72 71
		mu 0 4 12 0 49 50
		f 4 -15 12 6 8
		mu 0 4 15 14 2 13
		f 4 2 24 -17 -9
		mu 0 4 4 21 22 16
		f 4 -19 -10 -8 -18
		mu 0 4 19 18 11 3
		f 4 -30 31 -2 -13
		mu 0 4 14 26 20 2
		f 4 20 34 -22 -23
		mu 0 4 20 27 28 21
		f 4 -25 21 36 -24
		mu 0 4 22 21 28 29
		f 4 -74 76 75 -26
		mu 0 4 23 52 53 30
		f 4 -29 25 40 -28
		mu 0 4 25 23 30 32
		f 4 86 -89 90 91
		mu 0 4 58 59 60 61
		f 4 -32 -42 43 -21
		mu 0 4 20 26 33 27
		f 4 32 7 -34 -35
		mu 0 4 27 3 5 28
		f 4 -37 33 9 -36
		mu 0 4 29 28 5 17
		f 4 -76 78 77 -38
		mu 0 4 30 53 54 7
		f 4 -41 37 11 -40
		mu 0 4 32 30 7 9
		f 4 -43 39 5 82
		mu 0 4 57 31 1 56
		f 4 -44 -20 17 -33
		mu 0 4 27 33 19 3
		f 4 -47 44 14 13
		mu 0 4 35 34 14 15
		f 4 16 26 -49 -14
		mu 0 4 16 22 37 36
		f 4 -51 -27 23 38
		mu 0 4 38 37 22 29
		f 4 -53 -39 35 15
		mu 0 4 39 38 29 17
		f 4 -55 -16 18 -54
		mu 0 4 41 40 18 19
		f 4 -56 -57 53 19
		mu 0 4 33 42 41 19
		f 4 -63 -65 66 67
		mu 0 4 44 45 46 47
		f 4 -60 57 29 -45
		mu 0 4 34 43 26 14
		f 4 -58 60 62 -62
		mu 0 4 26 43 45 44
		f 4 -59 63 64 -61
		mu 0 4 43 42 46 45
		f 4 55 65 -67 -64
		mu 0 4 42 33 47 46
		f 4 41 61 -68 -66
		mu 0 4 33 26 44 47
		f 4 -71 68 59 -70
		mu 0 4 49 48 43 34
		f 4 -73 69 46 45
		mu 0 4 50 49 34 35
		f 4 48 47 -75 -46
		mu 0 4 36 37 52 51
		f 4 -77 -48 50 49
		mu 0 4 53 52 37 38
		f 4 -79 -50 52 51
		mu 0 4 54 53 38 39
		f 4 -81 -52 54 -80
		mu 0 4 56 55 40 41
		f 4 -82 -83 79 56
		mu 0 4 42 57 56 41
		f 4 -69 -84 81 58
		mu 0 4 43 48 57 42
		f 4 83 85 -87 -85
		mu 0 4 57 48 59 58
		f 4 -31 87 88 -86
		mu 0 4 48 24 60 59
		f 4 27 89 -91 -88
		mu 0 4 24 31 61 60
		f 4 42 84 -92 -90
		mu 0 4 31 57 58 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "group1";
	rename -uid "C6CC3E06-451B-945B-DFB0-1EB674E15C04";
	setAttr ".rp" -type "double3" 0 -0.14663980298127402 8.2900369766794295 ;
	setAttr ".sp" -type "double3" 0 -0.14663980298127402 8.2900369766794295 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "6841C233-4DAB-9BDA-0E01-3EAA22D22FA1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -0.14663981 8.2900372 0 
		-0.14663981 8.2900372 0 -0.14663981 8.2900372 0 -0.14663981 8.2900372 0 -0.14663981 
		8.2900372 0 -0.14663981 8.2900372 0 -0.14663981 8.2900372 0 -0.14663981 8.2900372;
	setAttr -s 8 ".vt[0:7]"  -5 -0.15000001 2.5 5 -0.15000001 2.5 -5 0.15000001 2.5
		 5 0.15000001 2.5 -5 0.15000001 -2.5 5 0.15000001 -2.5 -5 -0.15000001 -2.5 5 -0.15000001 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4" -p "group1";
	rename -uid "56D16F68-4463-FE29-2C6B-9E93EB0E1E74";
	setAttr ".rp" -type "double3" 0 3.9934791631612674 8.2900369766794295 ;
	setAttr ".sp" -type "double3" 0 3.9934791631612674 8.2900369766794295 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "5CD48ADC-43D2-6177-6367-91A5041D5B89";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 3.9934793 8.2900372 0 3.9934793 
		8.2900372 0 3.9934793 8.2900372 0 3.9934793 8.2900372 0 3.9934793 8.2900372 0 3.9934793 
		8.2900372 0 3.9934793 8.2900372 0 3.9934793 8.2900372 3.3132143 2.9894214 6.63343 
		-3.3132143 2.9894214 6.63343 -3.3132143 2.9894214 9.9466438 3.3132143 2.9894214 9.9466438;
	setAttr -s 12 ".vt[0:11]"  -5 -0.15000001 2.49999928 5 -0.15000001 2.49999928
		 -5 0.15000001 2.49999928 5 0.15000001 2.49999928 -5 0.15000001 -2.5 5 0.15000001 -2.5
		 -5 -0.15000001 -2.5 5 -0.15000001 -2.5 -5 1.64954257 2.49999928 5 1.64954257 2.49999928
		 5 1.64954257 -2.5 -5 1.64954257 -2.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 1
		 3 5 1 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "group1";
	rename -uid "B4D61C89-482F-CDD4-77C8-87BDDEA2CD31";
	setAttr ".rp" -type "double3" -4.8444507384811049 1.9206026709913917 10.63668033481007 ;
	setAttr ".sp" -type "double3" -4.8444507384811049 1.9206026709913917 10.63668033481007 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "FDD51E82-47E6-22BF-1753-8DBDF7C44F10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.8444505 1.9206027 10.636681 
		-4.8444505 1.9206027 10.636681 -4.8444505 1.9206027 10.636681 -4.8444505 1.9206027 
		10.636681 -4.8444505 1.9206027 10.636681 -4.8444505 1.9206027 10.636681 -4.8444505 
		1.9206027 10.636681 -4.8444505 1.9206027 10.636681;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "group1";
	rename -uid "56367B79-4E38-5E71-F60A-FB9E51BCE5FE";
	setAttr ".rp" -type "double3" -0.26846442909169915 1.9206026709913917 10.63668033481007 ;
	setAttr ".sp" -type "double3" -0.26846442909169915 1.9206026709913917 10.63668033481007 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "439BAAEC-4DB7-F5E1-CA9D-A2813FDC7A02";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.26846445 1.9206027 10.636681 
		-0.26846445 1.9206027 10.636681 -0.26846445 1.9206027 10.636681 -0.26846445 1.9206027 
		10.636681 -0.26846445 1.9206027 10.636681 -0.26846445 1.9206027 10.636681 -0.26846445 
		1.9206027 10.636681 -0.26846445 1.9206027 10.636681;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7" -p "group1";
	rename -uid "30BCBA91-4C9A-B6C6-D83F-4E9CAFDE51C8";
	setAttr ".rp" -type "double3" 4.8378761666033112 1.9206026709913917 10.63668033481007 ;
	setAttr ".sp" -type "double3" 4.8378761666033112 1.9206026709913917 10.63668033481007 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "18C2E3DD-4DBF-9F24-AE57-03A4F675995D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.8378763 1.9206027 10.636681 
		4.8378763 1.9206027 10.636681 4.8378763 1.9206027 10.636681 4.8378763 1.9206027 10.636681 
		4.8378763 1.9206027 10.636681 4.8378763 1.9206027 10.636681 4.8378763 1.9206027 10.636681 
		4.8378763 1.9206027 10.636681;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane1" -p "group1";
	rename -uid "4EE663FF-48AD-86E0-A512-80841B6AE44F";
	setAttr ".rp" -type "double3" 0 -0.19802293425073283 0 ;
	setAttr ".sp" -type "double3" 0 -0.19802293425073283 0 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "A5585950-47E7-8C19-6557-B392AB953441";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[210:219]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 10 "e[0]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 10 "e[1]" "e[22]" "e[43]" "e[64]" "e[85]" "e[106]" "e[127]" "e[148]" "e[169]" "e[190]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 10 "e[20]" "e[41]" "e[62]" "e[83]" "e[104]" "e[125]" "e[146]" "e[167]" "e[188]" "e[209]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 28 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[41]" "e[43]" "e[62]" "e[64]" "e[83]" "e[85]" "e[104]" "e[106]" "e[125]" "e[127]" "e[146]" "e[148]" "e[167]" "e[169]" "e[188]" "e[190]" "e[209:219]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 282 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.1
		 0.1 0.1 0.2 0.1 0.30000001 0.1 0.40000001 0.1 0.5 0.1 0.60000002 0.1 0.69999999 0.1
		 0.80000001 0.1 0.90000004 0.1 1 0.1 0 0.2 0.1 0.2 0.2 0.2 0.30000001 0.2 0.40000001
		 0.2 0.5 0.2 0.60000002 0.2 0.69999999 0.2 0.80000001 0.2 0.90000004 0.2 1 0.2 0 0.30000001
		 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000001 0.30000001 0.5 0.30000001
		 0.60000002 0.30000001 0.69999999 0.30000001 0.80000001 0.30000001 0.90000004 0.30000001
		 1 0.30000001 0 0.40000001 0.1 0.40000001 0.2 0.40000001 0.30000001 0.40000001 0.40000001
		 0.40000001 0.5 0.40000001 0.60000002 0.40000001 0.69999999 0.40000001 0.80000001
		 0.40000001 0.90000004 0.40000001 1 0.40000001 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5
		 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.69999999 0.5 0.80000001 0.5 0.90000004 0.5
		 1 0.5 0 0.60000002 0.1 0.60000002 0.2 0.60000002 0.30000001 0.60000002 0.40000001
		 0.60000002 0.5 0.60000002 0.60000002 0.60000002 0.69999999 0.60000002 0.80000001
		 0.60000002 0.90000004 0.60000002 1 0.60000002 0 0.69999999 0.1 0.69999999 0.2 0.69999999
		 0.30000001 0.69999999 0.40000001 0.69999999 0.5 0.69999999 0.60000002 0.69999999
		 0.69999999 0.69999999 0.80000001 0.69999999 0.90000004 0.69999999 1 0.69999999 0
		 0.80000001 0.1 0.80000001 0.2 0.80000001 0.30000001 0.80000001 0.40000001 0.80000001
		 0.5 0.80000001 0.60000002 0.80000001 0.69999999 0.80000001 0.80000001 0.80000001
		 0.90000004 0.80000001 1 0.80000001 0 0.90000004 0.1 0.90000004 0.2 0.90000004 0.30000001
		 0.90000004 0.40000001 0.90000004 0.5 0.90000004 0.60000002 0.90000004 0.69999999
		 0.90000004 0.80000001 0.90000004 0.90000004 0.90000004 1 0.90000004 0 1 0.1 1 0.2
		 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004
		 1 1 1 0 0 0.1 0 0.1 0.1 0 0.1 0.2 0 0.2 0.1 0.30000001 0 0.30000001 0.1 0.40000001
		 0 0.40000001 0.1 0.5 0 0.5 0.1 0.60000002 0 0.60000002 0.1 0.69999999 0 0.69999999
		 0.1 0.80000001 0 0.80000001 0.1 0.90000004 0 0.90000004 0.1 1 0 1 0.1 0.1 0.2 0 0.2
		 0.2 0.2 0.30000001 0.2 0.40000001 0.2 0.5 0.2 0.60000002 0.2 0.69999999 0.2 0.80000001
		 0.2 0.90000004 0.2 1 0.2 0.1 0.30000001 0 0.30000001 0.2 0.30000001 0.30000001 0.30000001
		 0.40000001 0.30000001 0.5 0.30000001 0.60000002 0.30000001 0.69999999 0.30000001
		 0.80000001 0.30000001 0.90000004 0.30000001 1 0.30000001 0.1 0.40000001 0 0.40000001
		 0.2 0.40000001 0.30000001 0.40000001 0.40000001 0.40000001 0.5 0.40000001 0.60000002
		 0.40000001 0.69999999 0.40000001 0.80000001 0.40000001 0.90000004 0.40000001 1 0.40000001
		 0.1 0.5 0 0.5 0.2 0.5 0.30000001 0.5 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.69999999
		 0.5 0.80000001 0.5 0.90000004 0.5 1 0.5 0.1 0.60000002 0 0.60000002 0.2 0.60000002
		 0.30000001 0.60000002 0.40000001 0.60000002 0.5 0.60000002 0.60000002 0.60000002
		 0.69999999 0.60000002 0.80000001 0.60000002 0.90000004 0.60000002 1 0.60000002 0.1
		 0.69999999 0 0.69999999 0.2 0.69999999 0.30000001 0.69999999 0.40000001 0.69999999
		 0.5 0.69999999 0.60000002 0.69999999 0.69999999 0.69999999 0.80000001 0.69999999
		 0.90000004 0.69999999 1 0.69999999 0.1 0.80000001 0 0.80000001 0.2 0.80000001 0.30000001
		 0.80000001 0.40000001 0.80000001 0.5 0.80000001 0.60000002 0.80000001 0.69999999
		 0.80000001 0.80000001 0.80000001 0.90000004 0.80000001 1 0.80000001 0.1 0.90000004
		 0 0.90000004 0.2 0.90000004 0.30000001 0.90000004 0.40000001 0.90000004 0.5 0.90000004
		 0.60000002 0.90000004 0.69999999 0.90000004 0.80000001 0.90000004 0.90000004 0.90000004
		 1 0.90000004 0.1 1 0 1 0.2 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999
		 1 0.80000001 1 0.90000004 1 1 1 0 0 0.1 0 0 0.1 0.2 0 0.30000001 0 0.40000001 0 0.5
		 0 0.60000002 0;
	setAttr ".uvst[0].uvsp[250:281]" 0.69999999 0 0.80000001 0 0.90000004 0 1 0
		 1 0.1 0 0.2 1 0.2 0 0.30000001 1 0.30000001 0 0.40000001 1 0.40000001 0 0.5 1 0.5
		 0 0.60000002 1 0.60000002 0 0.69999999 1 0.69999999 0 0.80000001 1 0.80000001 0 0.90000004
		 1 0.90000004 0.1 1 0 1 0.2 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999
		 1 0.80000001 1 0.90000004 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 242 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -2.6145291 -0.19802293 2.6145291 -2.0916233 
		-0.19802293 2.6145291 -1.5687172 -0.19802293 2.6145291 -1.0458117 -0.19802293 2.6145291 
		-0.52290583 -0.19802293 2.6145291 0 -0.19802293 2.6145291 0.52290583 -0.19802293 
		2.6145291 1.0458117 -0.19802293 2.6145291 1.5687172 -0.19802293 2.6145291 2.0916233 
		-0.19802293 2.6145291 2.6145291 -0.19802293 2.6145291 -2.6145291 -0.19802293 2.0916233 
		-2.0916233 -0.19802293 2.0916233 -1.5687172 -0.19802293 2.0916233 -1.0458117 -0.19802293 
		2.0916233 -0.52290583 -0.19802293 2.0916233 0 -0.19802293 2.0916233 0.52290583 -0.19802293 
		2.0916233 1.0458117 -0.19802293 2.0916233 1.5687172 -0.19802293 2.0916233 2.0916233 
		-0.19802293 2.0916233 2.6145291 -0.19802293 2.0916233 -2.6145291 -0.19802293 1.5687172 
		-2.0916233 -0.19802293 1.5687172 -1.5687172 -0.19802293 1.5687172 -1.0458117 -0.19802293 
		1.5687172 -0.52290583 -0.19802293 1.5687172 0 -0.19802293 1.5687172 0.52290583 -0.19802293 
		1.5687172 1.0458117 -0.19802293 1.5687172 1.5687172 -0.19802293 1.5687172 2.0916233 
		-0.19802293 1.5687172 2.6145291 -0.19802293 1.5687172 -2.6145291 -0.19802293 1.0458117 
		-2.0916233 -0.19802293 1.0458117 -1.5687172 -0.19802293 1.0458117 -1.0458117 -0.19802293 
		1.0458117 -0.52290583 -0.19802293 1.0458117 0 -0.19802293 1.0458117 0.52290583 -0.19802293 
		1.0458117 1.0458117 -0.19802293 1.0458117 1.5687172 -0.19802293 1.0458117 2.0916233 
		-0.19802293 1.0458117 2.6145291 -0.19802293 1.0458117 -2.6145291 -0.19802293 0.52290583 
		-2.0916233 -0.19802293 0.52290583 -1.5687172 -0.19802293 0.52290583 -1.0458117 -0.19802293 
		0.52290583 -0.52290583 -0.19802293 0.52290583 0 -0.19802293 0.52290583 0.52290583 
		-0.19802293 0.52290583 1.0458117 -0.19802293 0.52290583 1.5687172 -0.19802293 0.52290583 
		2.0916233 -0.19802293 0.52290583 2.6145291 -0.19802293 0.52290583 -2.6145291 -0.19802293 
		0 -2.0916233 -0.19802293 0 -1.5687172 -0.19802293 0 -1.0458117 -0.19802293 0 -0.52290583 
		-0.19802293 0 0 -0.19802293 0 0.52290583 -0.19802293 0 1.0458117 -0.19802293 0 1.5687172 
		-0.19802293 0 2.0916233 -0.19802293 0 2.6145291 -0.19802293 0 -2.6145291 -0.19802293 
		-0.52290583 -2.0916233 -0.19802293 -0.52290583 -1.5687172 -0.19802293 -0.52290583 
		-1.0458117 -0.19802293 -0.52290583 -0.52290583 -0.19802293 -0.52290583 0 -0.19802293 
		-0.52290583 0.52290583 -0.19802293 -0.52290583 1.0458117 -0.19802293 -0.52290583 
		1.5687172 -0.19802293 -0.52290583 2.0916233 -0.19802293 -0.52290583 2.6145291 -0.19802293 
		-0.52290583 -2.6145291 -0.19802293 -1.0458117 -2.0916233 -0.19802293 -1.0458117 -1.5687172 
		-0.19802293 -1.0458117 -1.0458117 -0.19802293 -1.0458117 -0.52290583 -0.19802293 
		-1.0458117 0 -0.19802293 -1.0458117 0.52290583 -0.19802293 -1.0458117 1.0458117 -0.19802293 
		-1.0458117 1.5687172 -0.19802293 -1.0458117 2.0916233 -0.19802293 -1.0458117 2.6145291 
		-0.19802293 -1.0458117 -2.6145291 -0.19802293 -1.5687172 -2.0916233 -0.19802293 -1.5687172 
		-1.5687172 -0.19802293 -1.5687172 -1.0458117 -0.19802293 -1.5687172 -0.52290583 -0.19802293 
		-1.5687172 0 -0.19802293 -1.5687172 0.52290583 -0.19802293 -1.5687172 1.0458117 -0.19802293 
		-1.5687172 1.5687172 -0.19802293 -1.5687172 2.0916233 -0.19802293 -1.5687172 2.6145291 
		-0.19802293 -1.5687172 -2.6145291 -0.19802293 -2.0916233 -2.0916233 -0.19802293 -2.0916233 
		-1.5687172 -0.19802293 -2.0916233 -1.0458117 -0.19802293 -2.0916233 -0.52290583 -0.19802293 
		-2.0916233 0 -0.19802293 -2.0916233 0.52290583 -0.19802293 -2.0916233 1.0458117 -0.19802293 
		-2.0916233 1.5687172 -0.19802293 -2.0916233 2.0916233 -0.19802293 -2.0916233 2.6145291 
		-0.19802293 -2.0916233 -2.6145291 -0.19802293 -2.6145291 -2.0916233 -0.19802293 -2.6145291 
		-1.5687172 -0.19802293 -2.6145291 -1.0458117 -0.19802293 -2.6145291 -0.52290583 -0.19802293 
		-2.6145291 0 -0.19802293 -2.6145291 0.52290583 -0.19802293 -2.6145291 1.0458117 -0.19802293 
		-2.6145291 1.5687172 -0.19802293 -2.6145291 2.0916233 -0.19802293 -2.6145291 2.6145291 
		-0.19802293 -2.6145291 -2.6145291 -0.49488902 2.6145291 -2.0916233 -0.49488902 2.6145291 
		-2.0916233 -0.49488902 2.0916233 -2.6145291 -0.49488902 2.0916233 -1.5687172 -0.49488902 
		2.6145291 -1.5687172 -0.49488902 2.0916233 -1.0458117 -0.49488902 2.6145291 -1.0458117 
		-0.49488902 2.0916233 -0.52290583 -0.49488902 2.6145291 -0.52290583 -0.49488902 2.0916233 
		0 -0.49488902 2.6145291 0 -0.49488902 2.0916233 0.52290583 -0.49488902 2.6145291 
		0.52290583 -0.49488902 2.0916233 1.0458117 -0.49488902 2.6145291 1.0458117 -0.49488902 
		2.0916233 1.5687172 -0.49488902 2.6145291 1.5687172 -0.49488902 2.0916233 2.0916233 
		-0.49488902 2.6145291 2.0916233 -0.49488902 2.0916233 2.6145291 -0.49488902 2.6145291 
		2.6145291 -0.49488902 2.0916233 -2.0916233 -0.49488902 1.5687172 -2.6145291 -0.49488902 
		1.5687172 -1.5687172 -0.49488902 1.5687172 -1.0458117 -0.49488902 1.5687172 -0.52290583 
		-0.49488902 1.5687172 0 -0.49488902 1.5687172 0.52290583 -0.49488902 1.5687172 1.0458117 
		-0.49488902 1.5687172 1.5687172 -0.49488902 1.5687172 2.0916233 -0.49488902 1.5687172 
		2.6145291 -0.49488902 1.5687172 -2.0916233 -0.49488902 1.0458117 -2.6145291 -0.49488902 
		1.0458117 -1.5687172 -0.49488902 1.0458117 -1.0458117 -0.49488902 1.0458117 -0.52290583 
		-0.49488902 1.0458117 0 -0.49488902 1.0458117 0.52290583 -0.49488902 1.0458117 1.0458117 
		-0.49488902 1.0458117 1.5687172 -0.49488902 1.0458117 2.0916233 -0.49488902 1.0458117 
		2.6145291 -0.49488902 1.0458117 -2.0916233 -0.49488902 0.52290583;
	setAttr ".pt[166:241]" -2.6145291 -0.49488902 0.52290583 -1.5687172 -0.49488902 
		0.52290583 -1.0458117 -0.49488902 0.52290583 -0.52290583 -0.49488902 0.52290583 0 
		-0.49488902 0.52290583 0.52290583 -0.49488902 0.52290583 1.0458117 -0.49488902 0.52290583 
		1.5687172 -0.49488902 0.52290583 2.0916233 -0.49488902 0.52290583 2.6145291 -0.49488902 
		0.52290583 -2.0916233 -0.49488902 0 -2.6145291 -0.49488902 0 -1.5687172 -0.49488902 
		0 -1.0458117 -0.49488902 0 -0.52290583 -0.49488902 0 0 -0.49488902 0 0.52290583 -0.49488902 
		0 1.0458117 -0.49488902 0 1.5687172 -0.49488902 0 2.0916233 -0.49488902 0 2.6145291 
		-0.49488902 0 -2.0916233 -0.49488902 -0.52290583 -2.6145291 -0.49488902 -0.52290583 
		-1.5687172 -0.49488902 -0.52290583 -1.0458117 -0.49488902 -0.52290583 -0.52290583 
		-0.49488902 -0.52290583 0 -0.49488902 -0.52290583 0.52290583 -0.49488902 -0.52290583 
		1.0458117 -0.49488902 -0.52290583 1.5687172 -0.49488902 -0.52290583 2.0916233 -0.49488902 
		-0.52290583 2.6145291 -0.49488902 -0.52290583 -2.0916233 -0.49488902 -1.0458117 -2.6145291 
		-0.49488902 -1.0458117 -1.5687172 -0.49488902 -1.0458117 -1.0458117 -0.49488902 -1.0458117 
		-0.52290583 -0.49488902 -1.0458117 0 -0.49488902 -1.0458117 0.52290583 -0.49488902 
		-1.0458117 1.0458117 -0.49488902 -1.0458117 1.5687172 -0.49488902 -1.0458117 2.0916233 
		-0.49488902 -1.0458117 2.6145291 -0.49488902 -1.0458117 -2.0916233 -0.49488902 -1.5687172 
		-2.6145291 -0.49488902 -1.5687172 -1.5687172 -0.49488902 -1.5687172 -1.0458117 -0.49488902 
		-1.5687172 -0.52290583 -0.49488902 -1.5687172 0 -0.49488902 -1.5687172 0.52290583 
		-0.49488902 -1.5687172 1.0458117 -0.49488902 -1.5687172 1.5687172 -0.49488902 -1.5687172 
		2.0916233 -0.49488902 -1.5687172 2.6145291 -0.49488902 -1.5687172 -2.0916233 -0.49488902 
		-2.0916233 -2.6145291 -0.49488902 -2.0916233 -1.5687172 -0.49488902 -2.0916233 -1.0458117 
		-0.49488902 -2.0916233 -0.52290583 -0.49488902 -2.0916233 0 -0.49488902 -2.0916233 
		0.52290583 -0.49488902 -2.0916233 1.0458117 -0.49488902 -2.0916233 1.5687172 -0.49488902 
		-2.0916233 2.0916233 -0.49488902 -2.0916233 2.6145291 -0.49488902 -2.0916233 -2.0916233 
		-0.49488902 -2.6145291 -2.6145291 -0.49488902 -2.6145291 -1.5687172 -0.49488902 -2.6145291 
		-1.0458117 -0.49488902 -2.6145291 -0.52290583 -0.49488902 -2.6145291 0 -0.49488902 
		-2.6145291 0.52290583 -0.49488902 -2.6145291 1.0458117 -0.49488902 -2.6145291 1.5687172 
		-0.49488902 -2.6145291 2.0916233 -0.49488902 -2.6145291 2.6145291 -0.49488902 -2.6145291;
	setAttr -s 242 ".vt";
	setAttr ".vt[0:165]"  -12 0 12 -9.60000038 0 12 -7.19999933 0 12 -4.80000019 0 12
		 -2.4000001 0 12 0 0 12 2.4000001 0 12 4.80000019 0 12 7.19999933 0 12 9.60000038 0 12
		 12 0 12 -12 0 9.60000038 -9.60000038 0 9.60000038 -7.19999933 0 9.60000038 -4.80000019 0 9.60000038
		 -2.4000001 0 9.60000038 0 0 9.60000038 2.4000001 0 9.60000038 4.80000019 0 9.60000038
		 7.19999933 0 9.60000038 9.60000038 0 9.60000038 12 0 9.60000038 -12 0 7.19999933
		 -9.60000038 0 7.19999933 -7.19999933 0 7.19999933 -4.80000019 0 7.19999933 -2.4000001 0 7.19999933
		 0 0 7.19999933 2.4000001 0 7.19999933 4.80000019 0 7.19999933 7.19999933 0 7.19999933
		 9.60000038 0 7.19999933 12 0 7.19999933 -12 0 4.80000019 -9.60000038 0 4.80000019
		 -7.19999933 0 4.80000019 -4.80000019 0 4.80000019 -2.4000001 0 4.80000019 0 0 4.80000019
		 2.4000001 0 4.80000019 4.80000019 0 4.80000019 7.19999933 0 4.80000019 9.60000038 0 4.80000019
		 12 0 4.80000019 -12 0 2.4000001 -9.60000038 0 2.4000001 -7.19999933 0 2.4000001 -4.80000019 0 2.4000001
		 -2.4000001 0 2.4000001 0 0 2.4000001 2.4000001 0 2.4000001 4.80000019 0 2.4000001
		 7.19999933 0 2.4000001 9.60000038 0 2.4000001 12 0 2.4000001 -12 0 0 -9.60000038 0 0
		 -7.19999933 0 0 -4.80000019 0 0 -2.4000001 0 0 0 0 0 2.4000001 0 0 4.80000019 0 0
		 7.19999933 0 0 9.60000038 0 0 12 0 0 -12 0 -2.4000001 -9.60000038 0 -2.4000001 -7.19999933 0 -2.4000001
		 -4.80000019 0 -2.4000001 -2.4000001 0 -2.4000001 0 0 -2.4000001 2.4000001 0 -2.4000001
		 4.80000019 0 -2.4000001 7.19999933 0 -2.4000001 9.60000038 0 -2.4000001 12 0 -2.4000001
		 -12 0 -4.80000019 -9.60000038 0 -4.80000019 -7.19999933 0 -4.80000019 -4.80000019 0 -4.80000019
		 -2.4000001 0 -4.80000019 0 0 -4.80000019 2.4000001 0 -4.80000019 4.80000019 0 -4.80000019
		 7.19999933 0 -4.80000019 9.60000038 0 -4.80000019 12 0 -4.80000019 -12 0 -7.19999933
		 -9.60000038 0 -7.19999933 -7.19999933 0 -7.19999933 -4.80000019 0 -7.19999933 -2.4000001 0 -7.19999933
		 0 0 -7.19999933 2.4000001 0 -7.19999933 4.80000019 0 -7.19999933 7.19999933 0 -7.19999933
		 9.60000038 0 -7.19999933 12 0 -7.19999933 -12 0 -9.60000038 -9.60000038 0 -9.60000038
		 -7.19999933 0 -9.60000038 -4.80000019 0 -9.60000038 -2.4000001 0 -9.60000038 0 0 -9.60000038
		 2.4000001 0 -9.60000038 4.80000019 0 -9.60000038 7.19999933 0 -9.60000038 9.60000038 0 -9.60000038
		 12 0 -9.60000038 -12 0 -12 -9.60000038 0 -12 -7.19999933 0 -12 -4.80000019 0 -12
		 -2.4000001 0 -12 0 0 -12 2.4000001 0 -12 4.80000019 0 -12 7.19999933 0 -12 9.60000038 0 -12
		 12 0 -12 -12 -1.36253726 12 -9.60000038 -1.36253726 12 -9.60000038 -1.36253726 9.60000038
		 -12 -1.36253726 9.60000038 -7.19999933 -1.36253726 12 -7.19999933 -1.36253726 9.60000038
		 -4.80000019 -1.36253726 12 -4.80000019 -1.36253726 9.60000038 -2.4000001 -1.36253726 12
		 -2.4000001 -1.36253726 9.60000038 0 -1.36253726 12 0 -1.36253726 9.60000038 2.4000001 -1.36253726 12
		 2.4000001 -1.36253726 9.60000038 4.80000019 -1.36253726 12 4.80000019 -1.36253726 9.60000038
		 7.19999933 -1.36253726 12 7.19999933 -1.36253726 9.60000038 9.60000038 -1.36253726 12
		 9.60000038 -1.36253726 9.60000038 12 -1.36253726 12 12 -1.36253726 9.60000038 -9.60000038 -1.36253726 7.19999933
		 -12 -1.36253726 7.19999933 -7.19999933 -1.36253726 7.19999933 -4.80000019 -1.36253726 7.19999933
		 -2.4000001 -1.36253726 7.19999933 0 -1.36253726 7.19999933 2.4000001 -1.36253726 7.19999933
		 4.80000019 -1.36253726 7.19999933 7.19999933 -1.36253726 7.19999933 9.60000038 -1.36253726 7.19999933
		 12 -1.36253726 7.19999933 -9.60000038 -1.36253726 4.80000019 -12 -1.36253726 4.80000019
		 -7.19999933 -1.36253726 4.80000019 -4.80000019 -1.36253726 4.80000019 -2.4000001 -1.36253726 4.80000019
		 0 -1.36253726 4.80000019 2.4000001 -1.36253726 4.80000019 4.80000019 -1.36253726 4.80000019
		 7.19999933 -1.36253726 4.80000019 9.60000038 -1.36253726 4.80000019 12 -1.36253726 4.80000019
		 -9.60000038 -1.36253726 2.4000001;
	setAttr ".vt[166:241]" -12 -1.36253726 2.4000001 -7.19999933 -1.36253726 2.4000001
		 -4.80000019 -1.36253726 2.4000001 -2.4000001 -1.36253726 2.4000001 0 -1.36253726 2.4000001
		 2.4000001 -1.36253726 2.4000001 4.80000019 -1.36253726 2.4000001 7.19999933 -1.36253726 2.4000001
		 9.60000038 -1.36253726 2.4000001 12 -1.36253726 2.4000001 -9.60000038 -1.36253726 0
		 -12 -1.36253726 0 -7.19999933 -1.36253726 0 -4.80000019 -1.36253726 0 -2.4000001 -1.36253726 0
		 0 -1.36253726 0 2.4000001 -1.36253726 0 4.80000019 -1.36253726 0 7.19999933 -1.36253726 0
		 9.60000038 -1.36253726 0 12 -1.36253726 0 -9.60000038 -1.36253726 -2.4000001 -12 -1.36253726 -2.4000001
		 -7.19999933 -1.36253726 -2.4000001 -4.80000019 -1.36253726 -2.4000001 -2.4000001 -1.36253726 -2.4000001
		 0 -1.36253726 -2.4000001 2.4000001 -1.36253726 -2.4000001 4.80000019 -1.36253726 -2.4000001
		 7.19999933 -1.36253726 -2.4000001 9.60000038 -1.36253726 -2.4000001 12 -1.36253726 -2.4000001
		 -9.60000038 -1.36253726 -4.80000019 -12 -1.36253726 -4.80000019 -7.19999933 -1.36253726 -4.80000019
		 -4.80000019 -1.36253726 -4.80000019 -2.4000001 -1.36253726 -4.80000019 0 -1.36253726 -4.80000019
		 2.4000001 -1.36253726 -4.80000019 4.80000019 -1.36253726 -4.80000019 7.19999933 -1.36253726 -4.80000019
		 9.60000038 -1.36253726 -4.80000019 12 -1.36253726 -4.80000019 -9.60000038 -1.36253726 -7.19999933
		 -12 -1.36253726 -7.19999933 -7.19999933 -1.36253726 -7.19999933 -4.80000019 -1.36253726 -7.19999933
		 -2.4000001 -1.36253726 -7.19999933 0 -1.36253726 -7.19999933 2.4000001 -1.36253726 -7.19999933
		 4.80000019 -1.36253726 -7.19999933 7.19999933 -1.36253726 -7.19999933 9.60000038 -1.36253726 -7.19999933
		 12 -1.36253726 -7.19999933 -9.60000038 -1.36253726 -9.60000038 -12 -1.36253726 -9.60000038
		 -7.19999933 -1.36253726 -9.60000038 -4.80000019 -1.36253726 -9.60000038 -2.4000001 -1.36253726 -9.60000038
		 0 -1.36253726 -9.60000038 2.4000001 -1.36253726 -9.60000038 4.80000019 -1.36253726 -9.60000038
		 7.19999933 -1.36253726 -9.60000038 9.60000038 -1.36253726 -9.60000038 12 -1.36253726 -9.60000038
		 -9.60000038 -1.36253726 -12 -12 -1.36253726 -12 -7.19999933 -1.36253726 -12 -4.80000019 -1.36253726 -12
		 -2.4000001 -1.36253726 -12 0 -1.36253726 -12 2.4000001 -1.36253726 -12 4.80000019 -1.36253726 -12
		 7.19999933 -1.36253726 -12 9.60000038 -1.36253726 -12 12 -1.36253726 -12;
	setAttr -s 480 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 55 66 0 56 57 1 56 67 1
		 57 58 1 57 68 1 58 59 1 58 69 1 59 60 1 59 70 1 60 61 1 60 71 1 61 62 1 61 72 1 62 63 1
		 62 73 1 63 64 1 63 74 1 64 65 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:331]" 86 97 1 87 98 0 88 89 1 88 99 0 89 90 1 89 100 1 90 91 1
		 90 101 1 91 92 1 91 102 1 92 93 1 92 103 1 93 94 1 93 104 1 94 95 1 94 105 1 95 96 1
		 95 106 1 96 97 1 96 107 1 97 98 1 97 108 1 98 109 0 99 100 1 99 110 0 100 101 1 100 111 1
		 101 102 1 101 112 1 102 103 1 102 113 1 103 104 1 103 114 1 104 105 1 104 115 1 105 106 1
		 105 116 1 106 107 1 106 117 1 107 108 1 107 118 1 108 109 1 108 119 1 109 120 0 110 111 0
		 111 112 0 112 113 0 113 114 0 114 115 0 115 116 0 116 117 0 117 118 0 118 119 0 119 120 0
		 0 121 0 1 122 1 121 122 0 122 123 1 11 124 1 124 123 1 121 124 0 2 125 1 122 125 0
		 125 126 1 123 126 1 3 127 1 125 127 0 127 128 1 126 128 1 4 129 1 127 129 0 129 130 1
		 128 130 1 5 131 1 129 131 0 131 132 1 130 132 1 6 133 1 131 133 0 133 134 1 132 134 1
		 7 135 1 133 135 0 135 136 1 134 136 1 8 137 1 135 137 0 137 138 1 136 138 1 9 139 1
		 137 139 0 139 140 1 138 140 1 10 141 0 139 141 0 21 142 1 141 142 0 140 142 1 123 143 1
		 22 144 1 144 143 1 124 144 0 126 145 1 143 145 1 128 146 1 145 146 1 130 147 1 146 147 1
		 132 148 1 147 148 1 134 149 1 148 149 1 136 150 1 149 150 1 138 151 1 150 151 1 140 152 1
		 151 152 1 32 153 1 142 153 0 152 153 1 143 154 1 33 155 1 155 154 1 144 155 0 145 156 1
		 154 156 1 146 157 1 156 157 1 147 158 1 157 158 1 148 159 1 158 159 1 149 160 1 159 160 1
		 150 161 1 160 161 1 151 162 1 161 162 1 152 163 1 162 163 1 43 164 1 153 164 0 163 164 1
		 154 165 1 44 166 1 166 165 1 155 166 0 156 167 1 165 167 1 157 168 1 167 168 1 158 169 1
		 168 169 1 159 170 1 169 170 1 160 171 1 170 171 1 161 172 1 171 172 1 162 173 1 172 173 1
		 163 174 1 173 174 1 54 175 1 164 175 0;
	setAttr ".ed[332:479]" 174 175 1 165 176 1 55 177 1 177 176 1 166 177 0 167 178 1
		 176 178 1 168 179 1 178 179 1 169 180 1 179 180 1 170 181 1 180 181 1 171 182 1 181 182 1
		 172 183 1 182 183 1 173 184 1 183 184 1 174 185 1 184 185 1 65 186 1 175 186 0 185 186 1
		 176 187 1 66 188 1 188 187 1 177 188 0 178 189 1 187 189 1 179 190 1 189 190 1 180 191 1
		 190 191 1 181 192 1 191 192 1 182 193 1 192 193 1 183 194 1 193 194 1 184 195 1 194 195 1
		 185 196 1 195 196 1 76 197 1 186 197 0 196 197 1 187 198 1 77 199 1 199 198 1 188 199 0
		 189 200 1 198 200 1 190 201 1 200 201 1 191 202 1 201 202 1 192 203 1 202 203 1 193 204 1
		 203 204 1 194 205 1 204 205 1 195 206 1 205 206 1 196 207 1 206 207 1 87 208 1 197 208 0
		 207 208 1 198 209 1 88 210 1 210 209 1 199 210 0 200 211 1 209 211 1 201 212 1 211 212 1
		 202 213 1 212 213 1 203 214 1 213 214 1 204 215 1 214 215 1 205 216 1 215 216 1 206 217 1
		 216 217 1 207 218 1 217 218 1 98 219 1 208 219 0 218 219 1 209 220 1 99 221 1 221 220 1
		 210 221 0 211 222 1 220 222 1 212 223 1 222 223 1 213 224 1 223 224 1 214 225 1 224 225 1
		 215 226 1 225 226 1 216 227 1 226 227 1 217 228 1 227 228 1 218 229 1 228 229 1 109 230 1
		 219 230 0 229 230 1 111 231 1 220 231 1 110 232 0 232 231 0 221 232 0 112 233 1 222 233 1
		 231 233 0 113 234 1 223 234 1 233 234 0 114 235 1 224 235 1 234 235 0 115 236 1 225 236 1
		 235 236 0 116 237 1 226 237 1 236 237 0 117 238 1 227 238 1 237 238 0 118 239 1 228 239 1
		 238 239 0 119 240 1 229 240 1 239 240 0 120 241 0 230 241 0 240 241 0;
	setAttr -s 240 -ch 960 ".fc[0:239]" -type "polyFaces" 
		f 4 226 225 -224 -223
		mu 0 4 242 244 12 243
		f 4 223 230 -230 -229
		mu 0 4 243 12 13 245
		f 4 229 234 -234 -233
		mu 0 4 245 13 14 246
		f 4 233 238 -238 -237
		mu 0 4 246 14 15 247
		f 4 237 242 -242 -241
		mu 0 4 247 15 16 248
		f 4 241 246 -246 -245
		mu 0 4 248 16 17 249
		f 4 245 250 -250 -249
		mu 0 4 249 17 18 250
		f 4 249 254 -254 -253
		mu 0 4 250 18 19 251
		f 4 253 258 -258 -257
		mu 0 4 251 19 20 252
		f 4 257 263 -263 -261
		mu 0 4 252 20 254 253
		f 4 267 266 -265 -226
		mu 0 4 244 255 23 12
		f 4 264 269 -269 -231
		mu 0 4 12 23 24 13
		f 4 268 271 -271 -235
		mu 0 4 13 24 25 14
		f 4 270 273 -273 -239
		mu 0 4 14 25 26 15
		f 4 272 275 -275 -243
		mu 0 4 15 26 27 16
		f 4 274 277 -277 -247
		mu 0 4 16 27 28 17
		f 4 276 279 -279 -251
		mu 0 4 17 28 29 18
		f 4 278 281 -281 -255
		mu 0 4 18 29 30 19
		f 4 280 283 -283 -259
		mu 0 4 19 30 31 20
		f 4 282 286 -286 -264
		mu 0 4 20 31 256 254
		f 4 290 289 -288 -267
		mu 0 4 255 257 34 23
		f 4 287 292 -292 -270
		mu 0 4 23 34 35 24
		f 4 291 294 -294 -272
		mu 0 4 24 35 36 25
		f 4 293 296 -296 -274
		mu 0 4 25 36 37 26
		f 4 295 298 -298 -276
		mu 0 4 26 37 38 27
		f 4 297 300 -300 -278
		mu 0 4 27 38 39 28
		f 4 299 302 -302 -280
		mu 0 4 28 39 40 29
		f 4 301 304 -304 -282
		mu 0 4 29 40 41 30
		f 4 303 306 -306 -284
		mu 0 4 30 41 42 31
		f 4 305 309 -309 -287
		mu 0 4 31 42 258 256
		f 4 313 312 -311 -290
		mu 0 4 257 259 45 34
		f 4 310 315 -315 -293
		mu 0 4 34 45 46 35
		f 4 314 317 -317 -295
		mu 0 4 35 46 47 36
		f 4 316 319 -319 -297
		mu 0 4 36 47 48 37
		f 4 318 321 -321 -299
		mu 0 4 37 48 49 38
		f 4 320 323 -323 -301
		mu 0 4 38 49 50 39
		f 4 322 325 -325 -303
		mu 0 4 39 50 51 40
		f 4 324 327 -327 -305
		mu 0 4 40 51 52 41
		f 4 326 329 -329 -307
		mu 0 4 41 52 53 42
		f 4 328 332 -332 -310
		mu 0 4 42 53 260 258
		f 4 336 335 -334 -313
		mu 0 4 259 261 56 45
		f 4 333 338 -338 -316
		mu 0 4 45 56 57 46
		f 4 337 340 -340 -318
		mu 0 4 46 57 58 47
		f 4 339 342 -342 -320
		mu 0 4 47 58 59 48
		f 4 341 344 -344 -322
		mu 0 4 48 59 60 49
		f 4 343 346 -346 -324
		mu 0 4 49 60 61 50
		f 4 345 348 -348 -326
		mu 0 4 50 61 62 51
		f 4 347 350 -350 -328
		mu 0 4 51 62 63 52
		f 4 349 352 -352 -330
		mu 0 4 52 63 64 53
		f 4 351 355 -355 -333
		mu 0 4 53 64 262 260
		f 4 359 358 -357 -336
		mu 0 4 261 263 67 56
		f 4 356 361 -361 -339
		mu 0 4 56 67 68 57
		f 4 360 363 -363 -341
		mu 0 4 57 68 69 58
		f 4 362 365 -365 -343
		mu 0 4 58 69 70 59
		f 4 364 367 -367 -345
		mu 0 4 59 70 71 60
		f 4 366 369 -369 -347
		mu 0 4 60 71 72 61
		f 4 368 371 -371 -349
		mu 0 4 61 72 73 62
		f 4 370 373 -373 -351
		mu 0 4 62 73 74 63
		f 4 372 375 -375 -353
		mu 0 4 63 74 75 64
		f 4 374 378 -378 -356
		mu 0 4 64 75 264 262
		f 4 382 381 -380 -359
		mu 0 4 263 265 78 67
		f 4 379 384 -384 -362
		mu 0 4 67 78 79 68
		f 4 383 386 -386 -364
		mu 0 4 68 79 80 69
		f 4 385 388 -388 -366
		mu 0 4 69 80 81 70
		f 4 387 390 -390 -368
		mu 0 4 70 81 82 71
		f 4 389 392 -392 -370
		mu 0 4 71 82 83 72
		f 4 391 394 -394 -372
		mu 0 4 72 83 84 73
		f 4 393 396 -396 -374
		mu 0 4 73 84 85 74
		f 4 395 398 -398 -376
		mu 0 4 74 85 86 75
		f 4 397 401 -401 -379
		mu 0 4 75 86 266 264
		f 4 405 404 -403 -382
		mu 0 4 265 267 89 78
		f 4 402 407 -407 -385
		mu 0 4 78 89 90 79
		f 4 406 409 -409 -387
		mu 0 4 79 90 91 80
		f 4 408 411 -411 -389
		mu 0 4 80 91 92 81
		f 4 410 413 -413 -391
		mu 0 4 81 92 93 82
		f 4 412 415 -415 -393
		mu 0 4 82 93 94 83
		f 4 414 417 -417 -395
		mu 0 4 83 94 95 84
		f 4 416 419 -419 -397
		mu 0 4 84 95 96 85
		f 4 418 421 -421 -399
		mu 0 4 85 96 97 86
		f 4 420 424 -424 -402
		mu 0 4 86 97 268 266
		f 4 428 427 -426 -405
		mu 0 4 267 269 100 89
		f 4 425 430 -430 -408
		mu 0 4 89 100 101 90
		f 4 429 432 -432 -410
		mu 0 4 90 101 102 91
		f 4 431 434 -434 -412
		mu 0 4 91 102 103 92
		f 4 433 436 -436 -414
		mu 0 4 92 103 104 93
		f 4 435 438 -438 -416
		mu 0 4 93 104 105 94
		f 4 437 440 -440 -418
		mu 0 4 94 105 106 95
		f 4 439 442 -442 -420
		mu 0 4 95 106 107 96
		f 4 441 444 -444 -422
		mu 0 4 96 107 108 97
		f 4 443 447 -447 -425
		mu 0 4 97 108 270 268
		f 4 452 451 -450 -428
		mu 0 4 269 272 271 100
		f 4 449 455 -455 -431
		mu 0 4 100 271 273 101
		f 4 454 458 -458 -433
		mu 0 4 101 273 274 102
		f 4 457 461 -461 -435
		mu 0 4 102 274 275 103
		f 4 460 464 -464 -437
		mu 0 4 103 275 276 104
		f 4 463 467 -467 -439
		mu 0 4 104 276 277 105
		f 4 466 470 -470 -441
		mu 0 4 105 277 278 106
		f 4 469 473 -473 -443
		mu 0 4 106 278 279 107
		f 4 472 476 -476 -445
		mu 0 4 107 279 280 108
		f 4 475 479 -479 -448
		mu 0 4 108 280 281 270
		f 4 0 3 -22 -2
		mu 0 4 121 122 123 124
		f 4 2 5 -24 -4
		mu 0 4 122 125 126 123
		f 4 4 7 -26 -6
		mu 0 4 125 127 128 126
		f 4 6 9 -28 -8
		mu 0 4 127 129 130 128
		f 4 8 11 -30 -10
		mu 0 4 129 131 132 130
		f 4 10 13 -32 -12
		mu 0 4 131 133 134 132
		f 4 12 15 -34 -14
		mu 0 4 133 135 136 134
		f 4 14 17 -36 -16
		mu 0 4 135 137 138 136
		f 4 16 19 -38 -18
		mu 0 4 137 139 140 138
		f 4 18 20 -40 -20
		mu 0 4 139 141 142 140
		f 4 21 24 -43 -23
		mu 0 4 124 123 143 144
		f 4 23 26 -45 -25
		mu 0 4 123 126 145 143
		f 4 25 28 -47 -27
		mu 0 4 126 128 146 145
		f 4 27 30 -49 -29
		mu 0 4 128 130 147 146
		f 4 29 32 -51 -31
		mu 0 4 130 132 148 147
		f 4 31 34 -53 -33
		mu 0 4 132 134 149 148
		f 4 33 36 -55 -35
		mu 0 4 134 136 150 149
		f 4 35 38 -57 -37
		mu 0 4 136 138 151 150
		f 4 37 40 -59 -39
		mu 0 4 138 140 152 151
		f 4 39 41 -61 -41
		mu 0 4 140 142 153 152
		f 4 42 45 -64 -44
		mu 0 4 144 143 154 155
		f 4 44 47 -66 -46
		mu 0 4 143 145 156 154
		f 4 46 49 -68 -48
		mu 0 4 145 146 157 156
		f 4 48 51 -70 -50
		mu 0 4 146 147 158 157
		f 4 50 53 -72 -52
		mu 0 4 147 148 159 158
		f 4 52 55 -74 -54
		mu 0 4 148 149 160 159
		f 4 54 57 -76 -56
		mu 0 4 149 150 161 160
		f 4 56 59 -78 -58
		mu 0 4 150 151 162 161
		f 4 58 61 -80 -60
		mu 0 4 151 152 163 162
		f 4 60 62 -82 -62
		mu 0 4 152 153 164 163
		f 4 63 66 -85 -65
		mu 0 4 155 154 165 166
		f 4 65 68 -87 -67
		mu 0 4 154 156 167 165
		f 4 67 70 -89 -69
		mu 0 4 156 157 168 167
		f 4 69 72 -91 -71
		mu 0 4 157 158 169 168
		f 4 71 74 -93 -73
		mu 0 4 158 159 170 169
		f 4 73 76 -95 -75
		mu 0 4 159 160 171 170
		f 4 75 78 -97 -77
		mu 0 4 160 161 172 171
		f 4 77 80 -99 -79
		mu 0 4 161 162 173 172
		f 4 79 82 -101 -81
		mu 0 4 162 163 174 173
		f 4 81 83 -103 -83
		mu 0 4 163 164 175 174
		f 4 84 87 -106 -86
		mu 0 4 166 165 176 177
		f 4 86 89 -108 -88
		mu 0 4 165 167 178 176
		f 4 88 91 -110 -90
		mu 0 4 167 168 179 178
		f 4 90 93 -112 -92
		mu 0 4 168 169 180 179
		f 4 92 95 -114 -94
		mu 0 4 169 170 181 180
		f 4 94 97 -116 -96
		mu 0 4 170 171 182 181
		f 4 96 99 -118 -98
		mu 0 4 171 172 183 182
		f 4 98 101 -120 -100
		mu 0 4 172 173 184 183
		f 4 100 103 -122 -102
		mu 0 4 173 174 185 184
		f 4 102 104 -124 -104
		mu 0 4 174 175 186 185
		f 4 105 108 -127 -107
		mu 0 4 177 176 187 188
		f 4 107 110 -129 -109
		mu 0 4 176 178 189 187
		f 4 109 112 -131 -111
		mu 0 4 178 179 190 189
		f 4 111 114 -133 -113
		mu 0 4 179 180 191 190
		f 4 113 116 -135 -115
		mu 0 4 180 181 192 191
		f 4 115 118 -137 -117
		mu 0 4 181 182 193 192
		f 4 117 120 -139 -119
		mu 0 4 182 183 194 193
		f 4 119 122 -141 -121
		mu 0 4 183 184 195 194
		f 4 121 124 -143 -123
		mu 0 4 184 185 196 195
		f 4 123 125 -145 -125
		mu 0 4 185 186 197 196
		f 4 126 129 -148 -128
		mu 0 4 188 187 198 199
		f 4 128 131 -150 -130
		mu 0 4 187 189 200 198
		f 4 130 133 -152 -132
		mu 0 4 189 190 201 200
		f 4 132 135 -154 -134
		mu 0 4 190 191 202 201
		f 4 134 137 -156 -136
		mu 0 4 191 192 203 202
		f 4 136 139 -158 -138
		mu 0 4 192 193 204 203
		f 4 138 141 -160 -140
		mu 0 4 193 194 205 204
		f 4 140 143 -162 -142
		mu 0 4 194 195 206 205
		f 4 142 145 -164 -144
		mu 0 4 195 196 207 206
		f 4 144 146 -166 -146
		mu 0 4 196 197 208 207
		f 4 147 150 -169 -149
		mu 0 4 199 198 209 210
		f 4 149 152 -171 -151
		mu 0 4 198 200 211 209
		f 4 151 154 -173 -153
		mu 0 4 200 201 212 211
		f 4 153 156 -175 -155
		mu 0 4 201 202 213 212
		f 4 155 158 -177 -157
		mu 0 4 202 203 214 213
		f 4 157 160 -179 -159
		mu 0 4 203 204 215 214
		f 4 159 162 -181 -161
		mu 0 4 204 205 216 215
		f 4 161 164 -183 -163
		mu 0 4 205 206 217 216
		f 4 163 166 -185 -165
		mu 0 4 206 207 218 217
		f 4 165 167 -187 -167
		mu 0 4 207 208 219 218
		f 4 168 171 -190 -170
		mu 0 4 210 209 220 221
		f 4 170 173 -192 -172
		mu 0 4 209 211 222 220
		f 4 172 175 -194 -174
		mu 0 4 211 212 223 222
		f 4 174 177 -196 -176
		mu 0 4 212 213 224 223
		f 4 176 179 -198 -178
		mu 0 4 213 214 225 224
		f 4 178 181 -200 -180
		mu 0 4 214 215 226 225
		f 4 180 183 -202 -182
		mu 0 4 215 216 227 226
		f 4 182 185 -204 -184
		mu 0 4 216 217 228 227
		f 4 184 187 -206 -186
		mu 0 4 217 218 229 228
		f 4 186 188 -208 -188
		mu 0 4 218 219 230 229
		f 4 189 192 -211 -191
		mu 0 4 221 220 231 232
		f 4 191 194 -212 -193
		mu 0 4 220 222 233 231
		f 4 193 196 -213 -195
		mu 0 4 222 223 234 233
		f 4 195 198 -214 -197
		mu 0 4 223 224 235 234
		f 4 197 200 -215 -199
		mu 0 4 224 225 236 235
		f 4 199 202 -216 -201
		mu 0 4 225 226 237 236
		f 4 201 204 -217 -203
		mu 0 4 226 227 238 237
		f 4 203 206 -218 -205
		mu 0 4 227 228 239 238
		f 4 205 208 -219 -207
		mu 0 4 228 229 240 239
		f 4 207 209 -220 -209
		mu 0 4 229 230 241 240
		f 4 220 222 -222 -1
		mu 0 4 0 242 243 1
		f 4 224 -227 -221 1
		mu 0 4 11 244 242 0
		f 4 221 228 -228 -3
		mu 0 4 1 243 245 2
		f 4 227 232 -232 -5
		mu 0 4 2 245 246 3
		f 4 231 236 -236 -7
		mu 0 4 3 246 247 4
		f 4 235 240 -240 -9
		mu 0 4 4 247 248 5
		f 4 239 244 -244 -11
		mu 0 4 5 248 249 6
		f 4 243 248 -248 -13
		mu 0 4 6 249 250 7
		f 4 247 252 -252 -15
		mu 0 4 7 250 251 8
		f 4 251 256 -256 -17
		mu 0 4 8 251 252 9
		f 4 255 260 -260 -19
		mu 0 4 9 252 253 10
		f 4 259 262 -262 -21
		mu 0 4 10 253 254 21
		f 4 265 -268 -225 22
		mu 0 4 22 255 244 11
		f 4 261 285 -285 -42
		mu 0 4 21 254 256 32
		f 4 288 -291 -266 43
		mu 0 4 33 257 255 22
		f 4 284 308 -308 -63
		mu 0 4 32 256 258 43
		f 4 311 -314 -289 64
		mu 0 4 44 259 257 33
		f 4 307 331 -331 -84
		mu 0 4 43 258 260 54
		f 4 334 -337 -312 85
		mu 0 4 55 261 259 44
		f 4 330 354 -354 -105
		mu 0 4 54 260 262 65
		f 4 357 -360 -335 106
		mu 0 4 66 263 261 55
		f 4 353 377 -377 -126
		mu 0 4 65 262 264 76
		f 4 380 -383 -358 127
		mu 0 4 77 265 263 66
		f 4 376 400 -400 -147
		mu 0 4 76 264 266 87
		f 4 403 -406 -381 148
		mu 0 4 88 267 265 77
		f 4 399 423 -423 -168
		mu 0 4 87 266 268 98
		f 4 426 -429 -404 169
		mu 0 4 99 269 267 88
		f 4 422 446 -446 -189
		mu 0 4 98 268 270 109
		f 4 448 -452 -451 210
		mu 0 4 111 271 272 110
		f 4 450 -453 -427 190
		mu 0 4 110 272 269 99
		f 4 453 -456 -449 211
		mu 0 4 112 273 271 111
		f 4 456 -459 -454 212
		mu 0 4 113 274 273 112
		f 4 459 -462 -457 213
		mu 0 4 114 275 274 113
		f 4 462 -465 -460 214
		mu 0 4 115 276 275 114
		f 4 465 -468 -463 215
		mu 0 4 116 277 276 115
		f 4 468 -471 -466 216
		mu 0 4 117 278 277 116
		f 4 471 -474 -469 217
		mu 0 4 118 279 278 117
		f 4 474 -477 -472 218
		mu 0 4 119 280 279 118
		f 4 445 478 -478 -210
		mu 0 4 109 270 281 120
		f 4 477 -480 -475 219
		mu 0 4 120 281 280 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "group1";
	rename -uid "10274DE2-425F-28B9-CB12-E9AC2D742349";
	setAttr ".rp" -type "double3" 2.2890184839053047 1.1702415905357397 10.63668033481007 ;
	setAttr ".sp" -type "double3" 2.2890184839053047 1.1702415905357397 10.63668033481007 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "4377F5F3-46A0-C398-04A6-47B24A05536F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.9330578 3.0952418 10.636681 
		4.6330576 3.2452416 10.636681 -0.05502066 -0.90475845 10.636681 -0.35502067 -0.75475848 
		10.636681 -0.05502066 -0.90475845 10.636681 -0.35502067 -0.75475848 10.636681 4.9330578 
		3.0952418 10.636681 4.6330576 3.2452416 10.636681;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "group1";
	rename -uid "FA022E70-4169-AD31-9AF4-3DA4C9263B7C";
	setAttr ".rp" -type "double3" 4.8197274901345279 1.1702415905357397 8.241733337952601 ;
	setAttr ".sp" -type "double3" 4.8197274901345279 1.1702415905357397 8.241733337952601 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "F3EC28EC-4F40-05BC-85A5-90989D1809B9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.1197276 3.0952418 5.5976939 
		4.8197274 3.2452416 5.5976939 5.1197276 -0.90475845 10.585773 4.8197274 -0.75475836 
		10.585773 4.8197274 -0.90475845 10.885773 4.5197277 -0.75475836 10.885773 4.8197274 
		3.0952418 5.8976941 4.5197277 3.2452416 5.8976941;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "group1";
	rename -uid "124A7313-44F0-207D-953A-72BEB0991040";
	setAttr ".rp" -type "double3" -4.8409767661310195 1.1702415905357397 8.241733337952601 ;
	setAttr ".sp" -type "double3" -4.8409767661310195 1.1702415905357397 8.241733337952601 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "FA28353B-4264-A60F-336C-94B3392980AD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.540977 3.0952418 5.5976939 
		-4.8409767 3.2452416 5.5976939 -4.540977 -0.90475845 10.585773 -4.8409767 -0.75475836 
		10.585773 -4.8409767 -0.90475845 10.885773 -5.1409764 -0.75475836 10.885773 -4.8409767 
		3.0952418 5.8976941 -5.1409764 3.2452416 5.8976941;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "group1";
	rename -uid "9E85BEBB-4F31-B611-3EC4-28B4BB327983";
	setAttr ".rp" -type "double3" 0.98926144752272149 0.54251122643841387 10.63668033481007 ;
	setAttr ".sp" -type "double3" 0.98926144752272149 0.54251122643841387 10.63668033481007 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "F3D6526D-4883-E684-DBD8-BA8412EC0E9F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.0642614 1.9222269 10.561681 
		0.91426146 1.9222269 10.561681 1.0642614 -0.83720434 10.561681 0.91426146 -0.83720434 
		10.561681 1.0642614 -0.83720434 10.711681 0.91426146 -0.83720434 10.711681 1.0642614 
		1.9222269 10.711681 0.91426146 1.9222269 10.711681;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "group1";
	rename -uid "AF6ABB8B-4079-9A81-EE43-2390F25D7F8B";
	setAttr ".rp" -type "double3" 1.991029417967414 0.54251122643841387 10.63668033481007 ;
	setAttr ".sp" -type "double3" 1.991029417967414 0.54251122643841387 10.63668033481007 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "6D115223-4EAF-C216-7337-6D99C3B701EB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.0660293 1.9222269 10.561681 
		1.9160293 1.9222269 10.561681 2.0660293 -0.83720434 10.561681 1.9160293 -0.83720434 
		10.561681 2.0660293 -0.83720434 10.711681 1.9160293 -0.83720434 10.711681 2.0660293 
		1.9222269 10.711681 1.9160293 1.9222269 10.711681;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "group1";
	rename -uid "08EBF7D8-4569-FFD8-6ECF-039F8D587E40";
	setAttr ".rp" -type "double3" 2.9862419723551374 0.54251122643841387 10.63668033481007 ;
	setAttr ".sp" -type "double3" 2.9862419723551374 0.54251122643841387 10.63668033481007 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	rename -uid "E173AD00-47A2-E9BF-876D-40B672D083BB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  3.0612421 1.9222269 10.561681 
		2.911242 1.9222269 10.561681 3.0612421 -0.83720434 10.561681 2.911242 -0.83720434 
		10.561681 3.0612421 -0.83720434 10.711681 2.911242 -0.83720434 10.711681 3.0612421 
		1.9222269 10.711681 2.911242 1.9222269 10.711681;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14" -p "group1";
	rename -uid "9921DFB9-4AEF-8F4F-4F2E-548291DCF41E";
	setAttr ".rp" -type "double3" 3.9854491362037359 0.54251122643841387 10.63668033481007 ;
	setAttr ".sp" -type "double3" 3.9854491362037359 0.54251122643841387 10.63668033481007 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	rename -uid "693FC6A5-465A-9A3E-5B74-DF8A428A1521";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.0604491 1.9222269 10.561681 
		3.9104493 1.9222269 10.561681 4.0604491 -0.83720434 10.561681 3.9104493 -0.83720434 
		10.561681 4.0604491 -0.83720434 10.711681 3.9104493 -0.83720434 10.711681 4.0604491 
		1.9222269 10.711681 3.9104493 1.9222269 10.711681;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15" -p "group1";
	rename -uid "9AE69339-443A-E7F5-14B6-5986BDF83DAF";
	setAttr ".rp" -type "double3" 4.8712091832962017 0.54251122643841387 9.9996599348432422 ;
	setAttr ".sp" -type "double3" 4.8712091832962017 0.54251122643841387 9.9996599348432422 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	rename -uid "C2C507AC-4B0E-580B-7BDB-65ADB097642A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.946209 1.9222269 9.9246597 
		4.7962093 1.9222269 9.9246597 4.946209 -0.83720434 9.9246597 4.7962093 -0.83720434 
		9.9246597 4.946209 -0.83720434 10.07466 4.7962093 -0.83720434 10.07466 4.946209 1.9222269 
		10.07466 4.7962093 1.9222269 10.07466;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "group1";
	rename -uid "1E6443D0-4522-EF9E-2CC2-5989700862EB";
	setAttr ".rp" -type "double3" 4.8712091832962017 0.54251122643841387 8.9977616905397841 ;
	setAttr ".sp" -type "double3" 4.8712091832962017 0.54251122643841387 8.9977616905397841 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	rename -uid "76C53A30-4953-C09D-8983-61B25CBBB030";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.946209 1.9222269 8.9227619 
		4.7962093 1.9222269 8.9227619 4.946209 -0.83720434 8.9227619 4.7962093 -0.83720434 
		8.9227619 4.946209 -0.83720434 9.0727615 4.7962093 -0.83720434 9.0727615 4.946209 
		1.9222269 9.0727615 4.7962093 1.9222269 9.0727615;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17" -p "group1";
	rename -uid "4CE79021-499D-3B66-AA4F-008029E21690";
	setAttr ".rp" -type "double3" 4.8712091832962017 0.54251122643841387 8.0204241616107659 ;
	setAttr ".sp" -type "double3" 4.8712091832962017 0.54251122643841387 8.0204241616107659 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	rename -uid "FE013080-457F-233A-CD47-0AB74A2569FE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.946209 1.9222269 7.9454241 
		4.7962093 1.9222269 7.9454241 4.946209 -0.83720434 7.9454241 4.7962093 -0.83720434 
		7.9454241 4.946209 -0.83720434 8.0954247 4.7962093 -0.83720434 8.0954247 4.946209 
		1.9222269 8.0954247 4.7962093 1.9222269 8.0954247;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18" -p "group1";
	rename -uid "399DF334-4B5C-BBA4-F6F8-DFB22712C050";
	setAttr ".rp" -type "double3" 4.8712091832962017 0.54251122643841387 7.0060049732443099 ;
	setAttr ".sp" -type "double3" 4.8712091832962017 0.54251122643841387 7.0060049732443099 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	rename -uid "C7C0E16E-4055-D171-CE0B-DDB512BE7847";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.946209 1.9222269 6.9310055 
		4.7962093 1.9222269 6.9310055 4.946209 -0.83720434 6.9310055 4.7962093 -0.83720434 
		6.9310055 4.946209 -0.83720434 7.0810051 4.7962093 -0.83720434 7.0810051 4.946209 
		1.9222269 7.0810051 4.7962093 1.9222269 7.0810051;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19" -p "group1";
	rename -uid "61DB623D-4B0F-45E6-0E01-24B2B5EDA2C2";
	setAttr ".rp" -type "double3" -4.8365952821367726 0.54251122643841387 9.9996599348432422 ;
	setAttr ".sp" -type "double3" -4.8365952821367726 0.54251122643841387 9.9996599348432422 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	rename -uid "2369E0D9-452E-F899-C10F-6EB715CE89F2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.7615952 1.9222269 9.9246597 
		-4.9115953 1.9222269 9.9246597 -4.7615952 -0.83720434 9.9246597 -4.9115953 -0.83720434 
		9.9246597 -4.7615952 -0.83720434 10.07466 -4.9115953 -0.83720434 10.07466 -4.7615952 
		1.9222269 10.07466 -4.9115953 1.9222269 10.07466;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20" -p "group1";
	rename -uid "095838E3-4F6B-A2A5-B741-BC92FEA46D52";
	setAttr ".rp" -type "double3" -4.8365952821367726 0.54251122643841387 8.9977616905397841 ;
	setAttr ".sp" -type "double3" -4.8365952821367726 0.54251122643841387 8.9977616905397841 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	rename -uid "0D5FEDB6-4933-9B4A-35BA-4B9BC76041FC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.7615952 1.9222269 8.9227619 
		-4.9115953 1.9222269 8.9227619 -4.7615952 -0.83720434 8.9227619 -4.9115953 -0.83720434 
		8.9227619 -4.7615952 -0.83720434 9.0727615 -4.9115953 -0.83720434 9.0727615 -4.7615952 
		1.9222269 9.0727615 -4.9115953 1.9222269 9.0727615;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21" -p "group1";
	rename -uid "689F1173-4348-0A67-C3E5-5BBDD797D347";
	setAttr ".rp" -type "double3" -4.8365952821367726 0.54251122643841387 8.0204241616107659 ;
	setAttr ".sp" -type "double3" -4.8365952821367726 0.54251122643841387 8.0204241616107659 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	rename -uid "92A7BF4D-4AD4-3640-8484-F4A51C1B183B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.7615952 1.9222269 7.9454241 
		-4.9115953 1.9222269 7.9454241 -4.7615952 -0.83720434 7.9454241 -4.9115953 -0.83720434 
		7.9454241 -4.7615952 -0.83720434 8.0954247 -4.9115953 -0.83720434 8.0954247 -4.7615952 
		1.9222269 8.0954247 -4.9115953 1.9222269 8.0954247;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22" -p "group1";
	rename -uid "098C1EE8-4E6E-75A8-CB5C-6788047262C2";
	setAttr ".rp" -type "double3" -4.8365952821367726 0.54251122643841387 7.0060049732443099 ;
	setAttr ".sp" -type "double3" -4.8365952821367726 0.54251122643841387 7.0060049732443099 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	rename -uid "EE6ADBA2-4418-1251-2275-8C80DE2B8D12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.7615952 1.9222269 6.9310055 
		-4.9115953 1.9222269 6.9310055 -4.7615952 -0.83720434 6.9310055 -4.9115953 -0.83720434 
		6.9310055 -4.7615952 -0.83720434 7.0810051 -4.9115953 -0.83720434 7.0810051 -4.7615952 
		1.9222269 7.0810051 -4.9115953 1.9222269 7.0810051;
	setAttr -s 8 ".vt[0:7]"  -0.15000001 -2 0.15000001 0.15000001 -2 0.15000001
		 -0.15000001 2 0.15000001 0.15000001 2 0.15000001 -0.15000001 2 -0.15000001 0.15000001 2 -0.15000001
		 -0.15000001 -2 -0.15000001 0.15000001 -2 -0.15000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube23" -p "group1";
	rename -uid "F8198BB6-4230-9DCC-F5F6-6CBE63483063";
	setAttr ".rp" -type "double3" 4.7016017649341295 10.093267976132063 -5.1108752958924137 ;
	setAttr ".sp" -type "double3" 4.7016017649341295 10.093267976132063 -5.1108752958924137 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	rename -uid "A23587CD-4129-8E28-F2AB-AE8789443A67";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:9]" "f[18:21]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[10:17]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[6:21]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  4.8408122 10.548402 -4.9813452 
		4.5623913 10.548402 -4.9813452 4.8408122 9.9238119 -5.552701 4.5623913 9.9238119 
		-5.552701 4.8408122 9.638134 -5.2404051 4.5623913 9.638134 -5.2404051 4.8408122 10.262725 
		-4.6690502 4.5623913 10.262725 -4.6690502 4.915864 9.9804716 -5.6554966 4.48734 9.9804716 
		-5.6554966 4.48734 9.5407791 -5.1748366 4.915864 9.5407791 -5.1748366 4.915864 9.8785639 
		-5.7487183 4.48734 9.8785639 -5.7487183 4.48734 9.4388704 -5.2680578 4.915864 9.4388704 
		-5.2680578 4.8178334 9.7779779 -5.638761 4.5853701 9.7779779 -5.638761 4.5853701 
		9.5394564 -5.3780155 4.8178334 9.5394564 -5.3780155 4.8178334 10.507198 -4.9716935 
		4.5853701 10.507198 -4.9716935 4.5853701 10.268677 -4.7109485 4.8178334 10.268677 
		-4.7109485;
	setAttr -s 24 ".vt[0:23]"  -0.75 -1.5 0.75 0.7499997 -1.5 0.75 -0.75 1.5 0.75
		 0.7499997 1.5 0.75 -0.75 1.5 -0.75 0.7499997 1.5 -0.75 -0.75 -1.5 -0.75 0.7499997 -1.5 -0.75
		 -1.1543417 1.59773314 1.15434146 1.1543411 1.59773314 1.15434146 1.1543411 1.59773314 -1.15434146
		 -1.1543417 1.59773314 -1.15434146 -1.1543417 2.087210655 1.15434146 1.1543411 2.087210655 1.15434146
		 1.1543411 2.087210655 -1.15434146 -1.1543417 2.087210655 -1.15434146 -0.62619966 2.087210655 0.62619936
		 0.62619901 2.087210655 0.62619936 0.62619901 2.087210655 -0.62619936 -0.62619966 2.087210655 -0.62619936
		 -0.62619966 -1.41534054 0.62619936 0.62619901 -1.41534054 0.62619936 0.62619901 -1.41534054 -0.62619936
		 -0.62619966 -1.41534054 -0.62619936;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 1
		 3 5 1 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 17 18 0 15 19 0 19 18 0 16 19 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0
		 23 22 0 20 23 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 38 40 -43 -44
		mu 0 4 26 27 28 29
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 22 29 -31 -29
		mu 0 4 18 19 23 22
		f 4 24 31 -33 -30
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -28 28 35 -34
		mu 0 4 21 18 22 25
		f 4 30 37 -39 -37
		mu 0 4 22 23 27 26
		f 4 32 39 -41 -38
		mu 0 4 23 24 28 27
		f 4 -35 41 42 -40
		mu 0 4 24 25 29 28
		f 4 -36 36 43 -42
		mu 0 4 25 22 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube24" -p "group1";
	rename -uid "7F97544B-4A10-A09B-0DB7-2C9308E650E7";
	setAttr ".rp" -type "double3" -2.5482514363043713 6.5508439042460385 5.9929569169925845 ;
	setAttr ".sp" -type "double3" -2.5482514363043713 6.5508439042460385 5.9929569169925845 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	rename -uid "08463B22-46E4-78C4-D4BF-96973DC711EB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.5482514 6.5508442 5.9929571 
		-2.5482514 6.5508442 5.9929571 -2.5482514 6.5508442 5.9929571 -2.5482514 6.5508442 
		5.9929571 -2.5482514 6.5508442 5.9929571 -2.5482514 6.5508442 5.9929571 -2.5482514 
		6.5508442 5.9929571 -2.5482514 6.5508442 5.9929571;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube25" -p "group1";
	rename -uid "27793FD2-410B-72C5-EF3D-1A819FBB8E73";
	setAttr ".rp" -type "double3" -2.5482514363043713 6.5508439042460385 5.9929569169925845 ;
	setAttr ".sp" -type "double3" -2.5482514363043713 6.5508439042460385 5.9929569169925845 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	rename -uid "F512DE94-4CE9-FF99-A6A2-6081A023AE0F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5732515 7.3258443 5.9929571 
		-1.7732515 7.5258441 5.9929571 -3.3232512 5.5758443 5.9929571 -3.5232513 5.7758441 
		5.9929571 -3.3232512 5.5758443 5.9929571 -3.5232513 5.7758441 5.9929571 -1.5732515 
		7.3258443 5.9929571 -1.7732515 7.5258441 5.9929571;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube26" -p "group1";
	rename -uid "B680CDDB-4C44-6351-956F-98A24AD12909";
	setAttr ".rp" -type "double3" 2.7933542471793711 6.5508439042460385 5.9929569169925845 ;
	setAttr ".sp" -type "double3" 2.7933542471793711 6.5508439042460385 5.9929569169925845 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	rename -uid "94AE10AA-480E-E3B5-B3F4-7781CEA0867A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.7933543 6.5508442 5.9929571 
		2.7933543 6.5508442 5.9929571 2.7933543 6.5508442 5.9929571 2.7933543 6.5508442 5.9929571 
		2.7933543 6.5508442 5.9929571 2.7933543 6.5508442 5.9929571 2.7933543 6.5508442 5.9929571 
		2.7933543 6.5508442 5.9929571;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube27" -p "group1";
	rename -uid "2F9EE86B-40EC-D194-76AF-C68561BE10D9";
	setAttr ".rp" -type "double3" 2.7933542471793711 6.5508439042460385 5.9929569169925845 ;
	setAttr ".sp" -type "double3" 2.7933542471793711 6.5508439042460385 5.9929569169925845 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	rename -uid "3811D3C2-4FA5-1641-4512-469F61CC88DF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  3.7683542 7.3258443 5.9929571 
		3.5683541 7.5258441 5.9929571 2.0183542 5.5758443 5.9929571 1.8183541 5.7758441 5.9929571 
		2.0183542 5.5758443 5.9929571 1.8183541 5.7758441 5.9929571 3.7683542 7.3258443 5.9929571 
		3.5683541 7.5258441 5.9929571;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube28" -p "group1";
	rename -uid "B0396CAC-4DA6-B31F-E306-A8834B91C1EB";
	setAttr ".rp" -type "double3" 2.7933542471793711 2.0809101638249095 5.9929569169925845 ;
	setAttr ".sp" -type "double3" 2.7933542471793711 2.0809101638249095 5.9929569169925845 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	rename -uid "C39FB948-4313-5C6C-5EB5-45A688FF4F33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.7933543 2.0809102 5.9929571 
		2.7933543 2.0809102 5.9929571 2.7933543 2.0809102 5.9929571 2.7933543 2.0809102 5.9929571 
		2.7933543 2.0809102 5.9929571 2.7933543 2.0809102 5.9929571 2.7933543 2.0809102 5.9929571 
		2.7933543 2.0809102 5.9929571;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube29" -p "group1";
	rename -uid "06173579-4BD9-6ACD-0FE8-5B823E67E4EE";
	setAttr ".rp" -type "double3" 2.7933542471793711 2.0809101638249095 5.9929569169925845 ;
	setAttr ".sp" -type "double3" 2.7933542471793711 2.0809101638249095 5.9929569169925845 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	rename -uid "D56B5024-4E88-C58A-2C8C-BB85E0863210";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  3.7683542 2.8559101 5.9929571 
		3.5683541 3.0559101 5.9929571 2.0183542 1.1059102 5.9929571 1.8183541 1.3059102 5.9929571 
		2.0183542 1.1059102 5.9929571 1.8183541 1.3059102 5.9929571 3.7683542 2.8559101 5.9929571 
		3.5683541 3.0559101 5.9929571;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe6" -p "group1";
	rename -uid "29871A6F-4C6B-734F-A936-208F1884A2A9";
	setAttr ".rp" -type "double3" -5.9603760410763345 6.5556021559611874 -3.1657115235302844 ;
	setAttr ".sp" -type "double3" -5.9603760410763345 6.5556021559611874 -3.1657115235302844 ;
createNode mesh -n "pPipeShape6" -p "pPipe6";
	rename -uid "08E0BB8B-411C-69C4-E83A-25A8029EEC66";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -6.666626 7.1048665 -3.5899756 
		-5.8666258 6.2563381 -2.7899756 -5.0666261 6.2563381 -2.7414474 -5.8666258 7.1048665 
		-3.5414474 -6.854126 6.8548665 -3.5899756 -6.0541258 6.0063381 -2.7899756 -5.2541261 
		6.0063381 -2.7414474 -6.0541258 6.8548665 -3.5414474 -7.0541258 6.9609318 -3.6960416 
		-6.0541258 5.9002724 -2.6960416 -5.0541258 5.9002724 -2.6353815 -6.0541258 6.9609318 
		-3.6353815 -6.8666258 7.2109318 -3.6960416 -5.8666258 6.1502724 -2.6960416 -4.8666258 
		6.1502724 -2.6353815 -5.8666258 7.2109318 -3.6353815;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube30" -p "group1";
	rename -uid "14E9A13A-4BE0-EC0D-4C8E-EE8B53597ECD";
	setAttr ".rp" -type "double3" 2.6655817257783192 1.2257904531291122 -6.2715704725743135 ;
	setAttr ".sp" -type "double3" 2.6655817257783192 1.2257904531291122 -6.2715704725743135 ;
createNode mesh -n "pCubeShape30" -p "pCube30";
	rename -uid "1EF43268-4EDA-5DE4-204C-D2BB109AD063";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50218880176544189 0.15478536114096642 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 62 ".uvst[0].uvsp[0:61]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.22649589 0.125 0.22649589 0.375 0.52350414
		 0.625 0.52350414 0.875 0.22649589 0.625 0.22649589 0.42001843 0.25 0.42001843 0.5
		 0.42001843 0.52350414 0.42001843 0.75 0.42001843 0 0.42001843 1 0.42001843 0.22649589
		 0.58435917 0.25 0.58435917 0.5 0.58435917 0.52350414 0.58435917 0.75 0.58435917 0
		 0.58435917 1 0.58435917 0.22649589 0.375 0.08307483 0.125 0.083074823 0.375 0.66692519
		 0.42001843 0.66692519 0.58435917 0.66692519 0.625 0.66692519 0.875 0.083074823 0.625
		 0.08307483 0.58435917 0.08307483 0.42001843 0.08307483 0.42001843 0.22649589 0.42001843
		 0.08307483 0.58435917 0.08307483 0.58435917 0.22649589 0.42001843 0.071181148 0.375
		 0.071181148 0.125 0.071181141 0.375 0.67881882 0.42001843 0.67881882 0.58435917 0.67881882
		 0.625 0.67881882 0.875 0.071181141 0.625 0.071181148 0.58435917 0.071181148 0.58435917
		 0.071181148 0.42001843 0.071181148 0.42001843 0 0.58435917 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt[0:47]" -type "float3"  4.2493978 1.2257905 -6.4077315 
		1.0817655 1.2257905 -6.4077315 4.2493978 1.2257905 -6.4077315 1.0817655 1.2257905 
		-6.4077315 4.2493978 1.2257905 -6.1354094 1.0817655 1.2257905 -6.1354094 4.2493978 
		1.2257905 -6.1354094 1.0817655 1.2257905 -6.1354094 4.2493978 1.2257905 -6.4077315 
		4.2493978 1.2257905 -6.1354094 1.0817655 1.2257905 -6.1354094 1.0817655 1.2257905 
		-6.4077315 3.6789908 1.2257905 -6.4077315 3.6789908 1.2257905 -6.1354094 3.6789908 
		1.2257905 -6.1354094 3.6789908 1.2257905 -6.1354094 3.6789908 1.2257905 -6.4077315 
		3.6789908 1.2257905 -6.4077315 1.5967067 1.2257905 -6.4077315 1.5967067 1.2257905 
		-6.1354094 1.5967067 1.2257905 -6.1354094 1.5967067 1.2257905 -6.1354094 1.5967067 
		1.2257905 -6.4077315 1.5967067 1.2257905 -6.4077315 4.2493978 1.2257905 -6.4077315 
		4.2493978 1.2257905 -6.1354094 3.6789908 1.2257905 -6.1354094 1.5967067 1.2257905 
		-6.1354094 1.0817655 1.2257905 -6.1354094 1.0817655 1.2257905 -6.4077315 1.5967063 
		1.2257905 -6.4077315 3.6789908 1.2257905 -6.4077315 3.5395019 1.2442153 -6.1734734 
		3.5395019 1.2073658 -6.1734734 1.7361952 1.2442153 -6.1734734 1.7361956 1.2073658 
		-6.1734734 3.6789908 1.2257905 -6.4077315 4.2493978 1.2257905 -6.4077315 4.2493978 
		1.2257905 -6.1354094 3.6789908 1.2257905 -6.1354094 1.5967067 1.2257905 -6.1354094 
		1.0817655 1.2257905 -6.1354094 1.0817655 1.2257905 -6.4077315 1.5967063 1.2257905 
		-6.4077315 1.6948782 1.1418586 -6.2096696 3.5808189 1.1418586 -6.2096696 3.5808189 
		1.3097224 -6.2096696 1.6948787 1.3097224 -6.2096696;
	setAttr -s 48 ".vt[0:47]"  -0.79190809 -1.56312776 0.068080448 0.79190809 -1.56312776 0.068080448
		 -0.79190809 1.56312776 0.068080448 0.79190809 1.56312776 0.068080448 -0.79190809 1.56312776 -0.068080448
		 0.79190809 1.56312776 -0.068080448 -0.79190809 -1.56312776 -0.068080448 0.79190809 -1.56312776 -0.068080448
		 -0.79190809 1.26920843 0.068080448 -0.79190809 1.26920843 -0.068080448 0.79190809 1.26920843 -0.068080448
		 0.79190809 1.26920843 0.068080448 -0.50670457 1.56312776 0.068080448 -0.50670457 1.56312776 -0.068080448
		 -0.50670457 1.26920843 -0.068080448 -0.50670457 -1.56312776 -0.068080448 -0.50670457 -1.56312776 0.068080448
		 -0.50670457 1.26920843 0.068080448 0.53443754 1.56312776 0.068080448 0.53443754 1.56312776 -0.068080448
		 0.53443754 1.26920843 -0.068080448 0.53443754 -1.56312776 -0.068080448 0.53443754 -1.56312776 0.068080448
		 0.53443754 1.26920843 0.068080448 -0.79190809 -0.52427518 0.068080448 -0.79190809 -0.52427518 -0.068080448
		 -0.50670457 -0.52427518 -0.068080448 0.53443754 -0.52427518 -0.068080448 0.79190809 -0.52427518 -0.068080448
		 0.79190809 -0.52427518 0.068080448 0.53443772 -0.52427518 0.068080448 -0.50670457 -0.52427518 0.068080448
		 -0.46135026 -0.44614732 -0.049048461 -0.46135026 1.19108033 -0.049048461 0.48908341 -0.44614732 -0.049048461
		 0.48908326 1.19108033 -0.049048461 -0.50670457 -0.673006 0.068080448 -0.79190809 -0.673006 0.068080448
		 -0.79190809 -0.673006 -0.068080448 -0.50670457 -0.673006 -0.068080448 0.53443754 -0.673006 -0.068080448
		 0.79190809 -0.673006 -0.068080448 0.79190809 -0.673006 0.068080448 0.53443772 -0.673006 0.068080448
		 0.53443772 -0.673006 -0.030950317 -0.50670457 -0.673006 -0.030950317 -0.50670457 -1.56312776 -0.030950317
		 0.53443754 -1.56312776 -0.030950317;
	setAttr -s 92 ".ed[0:91]"  0 16 0 2 12 0 4 13 0 6 15 0 0 37 0 1 42 0
		 2 4 0 3 5 0 4 9 0 5 10 0 6 0 0 7 1 0 8 2 0 9 25 0 8 9 1 10 28 0 9 14 1 11 3 0 10 11 1
		 11 23 1 12 18 0 13 19 0 12 13 1 14 20 1 13 14 1 15 21 0 14 26 1 16 22 0 15 16 1 17 8 1
		 16 36 0 17 12 1 18 3 0 19 5 0 18 19 1 20 10 1 19 20 1 21 7 0 20 27 1 22 1 0 21 22 1
		 23 17 0 22 43 0 23 18 1 24 8 0 25 38 0 24 25 1 26 39 1 25 26 1 27 40 1 26 27 1 28 41 0
		 27 28 1 29 11 0 28 29 1 30 23 0 29 30 1 31 17 0 30 31 0 31 24 1 31 32 0 17 33 0 32 33 0
		 30 34 0 34 32 0 23 35 0 34 35 0 35 33 0 36 31 1 37 24 0 36 37 1 38 6 0 37 38 1 39 15 1
		 38 39 1 40 21 1 39 40 1 41 7 0 40 41 1 42 29 0 41 42 1 43 30 1 42 43 1 43 36 0 43 44 0
		 36 45 0 44 45 0 16 46 0 46 45 0 22 47 0 46 47 0 47 44 0;
	setAttr -s 46 -ch 184 ".fc[0:45]" -type "polyFaces" 
		f 4 0 30 70 -5
		mu 0 4 0 24 48 49
		f 4 1 22 -3 -7
		mu 0 4 2 20 21 4
		f 4 74 73 -4 -72
		mu 0 4 51 52 23 6
		f 4 3 28 -1 -11
		mu 0 4 6 23 25 8
		f 4 -12 -78 80 -6
		mu 0 4 1 10 55 56
		f 4 10 4 72 71
		mu 0 4 12 0 49 50
		f 4 -15 12 6 8
		mu 0 4 15 14 2 13
		f 4 2 24 -17 -9
		mu 0 4 4 21 22 16
		f 4 -19 -10 -8 -18
		mu 0 4 19 18 11 3
		f 4 -30 31 -2 -13
		mu 0 4 14 26 20 2
		f 4 20 34 -22 -23
		mu 0 4 20 27 28 21
		f 4 -25 21 36 -24
		mu 0 4 22 21 28 29
		f 4 -74 76 75 -26
		mu 0 4 23 52 53 30
		f 4 -29 25 40 -28
		mu 0 4 25 23 30 32
		f 4 86 -89 90 91
		mu 0 4 58 59 60 61
		f 4 -32 -42 43 -21
		mu 0 4 20 26 33 27
		f 4 32 7 -34 -35
		mu 0 4 27 3 5 28
		f 4 -37 33 9 -36
		mu 0 4 29 28 5 17
		f 4 -76 78 77 -38
		mu 0 4 30 53 54 7
		f 4 -41 37 11 -40
		mu 0 4 32 30 7 9
		f 4 -43 39 5 82
		mu 0 4 57 31 1 56
		f 4 -44 -20 17 -33
		mu 0 4 27 33 19 3
		f 4 -47 44 14 13
		mu 0 4 35 34 14 15
		f 4 16 26 -49 -14
		mu 0 4 16 22 37 36
		f 4 -51 -27 23 38
		mu 0 4 38 37 22 29
		f 4 -53 -39 35 15
		mu 0 4 39 38 29 17
		f 4 -55 -16 18 -54
		mu 0 4 41 40 18 19
		f 4 -56 -57 53 19
		mu 0 4 33 42 41 19
		f 4 -63 -65 66 67
		mu 0 4 44 45 46 47
		f 4 -60 57 29 -45
		mu 0 4 34 43 26 14
		f 4 -58 60 62 -62
		mu 0 4 26 43 45 44
		f 4 -59 63 64 -61
		mu 0 4 43 42 46 45
		f 4 55 65 -67 -64
		mu 0 4 42 33 47 46
		f 4 41 61 -68 -66
		mu 0 4 33 26 44 47
		f 4 -71 68 59 -70
		mu 0 4 49 48 43 34
		f 4 -73 69 46 45
		mu 0 4 50 49 34 35
		f 4 48 47 -75 -46
		mu 0 4 36 37 52 51
		f 4 -77 -48 50 49
		mu 0 4 53 52 37 38
		f 4 -79 -50 52 51
		mu 0 4 54 53 38 39
		f 4 -81 -52 54 -80
		mu 0 4 56 55 40 41
		f 4 -82 -83 79 56
		mu 0 4 42 57 56 41
		f 4 -69 -84 81 58
		mu 0 4 43 48 57 42
		f 4 83 85 -87 -85
		mu 0 4 57 48 59 58
		f 4 -31 87 88 -86
		mu 0 4 48 24 60 59
		f 4 27 89 -91 -88
		mu 0 4 24 31 61 60
		f 4 42 84 -92 -90
		mu 0 4 31 57 58 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube33" -p "group1";
	rename -uid "61EF79EA-4F54-E6A8-318B-FF97FDD9CCCC";
	setAttr ".rp" -type "double3" -2.5482514363043713 2.0997925121101466 -6.1081672219542327 ;
	setAttr ".sp" -type "double3" -2.5482514363043713 2.0997925121101466 -6.1081672219542327 ;
createNode mesh -n "pCubeShape33" -p "pCube33";
	rename -uid "38AA6F39-4819-8715-6BFD-A797E34132DA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.5482514 2.0997925 -6.1081672 
		-2.5482514 2.0997925 -6.1081672 -2.5482514 2.0997925 -6.1081672 -2.5482514 2.0997925 
		-6.1081672 -2.5482514 2.0997925 -6.1081672 -2.5482514 2.0997925 -6.1081672 -2.5482514 
		2.0997925 -6.1081672 -2.5482514 2.0997925 -6.1081672;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube34" -p "group1";
	rename -uid "0EA3036A-4404-CA1C-1AB2-22BBA6F7A338";
	setAttr ".rp" -type "double3" -2.5482514363043713 2.0997925121101466 -6.1081672219542327 ;
	setAttr ".sp" -type "double3" -2.5482514363043713 2.0997925121101466 -6.1081672219542327 ;
createNode mesh -n "pCubeShape34" -p "pCube34";
	rename -uid "5840FFE5-4ED1-64BE-C612-D2BE5955C956";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5732515 2.8747926 -6.1081672 
		-1.7732515 3.0747924 -6.1081672 -3.3232512 1.1247925 -6.1081672 -3.5232513 1.3247925 
		-6.1081672 -3.3232512 1.1247925 -6.1081672 -3.5232513 1.3247925 -6.1081672 -1.5732515 
		2.8747926 -6.1081672 -1.7732515 3.0747924 -6.1081672;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe8" -p "group1";
	rename -uid "2524E372-4574-55F8-4DD8-0AAFB452C548";
	setAttr ".rp" -type "double3" -2.563190108207587 2.1045507638252956 -6.1397840902923519 ;
	setAttr ".sp" -type "double3" -2.563190108207587 2.1045507638252956 -6.1397840902923519 ;
createNode mesh -n "pPipeShape8" -p "pPipe8";
	rename -uid "E3D25F26-4A19-06B7-9E54-059FC9775F6C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -2.514662 3.078079 -6.3272839 
		-3.4117181 3.078079 -5.5272841 -2.6117182 1.3810225 -6.3272839 -1.7146621 1.3810228 
		-7.127284 -2.514662 2.828079 -5.9522839 -3.4117181 2.828079 -5.1522841 -2.6117182 
		1.1310226 -5.9522839 -1.7146621 1.1310227 -6.752284 -2.5025299 3.040211 -5.9522839 
		-3.6238503 3.040211 -4.9522843 -2.6238501 0.91889054 -5.9522839 -1.5025299 0.91889077 
		-6.9522839 -2.5025299 3.290211 -6.3272839 -3.6238503 3.290211 -5.3272839 -2.6238501 
		1.1688905 -6.3272839 -1.5025299 1.1688907 -7.3272839;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube35" -p "group1";
	rename -uid "67DBE778-4052-B85F-FCC9-CD94FD8FF5A6";
	setAttr ".rp" -type "double3" -2.5715552825158614 5.5261290792117554 6.1835718257510113 ;
	setAttr ".sp" -type "double3" -2.5715552825158614 5.5261290792117554 6.1835718257510113 ;
createNode mesh -n "pCubeShape35" -p "pCube35";
	rename -uid "29403B2D-484C-E3CC-C46F-43907BCC7770";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.5715551 5.5261292 6.1835718 
		-2.5715551 5.5261292 6.1835718 -2.5715551 5.5261292 6.1835718 -2.5715551 5.5261292 
		6.1835718 -2.5715551 5.5261292 6.1835718 -2.5715551 5.5261292 6.1835718 -2.5715551 
		5.5261292 6.1835718 -2.5715551 5.5261292 6.1835718;
	setAttr -s 8 ".vt[0:7]"  -1.20000005 -0.075000003 0.2 1.20000005 -0.075000003 0.2
		 -1.20000005 0.075000003 0.2 1.20000005 0.075000003 0.2 -1.20000005 0.075000003 -0.2
		 1.20000005 0.075000003 -0.2 -1.20000005 -0.075000003 -0.2 1.20000005 -0.075000003 -0.2;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube36" -p "group1";
	rename -uid "3384F366-4B52-07DE-0CEB-099F5F297EE1";
	setAttr ".rp" -type "double3" 2.7593500948641174 5.5261290792117554 6.1835718257510113 ;
	setAttr ".sp" -type "double3" 2.7593500948641174 5.5261290792117554 6.1835718257510113 ;
createNode mesh -n "pCubeShape36" -p "pCube36";
	rename -uid "E4A1E420-494E-6265-D00E-ABA1A3604A73";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.7593501 5.5261292 6.1835718 
		2.7593501 5.5261292 6.1835718 2.7593501 5.5261292 6.1835718 2.7593501 5.5261292 6.1835718 
		2.7593501 5.5261292 6.1835718 2.7593501 5.5261292 6.1835718 2.7593501 5.5261292 6.1835718 
		2.7593501 5.5261292 6.1835718;
	setAttr -s 8 ".vt[0:7]"  -1.20000005 -0.075000003 0.2 1.20000005 -0.075000003 0.2
		 -1.20000005 0.075000003 0.2 1.20000005 0.075000003 0.2 -1.20000005 0.075000003 -0.2
		 1.20000005 0.075000003 -0.2 -1.20000005 -0.075000003 -0.2 1.20000005 -0.075000003 -0.2;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube37" -p "group1";
	rename -uid "F162F8D7-4048-1B6E-7573-8A84129D7C68";
	setAttr ".rp" -type "double3" 2.7593500948641174 1.0423318816288552 6.1835718257510113 ;
	setAttr ".sp" -type "double3" 2.7593500948641174 1.0423318816288552 6.1835718257510113 ;
createNode mesh -n "pCubeShape37" -p "pCube37";
	rename -uid "6608D8ED-43FB-BB6B-581A-F39352DA16BB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.7593501 1.0423318 6.1835718 
		2.7593501 1.0423318 6.1835718 2.7593501 1.0423318 6.1835718 2.7593501 1.0423318 6.1835718 
		2.7593501 1.0423318 6.1835718 2.7593501 1.0423318 6.1835718 2.7593501 1.0423318 6.1835718 
		2.7593501 1.0423318 6.1835718;
	setAttr -s 8 ".vt[0:7]"  -1.20000005 -0.075000003 0.2 1.20000005 -0.075000003 0.2
		 -1.20000005 0.075000003 0.2 1.20000005 0.075000003 0.2 -1.20000005 0.075000003 -0.2
		 1.20000005 0.075000003 -0.2 -1.20000005 -0.075000003 -0.2 1.20000005 -0.075000003 -0.2;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube38" -p "group1";
	rename -uid "9E559AF4-4064-615E-AF6D-89B95876850B";
	setAttr ".rp" -type "double3" -2.5715552825158614 1.0615077211917208 -6.3267330339647607 ;
	setAttr ".sp" -type "double3" -2.5715552825158614 1.0615077211917208 -6.3267330339647607 ;
createNode mesh -n "pCubeShape38" -p "pCube38";
	rename -uid "98A60003-4CA4-AC14-32D0-BBA7C51BA58D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.5715551 1.0615077 -6.3267326 
		-2.5715551 1.0615077 -6.3267326 -2.5715551 1.0615077 -6.3267326 -2.5715551 1.0615077 
		-6.3267326 -2.5715551 1.0615077 -6.3267326 -2.5715551 1.0615077 -6.3267326 -2.5715551 
		1.0615077 -6.3267326 -2.5715551 1.0615077 -6.3267326;
	setAttr -s 8 ".vt[0:7]"  -1.20000005 -0.075000003 0.2 1.20000005 -0.075000003 0.2
		 -1.20000005 0.075000003 0.2 1.20000005 0.075000003 0.2 -1.20000005 0.075000003 -0.2
		 1.20000005 0.075000003 -0.2 -1.20000005 -0.075000003 -0.2 1.20000005 -0.075000003 -0.2;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube41" -p "group1";
	rename -uid "F7658D25-43C4-1657-F1C5-C0A7A2D2A7E4";
	setAttr ".rp" -type "double3" -4.3854555683602721 6.0560523715595558 -6.1081672219542327 ;
	setAttr ".sp" -type "double3" -4.3854555683602721 6.0560523715595558 -6.1081672219542327 ;
createNode mesh -n "pCubeShape41" -p "pCube41";
	rename -uid "93EE681B-4F9B-4F59-9732-7E91F6F8020D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.3854556 6.0560522 -6.1081672 
		-4.3854556 6.0560522 -6.1081672 -4.3854556 6.0560522 -6.1081672 -4.3854556 6.0560522 
		-6.1081672 -4.3854556 6.0560522 -6.1081672 -4.3854556 6.0560522 -6.1081672 -4.3854556 
		6.0560522 -6.1081672 -4.3854556 6.0560522 -6.1081672;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube42" -p "group1";
	rename -uid "3E8445AC-4C02-DC1E-81B8-4EA670B67E90";
	setAttr ".rp" -type "double3" -4.3854555683602721 6.0560523715595558 -6.1081672219542327 ;
	setAttr ".sp" -type "double3" -4.3854555683602721 6.0560523715595558 -6.1081672219542327 ;
createNode mesh -n "pCubeShape42" -p "pCube42";
	rename -uid "6FCD0BF9-4E15-DB77-386D-3292DE4F5563";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -3.4104557 6.8310523 -6.1081672 
		-3.6104555 7.0310521 -6.1081672 -5.1604552 5.0810523 -6.1081672 -5.3604555 5.2810521 
		-6.1081672 -5.1604552 5.0810523 -6.1081672 -5.3604555 5.2810521 -6.1081672 -3.4104557 
		6.8310523 -6.1081672 -3.6104555 7.0310521 -6.1081672;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe10" -p "group1";
	rename -uid "5462FD8A-49F8-3EEF-BC23-2584BE6C1303";
	setAttr ".rp" -type "double3" -4.4003942402634877 6.0608106232747048 -6.1397840902923519 ;
	setAttr ".sp" -type "double3" -4.4003942402634877 6.0608106232747048 -6.1397840902923519 ;
createNode mesh -n "pPipeShape10" -p "pPipe10";
	rename -uid "0B89484D-4DDD-71B0-6846-45AE15822520";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -4.3518662 7.034339 -6.3272839 
		-5.2489223 7.034339 -5.5272841 -4.4489226 5.3372827 -6.3272839 -3.5518661 5.3372827 
		-7.127284 -4.3518662 6.784339 -5.9522839 -5.2489223 6.784339 -5.1522841 -4.4489226 
		5.0872822 -5.9522839 -3.5518661 5.0872827 -6.752284 -4.3397341 6.9964709 -5.9522839 
		-5.4610548 6.9964709 -4.9522843 -4.4610543 4.8751507 -5.9522839 -3.3397341 4.8751507 
		-6.9522839 -4.3397341 7.2464709 -6.3272839 -5.4610548 7.2464709 -5.3272839 -4.4610543 
		5.1251502 -6.3272839 -3.3397341 5.1251507 -7.3272839;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube43" -p "group1";
	rename -uid "34AF2856-4015-9F99-ACE1-23AAC7AB83D8";
	setAttr ".rp" -type "double3" -4.4087594145717617 5.0177675806411308 -6.3267330339647607 ;
	setAttr ".sp" -type "double3" -4.4087594145717617 5.0177675806411308 -6.3267330339647607 ;
createNode mesh -n "pCubeShape43" -p "pCube43";
	rename -uid "92808715-402C-2BC4-4CFC-D2B131AAB914";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.4087596 5.0177674 -6.3267326 
		-4.4087596 5.0177674 -6.3267326 -4.4087596 5.0177674 -6.3267326 -4.4087596 5.0177674 
		-6.3267326 -4.4087596 5.0177674 -6.3267326 -4.4087596 5.0177674 -6.3267326 -4.4087596 
		5.0177674 -6.3267326 -4.4087596 5.0177674 -6.3267326;
	setAttr -s 8 ".vt[0:7]"  -1.20000005 -0.075000003 0.2 1.20000005 -0.075000003 0.2
		 -1.20000005 0.075000003 0.2 1.20000005 0.075000003 0.2 -1.20000005 0.075000003 -0.2
		 1.20000005 0.075000003 -0.2 -1.20000005 -0.075000003 -0.2 1.20000005 -0.075000003 -0.2;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube44" -p "group1";
	rename -uid "0FC4CFC7-49C9-9E5A-1A36-6AB1A7D997BE";
	setAttr ".rp" -type "double3" 4.2306631024787462 6.0560523715595558 -6.1081672219542327 ;
	setAttr ".sp" -type "double3" 4.2306631024787462 6.0560523715595558 -6.1081672219542327 ;
createNode mesh -n "pCubeShape44" -p "pCube44";
	rename -uid "618A349C-4138-232B-07D5-1EB638F5D551";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.2306633 6.0560522 -6.1081672 
		4.2306633 6.0560522 -6.1081672 4.2306633 6.0560522 -6.1081672 4.2306633 6.0560522 
		-6.1081672 4.2306633 6.0560522 -6.1081672 4.2306633 6.0560522 -6.1081672 4.2306633 
		6.0560522 -6.1081672 4.2306633 6.0560522 -6.1081672;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube45" -p "group1";
	rename -uid "B41148DD-4242-2A77-85FB-9F84289E6F50";
	setAttr ".rp" -type "double3" 4.2306631024787462 6.0560523715595558 -6.1081672219542327 ;
	setAttr ".sp" -type "double3" 4.2306631024787462 6.0560523715595558 -6.1081672219542327 ;
createNode mesh -n "pCubeShape45" -p "pCube45";
	rename -uid "AD3B16B6-4FF6-8896-772E-59B9D1059C3D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.2056627 6.8310523 -6.1081672 
		5.0056629 7.0310521 -6.1081672 3.4556632 5.0810523 -6.1081672 3.2556632 5.2810521 
		-6.1081672 3.4556632 5.0810523 -6.1081672 3.2556632 5.2810521 -6.1081672 5.2056627 
		6.8310523 -6.1081672 5.0056629 7.0310521 -6.1081672;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe11" -p "group1";
	rename -uid "324B6D2A-4C57-6344-063C-2A952F182B92";
	setAttr ".rp" -type "double3" 4.2157244305755306 6.0608106232747048 -6.1397840902923519 ;
	setAttr ".sp" -type "double3" 4.2157244305755306 6.0608106232747048 -6.1397840902923519 ;
createNode mesh -n "pPipeShape11" -p "pPipe11";
	rename -uid "4D647CC2-4787-30A3-D847-D69EF2A7178D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  4.2642527 7.034339 -6.3272839 
		3.3671963 7.034339 -5.5272841 4.1671963 5.3372827 -6.3272839 5.0642529 5.3372827 
		-7.127284 4.2642527 6.784339 -5.9522839 3.3671963 6.784339 -5.1522841 4.1671963 5.0872822 
		-5.9522839 5.0642529 5.0872827 -6.752284 4.2763844 6.9964709 -5.9522839 3.1550643 
		6.9964709 -4.9522843 4.1550646 4.8751507 -5.9522839 5.2763848 4.8751507 -6.9522839 
		4.2763844 7.2464709 -6.3272839 3.1550643 7.2464709 -5.3272839 4.1550646 5.1251502 
		-6.3272839 5.2763848 5.1251507 -7.3272839;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube46" -p "group1";
	rename -uid "BAD39243-4197-8785-7AB0-20BB7B881670";
	setAttr ".rp" -type "double3" 4.2073592562672557 5.0177675806411308 -6.3267330339647607 ;
	setAttr ".sp" -type "double3" 4.2073592562672557 5.0177675806411308 -6.3267330339647607 ;
createNode mesh -n "pCubeShape46" -p "pCube46";
	rename -uid "FBF192B2-48F9-AEBF-EFBC-75AA35F22744";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.2073593 5.0177674 -6.3267326 
		4.2073593 5.0177674 -6.3267326 4.2073593 5.0177674 -6.3267326 4.2073593 5.0177674 
		-6.3267326 4.2073593 5.0177674 -6.3267326 4.2073593 5.0177674 -6.3267326 4.2073593 
		5.0177674 -6.3267326 4.2073593 5.0177674 -6.3267326;
	setAttr -s 8 ".vt[0:7]"  -1.20000005 -0.075000003 0.2 1.20000005 -0.075000003 0.2
		 -1.20000005 0.075000003 0.2 1.20000005 0.075000003 0.2 -1.20000005 0.075000003 -0.2
		 1.20000005 0.075000003 -0.2 -1.20000005 -0.075000003 -0.2 1.20000005 -0.075000003 -0.2;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere1" -p "group7";
	rename -uid "7F7227AF-48D0-8A3F-754C-53A48875AAC7";
	setAttr ".rp" -type "double3" 4.9285868657012584 11.953466671497884 -5.3714836741943124 ;
	setAttr ".sp" -type "double3" 4.9285868657012584 11.953466671497884 -5.3714836741943124 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "6D2EA751-450A-D729-A630-B6938CCD992B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 119 ".uvst[0].uvsp[0:118]" -type "float2" 0 0.1 0.1 0.1 0.2
		 0.1 0.30000001 0.1 0.40000001 0.1 0.5 0.1 0.60000002 0.1 0.70000005 0.1 0.80000007
		 0.1 0.9000001 0.1 1.000000119209 0.1 0 0.2 0.1 0.2 0.2 0.2 0.30000001 0.2 0.40000001
		 0.2 0.5 0.2 0.60000002 0.2 0.70000005 0.2 0.80000007 0.2 0.9000001 0.2 1.000000119209
		 0.2 0 0.30000001 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000001 0.30000001
		 0.5 0.30000001 0.60000002 0.30000001 0.70000005 0.30000001 0.80000007 0.30000001
		 0.9000001 0.30000001 1.000000119209 0.30000001 0 0.40000001 0.1 0.40000001 0.2 0.40000001
		 0.30000001 0.40000001 0.40000001 0.40000001 0.5 0.40000001 0.60000002 0.40000001
		 0.70000005 0.40000001 0.80000007 0.40000001 0.9000001 0.40000001 1.000000119209 0.40000001
		 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.70000005
		 0.5 0.80000007 0.5 0.9000001 0.5 1.000000119209 0.5 0 0.60000002 0.1 0.60000002 0.2
		 0.60000002 0.30000001 0.60000002 0.40000001 0.60000002 0.5 0.60000002 0.60000002
		 0.60000002 0.70000005 0.60000002 0.80000007 0.60000002 0.9000001 0.60000002 1.000000119209
		 0.60000002 0 0.70000005 0.1 0.70000005 0.2 0.70000005 0.30000001 0.70000005 0.40000001
		 0.70000005 0.5 0.70000005 0.60000002 0.70000005 0.70000005 0.70000005 0.80000007
		 0.70000005 0.9000001 0.70000005 1.000000119209 0.70000005 0 0.80000007 0.1 0.80000007
		 0.2 0.80000007 0.30000001 0.80000007 0.40000001 0.80000007 0.5 0.80000007 0.60000002
		 0.80000007 0.70000005 0.80000007 0.80000007 0.80000007 0.9000001 0.80000007 1.000000119209
		 0.80000007 0 0.9000001 0.1 0.9000001 0.2 0.9000001 0.30000001 0.9000001 0.40000001
		 0.9000001 0.5 0.9000001 0.60000002 0.9000001 0.70000005 0.9000001 0.80000007 0.9000001
		 0.9000001 0.9000001 1.000000119209 0.9000001 0.050000001 0 0.15000001 0 0.25 0 0.35000002
		 0 0.45000002 0 0.55000001 0 0.65000004 0 0.75 0 0.85000002 0 0.95000005 0 0.050000001
		 1 0.15000001 1 0.25 1 0.35000002 1 0.45000002 1 0.55000001 1 0.65000004 1 0.75 1
		 0.85000002 1 0.95000005 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 92 ".pt[0:91]" -type "float3"  4.7664609 12.627345 -5.2095737 
		4.8925924 12.627345 -5.1452007 5.0324726 12.627345 -5.1672597 5.1326723 12.627345 
		-5.2673254 5.1549177 12.627345 -5.407176 5.090713 12.627345 -5.5333934 4.9645815 
		12.627345 -5.5977669 4.8247013 12.627345 -5.5757074 4.7245021 12.627345 -5.4756422 
		4.7022557 12.627345 -5.3357911 4.6202049 12.526702 -5.0635128 4.8601213 12.526702 
		-4.9410677 5.1261888 12.526702 -4.9830265 5.3167796 12.526702 -5.1733632 5.3590941 
		12.526702 -5.4393749 5.236969 12.526702 -5.6794543 4.9970527 12.526702 -5.8018994 
		4.7309847 12.526702 -5.7599406 4.5403938 12.526702 -5.5696044 4.4980798 12.526702 
		-5.3035927 4.5041351 12.369946 -4.9475985 4.834352 12.369946 -4.7790666 5.2005634 
		12.369946 -4.8368182 5.4628887 12.369946 -5.098794 5.5211291 12.369946 -5.4649282 
		5.3530383 12.369946 -5.7953691 5.0228219 12.369946 -5.9639006 4.6566105 12.369946 
		-5.9061489 4.3942852 12.369946 -5.6441736 4.3360448 12.369946 -5.2780395 4.4296141 
		12.172423 -4.8731766 4.8178072 12.172423 -4.675056 5.2483144 12.172423 -4.7429471 
		5.5566959 12.172423 -5.0509176 5.6251616 12.172423 -5.4813337 5.4275599 12.172423 
		-5.8697906 5.0393667 12.172423 -6.0679111 4.60886 12.172423 -6.00002 4.3004775 12.172423 
		-5.6920495 4.2320118 12.172423 -5.2616334 4.4039359 11.953466 -4.8475323 4.8121061 
		11.953466 -4.6392159 5.2647681 11.953466 -4.7106013 5.5890203 11.953466 -5.034421 
		5.6610093 11.953466 -5.4869866 5.453238 11.953466 -5.8954344 5.0450678 11.953466 
		-6.1037512 4.5924058 11.953466 -6.0323663 4.2681537 11.953466 -5.7085466 4.1961646 
		11.953466 -5.25598 4.4296141 11.73451 -4.8731766 4.8178072 11.73451 -4.675056 5.2483144 
		11.73451 -4.7429471 5.5566959 11.73451 -5.0509176 5.6251616 11.73451 -5.4813337 5.4275599 
		11.73451 -5.8697906 5.0393667 11.73451 -6.0679111 4.60886 11.73451 -6.00002 4.3004775 
		11.73451 -5.6920495 4.2320118 11.73451 -5.2616334 4.5041351 11.536987 -4.9475985 
		4.834352 11.536987 -4.7790666 5.2005634 11.536987 -4.8368182 5.4628887 11.536987 
		-5.098794 5.5211291 11.536987 -5.4649282 5.3530383 11.536987 -5.7953691 5.0228219 
		11.536987 -5.9639006 4.6566105 11.536987 -5.9061489 4.3942852 11.536987 -5.6441736 
		4.3360448 11.536987 -5.2780395 4.6202049 11.380232 -5.0635128 4.8601213 11.380232 
		-4.9410677 5.1261888 11.380232 -4.9830265 5.3167796 11.380232 -5.1733632 5.3590941 
		11.380232 -5.4393749 5.236969 11.380232 -5.6794543 4.9970527 11.380232 -5.8018994 
		4.7309847 11.380232 -5.7599406 4.5403938 11.380232 -5.5696044 4.4980798 11.380232 
		-5.3035927 4.7664609 11.279589 -5.2095737 4.8925924 11.279589 -5.1452007 5.0324726 
		11.279589 -5.1672597 5.1326723 11.279589 -5.2673254 5.1549177 11.279589 -5.407176 
		5.090713 11.279589 -5.5333934 4.9645815 11.279589 -5.5977669 4.8247013 11.279589 
		-5.5757074 4.7245021 11.279589 -5.4756422 4.7022557 11.279589 -5.3357911 4.928587 
		12.662024 -5.3714838 4.928587 11.244909 -5.3714838;
	setAttr -s 92 ".vt[0:91]"  0.25000003 -0.95105654 -0.18163568 0.095491499 -0.95105654 -0.29389271
		 -0.095491551 -0.95105654 -0.29389268 -0.25000009 -0.95105654 -0.18163565 -0.30901706 -0.95105654 1.8418849e-08
		 -0.25000003 -0.95105654 0.18163566 -0.095491506 -0.95105654 0.29389268 0.095491521 -0.95105654 0.29389265
		 0.25000003 -0.95105654 0.18163565 0.309017 -0.95105654 0 0.4755283 -0.809017 -0.34549159
		 0.1816356 -0.809017 -0.55901712 -0.18163572 -0.809017 -0.55901706 -0.47552836 -0.809017 -0.3454915
		 -0.58778536 -0.809017 3.5034731e-08 -0.4755283 -0.809017 0.34549156 -0.18163563 -0.809017 0.55901706
		 0.18163566 -0.809017 0.559017 0.47552827 -0.809017 0.3454915 0.58778524 -0.809017 0
		 0.65450859 -0.58778524 -0.47552842 0.24999996 -0.58778524 -0.7694211 -0.25000012 -0.58778524 -0.76942098
		 -0.65450865 -0.58778524 -0.47552827 -0.80901712 -0.58778524 4.8221171e-08 -0.65450859 -0.58778524 0.47552836
		 -0.25 -0.58778524 0.76942098 0.25000003 -0.58778524 0.76942092 0.65450853 -0.58778524 0.47552827
		 0.809017 -0.58778524 0 0.76942092 -0.30901697 -0.55901712 0.29389256 -0.30901697 -0.90450865
		 -0.29389277 -0.30901697 -0.90450859 -0.7694211 -0.30901697 -0.559017 -0.9510566 -0.30901697 5.6687387e-08
		 -0.76942092 -0.30901697 0.55901712 -0.29389262 -0.30901697 0.90450859 0.29389268 -0.30901697 0.90450853
		 0.76942092 -0.30901697 0.559017 0.95105654 -0.30901697 0 0.809017 0 -0.58778542 0.30901694 0 -0.95105672
		 -0.30901715 0 -0.9510566 -0.80901718 0 -0.58778524 -1.000000119209 0 5.9604645e-08
		 -0.809017 0 0.58778536 -0.30901697 0 0.9510566 0.30901703 0 0.95105654 0.809017 0 0.58778524
		 1 0 0 0.76942092 0.30901697 -0.55901712 0.29389256 0.30901697 -0.90450865 -0.29389277 0.30901697 -0.90450859
		 -0.7694211 0.30901697 -0.559017 -0.9510566 0.30901697 5.6687387e-08 -0.76942092 0.30901697 0.55901712
		 -0.29389262 0.30901697 0.90450859 0.29389268 0.30901697 0.90450853 0.76942092 0.30901697 0.559017
		 0.95105654 0.30901697 0 0.65450859 0.58778524 -0.47552842 0.24999996 0.58778524 -0.7694211
		 -0.25000012 0.58778524 -0.76942098 -0.65450865 0.58778524 -0.47552827 -0.80901712 0.58778524 4.8221171e-08
		 -0.65450859 0.58778524 0.47552836 -0.25 0.58778524 0.76942098 0.25000003 0.58778524 0.76942092
		 0.65450853 0.58778524 0.47552827 0.809017 0.58778524 0 0.4755283 0.809017 -0.34549159
		 0.1816356 0.809017 -0.55901712 -0.18163572 0.809017 -0.55901706 -0.47552836 0.809017 -0.3454915
		 -0.58778536 0.809017 3.5034731e-08 -0.4755283 0.809017 0.34549156 -0.18163563 0.809017 0.55901706
		 0.18163566 0.809017 0.559017 0.47552827 0.809017 0.3454915 0.58778524 0.809017 0
		 0.25000003 0.95105654 -0.18163568 0.095491499 0.95105654 -0.29389271 -0.095491551 0.95105654 -0.29389268
		 -0.25000009 0.95105654 -0.18163565 -0.30901706 0.95105654 1.8418849e-08 -0.25000003 0.95105654 0.18163566
		 -0.095491506 0.95105654 0.29389268 0.095491521 0.95105654 0.29389265 0.25000003 0.95105654 0.18163565
		 0.309017 0.95105654 0 0 -1 0 0 1 0;
	setAttr -s 190 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 10 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 20 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 30 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 40 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 50 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 60 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 70 0 80 81 0 81 82 0 82 83 0 83 84 0 84 85 0 85 86 0
		 86 87 0 87 88 0 88 89 0 89 80 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0
		 7 17 0 8 18 0 9 19 0 10 20 0 11 21 0 12 22 0 13 23 0 14 24 0 15 25 0 16 26 0 17 27 0
		 18 28 0 19 29 0 20 30 0 21 31 0 22 32 0 23 33 0 24 34 0 25 35 0 26 36 0 27 37 0 28 38 0
		 29 39 0 30 40 0 31 41 0 32 42 0 33 43 0 34 44 0 35 45 0 36 46 0 37 47 0 38 48 0 39 49 0
		 40 50 0 41 51 0 42 52 0 43 53 0 44 54 0 45 55 0 46 56 0 47 57 0 48 58 0 49 59 0 50 60 0
		 51 61 0 52 62 0 53 63 0 54 64 0 55 65 0 56 66 0 57 67 0 58 68 0 59 69 0 60 70 0 61 71 0
		 62 72 0 63 73 0 64 74 0 65 75 0 66 76 0 67 77 0 68 78 0 69 79 0 70 80 0 71 81 0 72 82 0
		 73 83 0 74 84 0 75 85 0;
	setAttr ".ed[166:189]" 76 86 0 77 87 0 78 88 0 79 89 0 90 0 0 90 1 0 90 2 0
		 90 3 0 90 4 0 90 5 0 90 6 0 90 7 0 90 8 0 90 9 0 80 91 0 81 91 0 82 91 0 83 91 0
		 84 91 0 85 91 0 86 91 0 87 91 0 88 91 0 89 91 0;
	setAttr -s 100 -ch 380 ".fc[0:99]" -type "polyFaces" 
		f 4 0 91 -11 -91
		mu 0 4 0 1 12 11
		f 4 1 92 -12 -92
		mu 0 4 1 2 13 12
		f 4 2 93 -13 -93
		mu 0 4 2 3 14 13
		f 4 3 94 -14 -94
		mu 0 4 3 4 15 14
		f 4 4 95 -15 -95
		mu 0 4 4 5 16 15
		f 4 5 96 -16 -96
		mu 0 4 5 6 17 16
		f 4 6 97 -17 -97
		mu 0 4 6 7 18 17
		f 4 7 98 -18 -98
		mu 0 4 7 8 19 18
		f 4 8 99 -19 -99
		mu 0 4 8 9 20 19
		f 4 9 90 -20 -100
		mu 0 4 9 10 21 20
		f 4 10 101 -21 -101
		mu 0 4 11 12 23 22
		f 4 11 102 -22 -102
		mu 0 4 12 13 24 23
		f 4 12 103 -23 -103
		mu 0 4 13 14 25 24
		f 4 13 104 -24 -104
		mu 0 4 14 15 26 25
		f 4 14 105 -25 -105
		mu 0 4 15 16 27 26
		f 4 15 106 -26 -106
		mu 0 4 16 17 28 27
		f 4 16 107 -27 -107
		mu 0 4 17 18 29 28
		f 4 17 108 -28 -108
		mu 0 4 18 19 30 29
		f 4 18 109 -29 -109
		mu 0 4 19 20 31 30
		f 4 19 100 -30 -110
		mu 0 4 20 21 32 31
		f 4 20 111 -31 -111
		mu 0 4 22 23 34 33
		f 4 21 112 -32 -112
		mu 0 4 23 24 35 34
		f 4 22 113 -33 -113
		mu 0 4 24 25 36 35
		f 4 23 114 -34 -114
		mu 0 4 25 26 37 36
		f 4 24 115 -35 -115
		mu 0 4 26 27 38 37
		f 4 25 116 -36 -116
		mu 0 4 27 28 39 38
		f 4 26 117 -37 -117
		mu 0 4 28 29 40 39
		f 4 27 118 -38 -118
		mu 0 4 29 30 41 40
		f 4 28 119 -39 -119
		mu 0 4 30 31 42 41
		f 4 29 110 -40 -120
		mu 0 4 31 32 43 42
		f 4 30 121 -41 -121
		mu 0 4 33 34 45 44
		f 4 31 122 -42 -122
		mu 0 4 34 35 46 45
		f 4 32 123 -43 -123
		mu 0 4 35 36 47 46
		f 4 33 124 -44 -124
		mu 0 4 36 37 48 47
		f 4 34 125 -45 -125
		mu 0 4 37 38 49 48
		f 4 35 126 -46 -126
		mu 0 4 38 39 50 49
		f 4 36 127 -47 -127
		mu 0 4 39 40 51 50
		f 4 37 128 -48 -128
		mu 0 4 40 41 52 51
		f 4 38 129 -49 -129
		mu 0 4 41 42 53 52
		f 4 39 120 -50 -130
		mu 0 4 42 43 54 53
		f 4 40 131 -51 -131
		mu 0 4 44 45 56 55
		f 4 41 132 -52 -132
		mu 0 4 45 46 57 56
		f 4 42 133 -53 -133
		mu 0 4 46 47 58 57
		f 4 43 134 -54 -134
		mu 0 4 47 48 59 58
		f 4 44 135 -55 -135
		mu 0 4 48 49 60 59
		f 4 45 136 -56 -136
		mu 0 4 49 50 61 60
		f 4 46 137 -57 -137
		mu 0 4 50 51 62 61
		f 4 47 138 -58 -138
		mu 0 4 51 52 63 62
		f 4 48 139 -59 -139
		mu 0 4 52 53 64 63
		f 4 49 130 -60 -140
		mu 0 4 53 54 65 64
		f 4 50 141 -61 -141
		mu 0 4 55 56 67 66
		f 4 51 142 -62 -142
		mu 0 4 56 57 68 67
		f 4 52 143 -63 -143
		mu 0 4 57 58 69 68
		f 4 53 144 -64 -144
		mu 0 4 58 59 70 69
		f 4 54 145 -65 -145
		mu 0 4 59 60 71 70
		f 4 55 146 -66 -146
		mu 0 4 60 61 72 71
		f 4 56 147 -67 -147
		mu 0 4 61 62 73 72
		f 4 57 148 -68 -148
		mu 0 4 62 63 74 73
		f 4 58 149 -69 -149
		mu 0 4 63 64 75 74
		f 4 59 140 -70 -150
		mu 0 4 64 65 76 75
		f 4 60 151 -71 -151
		mu 0 4 66 67 78 77
		f 4 61 152 -72 -152
		mu 0 4 67 68 79 78
		f 4 62 153 -73 -153
		mu 0 4 68 69 80 79
		f 4 63 154 -74 -154
		mu 0 4 69 70 81 80
		f 4 64 155 -75 -155
		mu 0 4 70 71 82 81
		f 4 65 156 -76 -156
		mu 0 4 71 72 83 82
		f 4 66 157 -77 -157
		mu 0 4 72 73 84 83
		f 4 67 158 -78 -158
		mu 0 4 73 74 85 84
		f 4 68 159 -79 -159
		mu 0 4 74 75 86 85
		f 4 69 150 -80 -160
		mu 0 4 75 76 87 86
		f 4 70 161 -81 -161
		mu 0 4 77 78 89 88
		f 4 71 162 -82 -162
		mu 0 4 78 79 90 89
		f 4 72 163 -83 -163
		mu 0 4 79 80 91 90
		f 4 73 164 -84 -164
		mu 0 4 80 81 92 91
		f 4 74 165 -85 -165
		mu 0 4 81 82 93 92
		f 4 75 166 -86 -166
		mu 0 4 82 83 94 93
		f 4 76 167 -87 -167
		mu 0 4 83 84 95 94
		f 4 77 168 -88 -168
		mu 0 4 84 85 96 95
		f 4 78 169 -89 -169
		mu 0 4 85 86 97 96
		f 4 79 160 -90 -170
		mu 0 4 86 87 98 97
		f 3 -1 -171 171
		mu 0 3 1 0 99
		f 3 -2 -172 172
		mu 0 3 2 1 100
		f 3 -3 -173 173
		mu 0 3 3 2 101
		f 3 -4 -174 174
		mu 0 3 4 3 102
		f 3 -5 -175 175
		mu 0 3 5 4 103
		f 3 -6 -176 176
		mu 0 3 6 5 104
		f 3 -7 -177 177
		mu 0 3 7 6 105
		f 3 -8 -178 178
		mu 0 3 8 7 106
		f 3 -9 -179 179
		mu 0 3 9 8 107
		f 3 -10 -180 170
		mu 0 3 10 9 108
		f 3 80 181 -181
		mu 0 3 88 89 109
		f 3 81 182 -182
		mu 0 3 89 90 110
		f 3 82 183 -183
		mu 0 3 90 91 111
		f 3 83 184 -184
		mu 0 3 91 92 112
		f 3 84 185 -185
		mu 0 3 92 93 113
		f 3 85 186 -186
		mu 0 3 93 94 114
		f 3 86 187 -187
		mu 0 3 94 95 115
		f 3 87 188 -188
		mu 0 3 95 96 116
		f 3 88 189 -189
		mu 0 3 96 97 117
		f 3 89 180 -190
		mu 0 3 97 98 118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane2" -p "group7";
	rename -uid "259D9F9A-4895-16E5-3413-F7B7740BB06B";
	setAttr ".rp" -type "double3" 2.7982387635062715 6.5559182818598263 6.0587039207084414 ;
	setAttr ".sp" -type "double3" 2.7982387635062715 6.5559182818598263 6.0587039207084414 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	rename -uid "EFB47A02-4531-D375-5C35-DB966E58FC56";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  2.7982388 5.6564655 5.1273217 
		2.7982388 5.6564655 5.1273217 2.7982388 7.4553709 6.9900861 2.7982388 7.4553709 6.9900861;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 0 0.89999998 0.89999998 0 0.89999998
		 -0.89999998 0 -0.89999998 0.89999998 0 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane3" -p "group7";
	rename -uid "AF742A89-4836-3F29-EDBC-29B1B7D529BA";
	setAttr ".rp" -type "double3" 2.7982387635062715 2.0796215579285842 6.0466701904075695 ;
	setAttr ".sp" -type "double3" 2.7982387635062715 2.0796215579285842 6.0466701904075695 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	rename -uid "520DBAAE-440A-F691-6169-4EBF116E4D13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  2.7982388 1.1801689 5.1152883 
		2.7982388 1.1801689 5.1152883 2.7982388 2.9790745 6.9780521 2.7982388 2.9790745 6.9780521;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 -1.9984014e-16 0.89999998 0.89999998 -1.9984014e-16 0.89999998
		 -0.89999998 1.9984014e-16 -0.89999998 0.89999998 1.9984014e-16 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane4" -p "group7";
	rename -uid "27CF64DB-4DF1-EDEA-5C7B-B4A702B0027F";
	setAttr ".rp" -type "double3" -2.5949635970807523 6.5559182818598263 6.0466701904075695 ;
	setAttr ".sp" -type "double3" -2.5949635970807523 6.5559182818598263 6.0466701904075695 ;
createNode mesh -n "pPlaneShape4" -p "pPlane4";
	rename -uid "FBC5FC0D-4611-F3D9-24F1-6C959E755B8F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -2.5949638 5.6564655 5.1152883 
		-2.5949638 5.6564655 5.1152883 -2.5949638 7.4553709 6.9780521 -2.5949638 7.4553709 
		6.9780521;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 -1.9984014e-16 0.89999998 0.89999998 -1.9984014e-16 0.89999998
		 -0.89999998 1.9984014e-16 -0.89999998 0.89999998 1.9984014e-16 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane6" -p "group7";
	rename -uid "3465442A-4B9D-68C6-3F92-C7ABD3D8C231";
	setAttr ".rp" -type "double3" -2.5949635970807523 2.1003686122810827 -6.2031842880153709 ;
	setAttr ".sp" -type "double3" -2.5949635970807523 2.1003686122810827 -6.2031842880153709 ;
createNode mesh -n "pPlaneShape6" -p "pPlane6";
	rename -uid "EF3D6A03-436F-E711-9378-28A815C2E822";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -2.5949638 3.0003686 -7.1031842 
		-2.5949638 3.0003686 -7.1031842 -2.5949638 1.2003685 -5.303184 -2.5949638 1.2003685 
		-5.303184;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 -1.9984014e-16 0.89999998 0.89999998 -1.9984014e-16 0.89999998
		 -0.89999998 1.9984014e-16 -0.89999998 0.89999998 1.9984014e-16 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane8" -p "group7";
	rename -uid "897AAE58-4EAF-9AFC-45EE-8AA47AC5F78C";
	setAttr ".rp" -type "double3" -6.0337371566188152 6.5559182818598263 -3.189240484553431 ;
	setAttr ".sp" -type "double3" -6.0337371566188152 6.5559182818598263 -3.189240484553431 ;
createNode mesh -n "pPlaneShape8" -p "pPlane8";
	rename -uid "50DD9AEA-46CA-9DC1-F2BD-A6B777C181EE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -5.1337371 6.0559368 -4.5892215 
		-6.9337373 6.0559368 -3.5892594 -5.1337371 7.0558996 -2.7892215 -6.9337373 7.0558996 
		-1.7892593;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 -1.9984014e-16 0.89999998 0.89999998 -1.9984014e-16 0.89999998
		 -0.89999998 1.9984014e-16 -0.89999998 0.89999998 1.9984014e-16 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube40" -p "group7";
	rename -uid "A262C466-4769-3CF6-6D60-DE95C29DDD49";
	setAttr ".rp" -type "double3" 0.016821899414062501 6.0455307006835941 -0.054873657226562504 ;
	setAttr ".sp" -type "double3" 0.016821899414062501 6.0455307006835941 -0.054873657226562504 ;
createNode mesh -n "pCube40Shape" -p "pCube40";
	rename -uid "8BCFCDC6-4460-7945-C2D9-ECB1B581B9C8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[7:8]" "f[14]" "f[16]" "f[21:24]" "f[26:43]" "f[60:65]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 22 "e[6]" "e[8]" "e[10]" "e[18]" "e[20:21]" "e[32]" "e[38]" "e[46]" "e[52]" "e[61]" "e[66]" "e[73]" "e[75]" "e[106]" "e[109]" "e[111]" "e[113]" "e[116]" "e[118]" "e[120:121]" "e[123:125]" "e[128]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 90 ".uvst[0].uvsp[0:89]" -type "float2" 0.50188339 0 0.50188339
		 0.25 0.375 0.25 0.375 0 0.31889328 0 0.31889328 0.25 0.50188339 0.87832606 0.50188339
		 1 0.375 1 0.375 0.94389325 0.45568308 0.94389331 0.375 0.878326 0.625 0 0.625 0.25
		 0.50188345 0.25 0.375 0.30610672 0.375 0.25 0.375 0.30196595 0.50188339 0.75 0.375
		 0.8136254 0.45568305 0.8136254 0.375 0.75 0.625 0.878326 0.625 1 0.74667394 0 0.74667394
		 0.25 0.375 0.25 0.375 0.30014503 0.375 0.5 0.50188339 0.5 0.625 0.75 0.125 0 0.1886254
		 0 0.1886254 0.25 0.125 0.25 0.625 0.25 0.875 0 0.875 0.25 0.625 0.371674 0.625 0.371674
		 0.50188345 0.37167302 0.50188339 0.25 0.50188345 0.5 0.625 0.5 0.375 0.5 0.375 0.4363746
		 0.375 0.4410876 0.625 0.25 0.625 0.5 0.625 0.371674 0.50188702 0.37167254 0.375 0.5
		 0.375 0.44315928 0.625 0.5 0.50188339 0.5 0.50188452 0.3716754 0.375 0 0.50188339
		 0 0.50188339 0.25 0.375 0.25 0.3081457 0 0.3081457 0.25 0.375 0.93314564 0.50188339
		 0.93314564 0.50188339 1 0.375 1 0.625 0 0.625 0.25 0.50188345 0.25 0.375 0.31009787
		 0.375 0.31685433 0.375 0.25 0.625 0.93314564 0.625 1 0.6918543 0 0.6918543 0.25 0.375
		 0.30725098 0.375 0.25 0.625 0.25 0.625 0.31685433 0.625 0.31009787 0.50188339 0.25
		 0.625 0.25 0.625 0.30725098 0.375 0.371674 0.375 0.371674 0.375 0.371674 0.25332603
		 0 0.25332603 0.25 0.50188339 0.371674;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 59 ".vt[0:58]"  8.46541214 -0.27713928 -1.54793477 8.46541214 11.57323647 -1.54793477
		 8.46541214 8.49305534 2.7032733 8.46541214 -0.27713928 2.7032733 4.56181335 -0.27713928 2.7032733
		 4.56181335 8.49305534 2.7032733 0 -0.27713928 -1.54793477 4.56181335 -0.27713928 0
		 0 -0.27713928 2.7032733 8.46541214 -0.27713928 -6.10974789 8.46541214 8.49305534 -6.10974789
		 9.13995361 11.9308815 -1.54793477 9.13995361 8.50441647 3.37781501 5.23635483 8.50441647 3.37781501
		 -8.43176842 -0.27713928 -1.54793477 -4.25120783 -0.27713928 2.7032733 -4.25120783 -0.27713928 0
		 -8.43176842 -0.27713928 2.7032733 0 -0.27713928 -6.10974789 0 8.49305534 -6.10974789
		 9.47185707 8.77134705 3.7097187 5.56825829 8.77134705 3.7097187 -8.43176842 8.49305534 2.7032733
		 -8.43176842 11.57323647 -1.54793477 -8.43176842 -0.27713928 -6.10974789 -4.25120783 8.49305534 2.7032733
		 9.13995361 8.50441647 -6.78428936 -8.43176842 8.49305534 -6.10974789 0 8.50441647 -6.78428936
		 0 12.3682003 -1.54793477 9.47185707 12.3682003 -1.54793477 -9.10631084 11.9308815 -1.54793477
		 -9.10631084 8.50441647 3.37781501 -4.9257493 8.50441647 3.37781501 9.47185707 8.77134705 -7.11619282
		 -9.10631084 8.50441647 -6.78428936 0 8.77134705 -7.11619282 0.00016464294 12.36809444 -1.5480994
		 -9.43821335 8.77134705 3.7097187 -5.25765324 8.77134705 3.7097187 -9.43821335 8.77134705 -7.11619282
		 -9.43821335 12.3682003 -1.54793477 -0.00015545895 12.36809444 -1.5480994 0 8.77134705 3.7097187
		 0 8.50441647 3.37781501 0 8.49305534 2.7032733 -4.25120783 -0.27713928 6 0 -0.27713928 6
		 0 11.57323647 6 -4.25120783 8.49305534 6 4.56181335 -0.27713928 6 4.56181335 8.49305534 6
		 0 11.9308815 6.67454147 -4.9257493 8.50441647 6.67454147 -5.25765324 8.77134705 7.0064454079
		 5.23635483 8.50441647 6.67454147 0 12.3682003 7.0064454079 5.56825829 8.77134705 7.0064454079
		 0 12.3682003 -1.54814517;
	setAttr -s 138 ".ed[0:137]"  0 1 1 1 2 0 2 3 0 3 0 0 4 3 0 2 5 0 5 4 0
		 6 0 1 4 7 1 7 6 1 4 8 1 8 6 1 9 10 0 10 1 0 0 9 0 1 11 0 2 12 0 12 13 0 13 5 1 14 6 1
		 8 15 1 15 16 1 16 14 1 15 17 0 17 14 0 18 9 0 6 18 1 18 19 1 19 10 0 11 12 0 12 20 0
		 20 21 0 21 13 0 17 22 0 22 23 0 23 14 1 24 18 0 14 24 0 15 25 0 25 22 0 10 26 0 26 11 0
		 24 27 0 27 19 0 19 28 0 28 26 0 29 21 0 20 30 0 30 29 1 31 23 0 23 27 0 32 22 0 25 33 1
		 33 32 0 26 34 0 35 28 0 27 35 0 28 36 1 36 34 0 11 30 1 36 37 1 37 29 1 30 34 0 36 29 1
		 32 31 0 38 32 0 33 39 0 39 38 0 31 35 0 40 36 0 35 40 0 40 41 0 41 42 1 42 29 1 41 29 1
		 39 29 0 41 38 0 31 41 1 46 47 0 47 48 1 48 49 0 49 46 0 15 46 0 49 25 0 8 47 1 47 50 0
		 50 51 0 51 48 0 48 52 0 49 53 0 53 33 0 4 50 0 5 51 0 52 53 0 53 54 0 54 39 0 51 55 0
		 55 52 0 13 55 0 54 56 0 56 29 0 55 57 0 21 57 0 52 56 1 56 57 0 43 21 0 21 29 0 29 43 1
		 39 43 0 29 39 0 44 13 0 13 21 0 43 44 1 39 33 0 33 44 0 45 5 0 5 13 0 44 45 0 33 25 0
		 25 45 0 8 4 0 4 5 0 45 8 1 15 8 0 25 15 0 42 29 0 29 58 0 58 42 0 29 37 0 37 58 0
		 0 7 1 3 7 1 6 16 1 8 16 1 36 42 1 42 40 1 37 34 1 34 29 1;
	setAttr -s 70 -ch 262 ".fc[0:69]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -3 5 6
		mu 0 4 4 3 2 5
		f 3 7 130 9
		mu 0 3 6 7 10
		f 3 -4 131 -131
		mu 0 3 7 8 10
		f 3 -5 8 -132
		mu 0 3 8 9 10
		f 4 -10 -9 10 11
		mu 0 4 6 10 9 11
		f 4 12 13 -1 14
		mu 0 4 12 13 1 0
		f 4 -2 15 29 -17
		mu 0 4 2 1 14 16
		f 4 -6 16 17 18
		mu 0 4 15 2 16 17
		f 3 19 132 22
		mu 0 3 18 6 20
		f 3 -12 133 -133
		mu 0 3 6 11 20
		f 3 20 21 -134
		mu 0 3 11 19 20
		f 4 -23 -22 23 24
		mu 0 4 18 20 19 21
		f 4 25 -15 -8 26
		mu 0 4 22 23 7 6
		f 4 -16 -14 40 41
		mu 0 4 14 1 13 35
		f 4 27 28 -13 -26
		mu 0 4 24 25 13 12
		f 4 -18 30 31 32
		mu 0 4 17 16 26 27
		f 4 -25 33 34 35
		mu 0 4 18 21 28 29
		f 4 36 -27 -20 37
		mu 0 4 30 22 6 18
		f 4 -24 38 39 -34
		mu 0 4 31 32 33 34
		f 4 42 43 -28 -37
		mu 0 4 36 37 25 24
		f 4 44 45 -41 -29
		mu 0 4 38 39 35 13
		f 4 -31 -30 59 -48
		mu 0 4 26 16 14 41
		f 4 46 -32 47 48
		mu 0 4 40 27 26 41
		f 4 49 -35 -52 64
		mu 0 4 42 29 28 44
		f 4 -38 -36 50 -43
		mu 0 4 30 18 29 43
		f 4 51 -40 52 53
		mu 0 4 44 28 45 46
		f 4 -42 54 -63 -60
		mu 0 4 14 35 47 41
		f 4 55 -45 -44 56
		mu 0 4 48 39 38 43
		f 4 57 58 -55 -46
		mu 0 4 39 49 47 35
		f 3 60 136 -59
		mu 0 3 49 50 47
		f 3 62 137 -49
		mu 0 3 41 47 40
		f 3 61 -138 -137
		mu 0 3 50 40 47
		f 3 63 -62 -61
		mu 0 3 49 40 50
		f 4 -51 -50 68 -57
		mu 0 4 43 29 42 48
		f 4 65 -54 66 67
		mu 0 4 51 44 46 52
		f 4 69 -58 -56 70
		mu 0 4 53 49 39 48
		f 3 -64 134 73
		mu 0 3 40 49 55
		f 3 72 135 71
		mu 0 3 54 55 53
		f 3 -136 -135 -70
		mu 0 3 53 55 49
		f 3 74 -74 -73
		mu 0 3 54 40 55
		f 4 -65 -66 -77 -78
		mu 0 4 42 44 51 54
		f 4 -68 75 -75 76
		mu 0 4 51 52 40 54
		f 4 -71 -69 77 -72
		mu 0 4 53 48 42 54
		f 4 78 79 80 81
		mu 0 4 56 57 58 59
		f 4 82 -82 83 -39
		mu 0 4 60 56 59 61
		f 4 -21 84 -79 -83
		mu 0 4 62 63 64 65
		f 4 85 86 87 -80
		mu 0 4 57 66 67 58
		f 4 -81 88 93 -90
		mu 0 4 59 58 68 71
		f 4 -53 -84 89 90
		mu 0 4 69 70 59 71
		f 4 -11 91 -86 -85
		mu 0 4 63 72 73 64
		f 4 -89 -88 96 97
		mu 0 4 68 58 67 78
		f 4 -7 92 -87 -92
		mu 0 4 74 75 67 66
		f 4 -67 -91 94 95
		mu 0 4 76 69 71 77
		f 4 -19 98 -97 -93
		mu 0 4 79 80 78 67
		f 4 -95 -94 103 -100
		mu 0 4 77 71 68 81
		f 4 -96 99 100 -76
		mu 0 4 76 77 81 40
		f 4 -98 101 -105 -104
		mu 0 4 68 78 82 81
		f 4 -33 102 -102 -99
		mu 0 4 80 83 82 78
		f 4 -101 104 -103 -47
		mu 0 4 40 81 82 83
		f 3 105 106 107
		mu 0 3 84 27 40
		f 3 108 -108 109
		mu 0 3 52 84 40
		f 4 110 111 -106 112
		mu 0 4 85 17 27 84
		f 4 113 114 -113 -109
		mu 0 4 52 46 85 84
		f 4 115 116 -111 117
		mu 0 4 86 15 17 85
		f 4 118 119 -118 -115
		mu 0 4 46 45 86 85
		f 4 120 121 -116 122
		mu 0 4 87 4 5 88
		f 4 123 -123 -120 124
		mu 0 4 32 87 88 33
		f 3 125 126 127
		mu 0 3 55 40 89
		f 3 -127 128 129
		mu 0 3 89 40 50;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group2" -p "group7";
	rename -uid "AF6C6B93-49BD-317B-0083-2AAFFDD12AD8";
	setAttr ".rp" -type "double3" 8.5680670383610149 7.2695370971698168 -1.8411903858665029 ;
	setAttr ".sp" -type "double3" 8.5680670383610149 7.2695370971698168 -1.8411903858665029 ;
createNode transform -n "pCube39" -p "group2";
	rename -uid "1466CCC9-4392-A0FF-4A0A-4CB593C05F74";
	setAttr ".rp" -type "double3" 8.7520885286259027 5.8063257267663051 -1.8442810502124281 ;
	setAttr ".sp" -type "double3" 8.7520885286259027 5.8063257267663051 -1.8442810502124281 ;
createNode mesh -n "pCubeShape39" -p "|group7|group2|pCube39";
	rename -uid "0D2241BE-4DD9-0939-177B-8D957A60AE55";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  9.7520895 5.7939844 -3.7793953 
		7.352088 5.7939844 -0.30916661 9.7520895 5.8186669 -3.7793953 7.352088 5.8186669 
		-0.30916661 10.152089 5.8186669 -3.3793955 7.7520881 5.8186669 0.090833388 10.152089 
		5.7939844 -3.3793955 7.7520881 5.7939844 0.090833388;
	setAttr -s 8 ".vt[0:7]"  -1.20000005 -0.075000003 0.2 1.20000005 -0.075000003 0.2
		 -1.20000005 0.075000003 0.2 1.20000005 0.075000003 0.2 -1.20000005 0.075000003 -0.2
		 1.20000005 0.075000003 -0.2 -1.20000005 -0.075000003 -0.2 1.20000005 -0.075000003 -0.2;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe7" -p "group2";
	rename -uid "7D7C6EAC-4BE3-E018-8682-15AA2D5F469D";
	setAttr ".rp" -type "double3" 8.4421977616608164 7.2695370971698168 -1.8411903858665029 ;
	setAttr ".sp" -type "double3" 8.4421977616608164 7.2695370971698168 -1.8411903858665029 ;
createNode mesh -n "pPipeShape7" -p "|group7|group2|pPipe7";
	rename -uid "A6B25250-4CF2-8200-F662-9BAD9EAADC8A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  7.9003496 8.5628014 -0.67292684 
		8.7003498 8.5628014 -2.2094541 9.50035 6.2262731 -3.009454 8.7003498 6.226274 -1.4729266 
		7.3840456 8.3128014 -0.67292684 8.1840458 8.3128014 -2.2094541 8.984045 5.9762731 
		-3.009454 8.1840458 5.976274 -1.4729266 7.1840453 8.604866 -0.38086092 8.1840458 
		8.604866 -2.3015199 9.1840458 5.6842079 -3.3015199 8.1840458 5.6842079 -1.3808608 
		7.7003498 8.854866 -0.38086092 8.7003498 8.854866 -2.3015199 9.7003498 5.9342079 
		-3.3015199 8.7003498 5.9342079 -1.3808608;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane5" -p "group2";
	rename -uid "21FC228A-4FDC-B989-4B4F-81BBCDF8920C";
	setAttr ".rp" -type "double3" 8.6121673719101643 7.3374286182833295 -1.7640710863267441 ;
	setAttr ".sp" -type "double3" 8.6121673719101643 7.3374286182833295 -1.7640710863267441 ;
createNode mesh -n "pPlaneShape5" -p "|group7|group2|pPlane5";
	rename -uid "4B2A7CDB-441A-9E2D-0303-D79184D3348E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  9.512167 8.6012478 -3.9278901 
		7.7121673 8.6012478 -1.4002521 9.512167 6.0736098 -2.1278901 7.7121673 6.0736098 
		0.39974797;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 -1.9984014e-16 0.89999998 0.89999998 -1.9984014e-16 0.89999998
		 -0.89999998 1.9984014e-16 -0.89999998 0.89999998 1.9984014e-16 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube32" -p "group2";
	rename -uid "9F0F009C-441F-A3B2-8D35-79972F99A7BA";
	setAttr ".rp" -type "double3" 8.5329418344217931 7.2647788454546678 -1.8262517139632883 ;
	setAttr ".sp" -type "double3" 8.5329418344217931 7.2647788454546678 -1.8262517139632883 ;
createNode mesh -n "pCubeShape32" -p "|group7|group2|pCube32";
	rename -uid "9AF83E6F-4139-7C97-0B69-42B94561DEEE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  8.4952602 6.9350681 -2.0639329 
		8.2952604 6.9350681 -1.7885705 8.4952602 7.5944891 -2.0639329 8.2952604 7.5944891 
		-1.7885705 8.7706232 7.5944891 -1.863933 8.5706234 7.5944891 -1.5885706 8.7706232 
		6.9350681 -1.863933 8.5706234 6.9350681 -1.5885706;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube31" -p "group2";
	rename -uid "82C6E3B2-4CF2-575F-E151-B397EAC4ACE5";
	setAttr ".rp" -type "double3" 8.5329418344217931 7.2647788454546678 -1.8262517139632883 ;
	setAttr ".sp" -type "double3" 8.5329418344217931 7.2647788454546678 -1.8262517139632883 ;
createNode mesh -n "pCubeShape31" -p "|group7|group2|pCube31";
	rename -uid "641219EE-4243-E405-35BF-78A8FF37E894";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  8.4952602 8.0020981 -0.72154135 
		8.2952604 8.2774601 -0.72154135 8.4952602 6.2520976 -3.1309619 8.2952604 6.5274601 
		-3.1309619 8.7706232 6.2520976 -2.9309618 8.5706234 6.5274601 -2.9309618 8.7706232 
		8.0020981 -0.52154136 8.5706234 8.2774601 -0.52154136;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group3" -p "group7";
	rename -uid "6CA7C0A0-486E-B36D-ABDA-3391BE256C3F";
	setAttr ".rp" -type "double3" -8.5042266554994814 7.2695370971698168 -1.8411903858665051 ;
	setAttr ".sp" -type "double3" -8.5042266554994814 7.2695370971698168 -1.8411903858665051 ;
createNode transform -n "pCube39" -p "group3";
	rename -uid "96298125-47BB-8725-24A7-A58CA32A9B59";
	setAttr ".rp" -type "double3" -8.6882481457643692 5.8063257267663051 -1.8380997215205799 ;
	setAttr ".sp" -type "double3" -8.6882481457643692 5.8063257267663051 -1.8380997215205799 ;
createNode mesh -n "pCubeShape39" -p "|group7|group3|pCube39";
	rename -uid "C7E487A1-4FAC-8DD9-4C63-7AAF85068B54";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -7.2882476 5.7939844 -0.30298528 
		-9.6882486 5.7939844 -3.7732141 -7.2882476 5.8186669 -0.30298528 -9.6882486 5.8186669 
		-3.7732141 -7.6882477 5.8186669 0.097014725 -10.088249 5.8186669 -3.373214 -7.6882477 
		5.7939844 0.097014725 -10.088249 5.7939844 -3.373214;
	setAttr -s 8 ".vt[0:7]"  -1.20000005 -0.075000003 0.2 1.20000005 -0.075000003 0.2
		 -1.20000005 0.075000003 0.2 1.20000005 0.075000003 0.2 -1.20000005 0.075000003 -0.2
		 1.20000005 0.075000003 -0.2 -1.20000005 -0.075000003 -0.2 1.20000005 -0.075000003 -0.2;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe7" -p "group3";
	rename -uid "816A24DB-421B-5E8F-DCB2-F2A8C30CA1AD";
	setAttr ".rp" -type "double3" -8.3783573787992829 7.2695370971698168 -1.8411903858665051 ;
	setAttr ".sp" -type "double3" -8.3783573787992829 7.2695370971698168 -1.8411903858665051 ;
createNode mesh -n "pPipeShape7" -p "|group7|group3|pPipe7";
	rename -uid "BAE5AEBF-4A64-0F9D-4E4C-199E30F62E49";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -9.4365091 8.5628014 -3.009454 
		-8.6365089 8.5628014 0.12707323 -7.8365092 6.2262731 -0.67292702 -8.6365089 6.226274 
		-3.809454 -8.9202051 8.3128014 -3.009454 -8.1202049 8.3128014 0.12707323 -7.3202052 
		5.9762731 -0.67292702 -8.1202049 5.976274 -3.809454 -9.1202049 8.604866 -3.3015199 
		-8.1202049 8.604866 0.61913913 -7.1202049 5.6842079 -0.38086116 -8.1202049 5.6842079 
		-4.3015199 -9.6365089 8.854866 -3.3015199 -8.6365089 8.854866 0.61913913 -7.6365094 
		5.9342079 -0.38086116 -8.6365099 5.9342079 -4.3015199;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane5" -p "group3";
	rename -uid "4353EEEC-4C15-A658-D314-2CB82349CA01";
	setAttr ".rp" -type "double3" -8.5483269890486309 7.3374286182833295 -1.9183096854062638 ;
	setAttr ".sp" -type "double3" -8.5483269890486309 7.3374286182833295 -1.9183096854062638 ;
createNode mesh -n "pPlaneShape5" -p "|group7|group3|pPlane5";
	rename -uid "A3E669AA-42DA-8F13-5241-B1916F23346A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.6483269 8.6012478 -1.5544907 
		-9.4483271 8.6012478 -4.0821285 -7.6483269 6.0736098 0.24550936 -9.4483271 6.0736098 
		-2.2821288;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 -1.9984014e-16 0.89999998 0.89999998 -1.9984014e-16 0.89999998
		 -0.89999998 1.9984014e-16 -0.89999998 0.89999998 1.9984014e-16 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube32" -p "group3";
	rename -uid "CB926FC5-4042-40EF-9F4C-FE8045CF0B05";
	setAttr ".rp" -type "double3" -8.4691014515602596 7.2647788454546678 -1.8561290577697196 ;
	setAttr ".sp" -type "double3" -8.4691014515602596 7.2647788454546678 -1.8561290577697196 ;
createNode mesh -n "pCubeShape32" -p "|group7|group3|pCube32";
	rename -uid "93C20D6B-47CD-2B50-FAF4-05A43779B4C8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -8.2314205 6.9350681 -1.8184478 
		-8.4314203 6.9350681 -2.0938103 -8.2314205 7.5944891 -1.8184478 -8.4314203 7.5944891 
		-2.0938103 -8.5067825 7.5944891 -1.6184479 -8.7067833 7.5944891 -1.8938103 -8.5067825 
		6.9350681 -1.6184479 -8.7067833 6.9350681 -1.8938103;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube31" -p "group3";
	rename -uid "B64B7468-4C73-1F70-0610-E0A19BB56D41";
	setAttr ".rp" -type "double3" -8.4691014515602596 7.2647788454546678 -1.8561290577697196 ;
	setAttr ".sp" -type "double3" -8.4691014515602596 7.2647788454546678 -1.8561290577697196 ;
createNode mesh -n "pCubeShape31" -p "|group7|group3|pCube31";
	rename -uid "1A3ACC67-4B80-07FA-D471-84ADD7D1E117";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -8.2314205 8.0020981 -3.1608396 
		-8.4314203 8.2774601 -3.1608396 -8.2314205 6.2520976 -0.75141877 -8.4314203 6.5274601 
		-0.75141877 -8.5067825 6.2520976 -0.55141872 -8.7067833 6.5274601 -0.55141872 -8.5067825 
		8.0020981 -2.9608395 -8.7067833 8.2774601 -2.9608395;
	setAttr -s 8 ".vt[0:7]"  -0.1 -0.875 0.1 0.1 -0.875 0.1 -0.1 0.875 0.1
		 0.1 0.875 0.1 -0.1 0.875 -0.1 0.1 0.875 -0.1 -0.1 -0.875 -0.1 0.1 -0.875 -0.1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group4" -p "group7";
	rename -uid "55D6EBD0-4E21-4C4D-BEC8-C7932592D360";
	setAttr ".rp" -type "double3" 0.28235255293205114 6.5556021559611874 2.7320092574374373 ;
	setAttr ".sp" -type "double3" 0.28235255293205114 6.5556021559611874 2.7320092574374373 ;
createNode transform -n "pPlane7" -p "group4";
	rename -uid "E154401B-4AB8-BC90-6724-C1B72B6C8506";
	setAttr ".rp" -type "double3" -5.9586253855388236 6.5559182818598263 2.805370372979918 ;
	setAttr ".sp" -type "double3" -5.9586253855388236 6.5559182818598263 2.805370372979918 ;
createNode mesh -n "pPlaneShape7" -p "|group7|group4|pPlane7";
	rename -uid "EF4DCF38-42F2-1A01-B793-868D34FFB15F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -5.5586066 6.0559368 1.9053704 
		-6.3586445 6.0559368 1.9053704 -5.5586066 7.0558996 3.7053704 -6.3586445 7.0558996 
		3.7053704;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 -1.9984014e-16 0.89999998 0.89999998 -1.9984014e-16 0.89999998
		 -0.89999998 1.9984014e-16 -0.89999998 0.89999998 1.9984014e-16 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe5" -p "group4";
	rename -uid "D0C2D486-42F7-6982-BAAA-AEAC97FBBBBA";
	setAttr ".rp" -type "double3" -5.9603760410763362 6.5556021559611874 2.7320092574374373 ;
	setAttr ".sp" -type "double3" -5.9603760410763362 6.5556021559611874 2.7320092574374373 ;
createNode mesh -n "pPipeShape5" -p "|group7|group4|pPipe5";
	rename -uid "AB0839D7-4A33-48EF-9421-709F42FE6D9D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -7.1846399 7.1048665 2.6382592 
		-6.3846397 6.2563381 3.4382594 -4.7361121 6.2563381 2.6382592 -5.5361118 7.1048665 
		1.8382592 -7.1846399 6.8548665 2.8257592 -6.3846397 6.0063381 3.6257594 -4.7361121 
		6.0063381 2.8257592 -5.5361118 6.8548665 2.0257592 -7.490706 6.9609318 2.8257592 
		-6.490706 5.9002724 3.8257592 -4.4300456 5.9002724 2.8257592 -5.4300466 6.9609318 
		1.8257593 -7.490706 7.2109318 2.6382592 -6.490706 6.1502724 3.6382592 -4.4300456 
		6.1502724 2.6382592 -5.4300466 7.2109318 1.6382593;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane9" -p "group4";
	rename -uid "FFFBFB2A-4B02-2F24-751F-FD99BC275C11";
	setAttr ".rp" -type "double3" 6.5268318024779433 6.5559182818598263 2.805370372979918 ;
	setAttr ".sp" -type "double3" 6.5268318024779433 6.5559182818598263 2.805370372979918 ;
createNode mesh -n "pPlaneShape9" -p "pPlane9";
	rename -uid "C1AD7BBB-4198-3C0C-8C86-A9880936F4B7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  6.9268508 6.0559368 1.9053704 
		6.1268129 6.0559368 1.9053704 6.9268508 7.0558996 3.7053704 6.1268129 7.0558996 3.7053704;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 -1.9984014e-16 0.89999998 0.89999998 -1.9984014e-16 0.89999998
		 -0.89999998 1.9984014e-16 -0.89999998 0.89999998 1.9984014e-16 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe9" -p "group4";
	rename -uid "0FEC3837-4111-785C-CDC1-3CB16482D8E3";
	setAttr ".rp" -type "double3" 6.5250811469404359 6.5556021559611874 2.7320092574374373 ;
	setAttr ".sp" -type "double3" 6.5250811469404359 6.5556021559611874 2.7320092574374373 ;
createNode mesh -n "pPipeShape9" -p "pPipe9";
	rename -uid "D96D8927-4BBA-53A7-4D66-F8858EAA703D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  5.3008175 7.1048665 2.6382592 
		6.1008172 6.2563381 3.4382594 7.7493453 6.2563381 2.6382592 6.9493451 7.1048665 1.8382592 
		5.3008175 6.8548665 2.8257592 6.1008172 6.0063381 3.6257594 7.7493453 6.0063381 2.8257592 
		6.9493451 6.8548665 2.0257592 4.994751 6.9609318 2.8257592 5.994751 5.9002724 3.8257592 
		8.0554113 5.9002724 2.8257592 7.0554109 6.9609318 1.8257593 4.994751 7.2109318 2.6382592 
		5.994751 6.1502724 3.6382592 8.0554113 6.1502724 2.6382592 7.0554109 7.2109318 1.6382593;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group5" -p "group7";
	rename -uid "9BE226FD-4E63-0C71-6B5E-4F96E5879938";
	setAttr ".rp" -type "double3" -5.9603760410763362 2.0248204264394416 2.7320092574374364 ;
	setAttr ".sp" -type "double3" -5.9603760410763362 2.0248204264394416 2.7320092574374364 ;
createNode transform -n "pPlane7" -p "group5";
	rename -uid "3BD288ED-440D-C432-AC76-CA836D68D18A";
	setAttr ".rp" -type "double3" -5.9586253855388236 2.0251365523380809 2.8053703729799175 ;
	setAttr ".sp" -type "double3" -5.9586253855388236 2.0251365523380809 2.8053703729799175 ;
createNode mesh -n "pPlaneShape7" -p "|group7|group5|pPlane7";
	rename -uid "9289EA72-4B13-853B-EEC5-DE8814DD90AB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -5.5586066 1.5251555 1.9053704 
		-6.3586445 1.5251555 1.9053704 -5.5586066 2.5251176 3.7053704 -6.3586445 2.5251176 
		3.7053704;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 -1.9984014e-16 0.89999998 0.89999998 -1.9984014e-16 0.89999998
		 -0.89999998 1.9984014e-16 -0.89999998 0.89999998 1.9984014e-16 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe5" -p "group5";
	rename -uid "BAD24108-4DC7-86BF-A96A-73B959D294CA";
	setAttr ".rp" -type "double3" -5.9603760410763362 2.0248204264394416 2.7320092574374364 ;
	setAttr ".sp" -type "double3" -5.9603760410763362 2.0248204264394416 2.7320092574374364 ;
createNode mesh -n "pPipeShape5" -p "|group7|group5|pPipe5";
	rename -uid "0ADCEFE9-4F67-B177-6890-27B053BF8207";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -7.1846399 2.5740845 2.6382592 
		-6.3846397 1.7255564 3.4382594 -4.7361121 1.7255564 2.6382592 -5.5361118 2.5740845 
		1.8382592 -7.1846399 2.3240845 2.8257592 -6.3846397 1.4755564 3.6257594 -4.7361121 
		1.4755564 2.8257592 -5.5361118 2.3240845 2.0257592 -7.490706 2.4301505 2.8257592 
		-6.490706 1.3694904 3.8257592 -4.4300456 1.3694904 2.8257592 -5.4300466 2.4301505 
		1.8257593 -7.490706 2.6801505 2.6382592 -6.490706 1.6194904 3.6382592 -4.4300456 
		1.6194904 2.6382592 -5.4300466 2.6801505 1.6382593;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group6" -p "group7";
	rename -uid "F5D6085D-4483-EB3E-1968-BC86CBC84CC2";
	setAttr ".rp" -type "double3" 6.5250811469404351 2.0248204264394416 2.7320092574374364 ;
	setAttr ".sp" -type "double3" 6.5250811469404351 2.0248204264394416 2.7320092574374364 ;
createNode transform -n "pPlane7" -p "group6";
	rename -uid "EA886B57-48F6-4822-B4DB-4A936F2C510D";
	setAttr ".rp" -type "double3" 6.5268318024779459 2.0251365523380809 2.8053703729799175 ;
	setAttr ".sp" -type "double3" 6.5268318024779459 2.0251365523380809 2.8053703729799175 ;
createNode mesh -n "pPlaneShape7" -p "|group7|group6|pPlane7";
	rename -uid "69018F43-4E8C-DB5A-5D0E-968252483B70";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  6.9268508 1.5251555 1.9053704 
		6.1268129 1.5251555 1.9053704 6.9268508 2.5251176 3.7053704 6.1268129 2.5251176 3.7053704;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 -1.9984014e-16 0.89999998 0.89999998 -1.9984014e-16 0.89999998
		 -0.89999998 1.9984014e-16 -0.89999998 0.89999998 1.9984014e-16 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe5" -p "group6";
	rename -uid "625E771F-482D-351A-6F74-29B0372A18F4";
	setAttr ".rp" -type "double3" 6.5250811469404351 2.0248204264394416 2.7320092574374364 ;
	setAttr ".sp" -type "double3" 6.5250811469404351 2.0248204264394416 2.7320092574374364 ;
createNode mesh -n "pPipeShape5" -p "|group7|group6|pPipe5";
	rename -uid "EB4083D0-49EF-56BB-7D9F-4EB2E71B1786";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0 1 0.25 1 0.5 1
		 0.75 1 1 1 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0 0.25 0 0.5 0 0.75 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  5.3008175 2.5740845 2.6382592 
		6.1008172 1.7255564 3.4382594 7.7493453 1.7255564 2.6382592 6.9493451 2.5740845 1.8382592 
		5.3008175 2.3240845 2.8257592 6.1008172 1.4755564 3.6257594 7.7493453 1.4755564 2.8257592 
		6.9493451 2.3240845 2.0257592 4.994751 2.4301505 2.8257592 5.994751 1.3694904 3.8257592 
		8.0554113 1.3694904 2.8257592 7.0554109 2.4301505 1.8257593 4.994751 2.6801505 2.6382592 
		5.994751 1.6194904 3.6382592 8.0554113 1.6194904 2.6382592 7.0554109 2.6801505 1.6382593;
	setAttr -s 16 ".vt[0:15]"  0.80000001 -0.125 -2.7755576e-17 -3.4969112e-08 -0.125 -0.80000001
		 -0.80000001 -0.125 6.9938224e-08 1.0490734e-07 -0.125 0.80000001 0.80000001 0.125 2.7755576e-17
		 -3.4969112e-08 0.125 -0.80000001 -0.80000001 0.125 6.9938224e-08 1.0490734e-07 0.125 0.80000001
		 1 0.125 2.7755576e-17 -4.3711388e-08 0.125 -1 -1 0.125 8.7422777e-08 1.3113417e-07 0.125 1
		 1 -0.125 -2.7755576e-17 -4.3711388e-08 -0.125 -1 -1 -0.125 8.7422777e-08 1.3113417e-07 -0.125 1;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 0 4 0 1 5 0 2 6 0
		 3 7 0 4 8 1 5 9 1 6 10 1 7 11 1 8 12 0 9 13 0 10 14 0 11 15 0 12 0 1 13 1 1 14 2 1
		 15 3 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 16 4 -18
		mu 0 4 1 0 5 6
		f 4 -2 17 5 -19
		mu 0 4 2 1 6 7
		f 4 -3 18 6 -20
		mu 0 4 3 2 7 8
		f 4 -4 19 7 -17
		mu 0 4 4 3 8 9
		f 4 -5 20 8 -22
		mu 0 4 6 5 10 11
		f 4 -6 21 9 -23
		mu 0 4 7 6 11 12
		f 4 -7 22 10 -24
		mu 0 4 8 7 12 13
		f 4 -8 23 11 -21
		mu 0 4 9 8 13 14
		f 4 -9 24 12 -26
		mu 0 4 11 10 15 16
		f 4 -10 25 13 -27
		mu 0 4 12 11 16 17
		f 4 -11 26 14 -28
		mu 0 4 13 12 17 18
		f 4 -12 27 15 -25
		mu 0 4 14 13 18 19
		f 4 -13 28 0 -30
		mu 0 4 16 15 20 21
		f 4 -14 29 1 -31
		mu 0 4 17 16 21 22
		f 4 -15 30 2 -32
		mu 0 4 18 17 22 23
		f 4 -16 31 3 -29
		mu 0 4 19 18 23 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane10" -p "group7";
	rename -uid "826F4309-49C3-4BAB-DA71-02A5314FAFD2";
	setAttr ".rp" -type "double3" -4.4321677291366521 6.0566284717304919 -6.2031842880153709 ;
	setAttr ".sp" -type "double3" -4.4321677291366521 6.0566284717304919 -6.2031842880153709 ;
createNode mesh -n "pPlaneShape10" -p "pPlane10";
	rename -uid "B2C40AB6-4233-F231-C38F-7097F15E9511";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -4.4321675 6.9566283 -7.1031842 
		-4.4321675 6.9566283 -7.1031842 -4.4321675 5.1566286 -5.303184 -4.4321675 5.1566286 
		-5.303184;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 -1.9984014e-16 0.89999998 0.89999998 -1.9984014e-16 0.89999998
		 -0.89999998 1.9984014e-16 -0.89999998 0.89999998 1.9984014e-16 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane11" -p "group7";
	rename -uid "895CD4CD-4AE6-C41F-B853-989EB0A1B539";
	setAttr ".rp" -type "double3" 4.1839509417023661 6.0566284717304919 -6.2031842880153709 ;
	setAttr ".sp" -type "double3" 4.1839509417023661 6.0566284717304919 -6.2031842880153709 ;
createNode mesh -n "pPlaneShape11" -p "pPlane11";
	rename -uid "81A82622-4B65-3E6D-B347-78A2F275CDBF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  4.1839509 6.9566283 -7.1031842 
		4.1839509 6.9566283 -7.1031842 4.1839509 5.1566286 -5.303184 4.1839509 5.1566286 
		-5.303184;
	setAttr -s 4 ".vt[0:3]"  -0.89999998 -1.9984014e-16 0.89999998 0.89999998 -1.9984014e-16 0.89999998
		 -0.89999998 1.9984014e-16 -0.89999998 0.89999998 1.9984014e-16 -0.89999998;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube47" -p "group7";
	rename -uid "77F3ED13-443E-FED0-8A7F-1886D8CD8264";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode mesh -n "pCubeShape47" -p "pCube47";
	rename -uid "FB948030-45FC-664E-BD59-0595E97E5885";
	setAttr -k off ".v";
	setAttr -s 110 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[1]" "f[5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[7]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[4]" "f[6]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[3]" "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.49999984353780746 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.35416669
		 0.27083352 0.37500003 0.50000036 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.58333349
		 0.29166687 0.125 0 0.12499969 0.25000003 0.625 0.55131596 0.875 0.19868404 0.125
		 0.19868404 0.375 0.55131596 0.375 0.19868404 0.625 0.19868404;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt[0:9]" -type "float3"  0.1559246 -0.18114315 -0.29073888 
		-0.1559246 -0.18114315 -0.29073888 0.2522389 -0.85293478 -0.33273101 0.2522389 -0.85293478 
		-0.15862304 0.1559246 -0.18114315 -0.2006155 -0.1559246 -0.18114315 -0.2006155 -0.1559246 
		-0.71504021 -0.2006155 0.1559246 -0.71504021 -0.2006155 0.1559246 -0.71504021 -0.29073888 
		-0.1559246 -0.71504021 -0.29073888;
	setAttr -s 10 ".vt[0:9]"  -0.25 -1 0.1 0.25 -1 0.1 -0.25 0.99999994 0.099999689
		 -0.25 0.99999994 -0.10000031 -0.25 -1 -0.1 0.25 -1 -0.1 0.25 0.58947235 -0.1 -0.25 0.58947235 -0.1
		 -0.25 0.58947229 0.1 0.25 0.58947229 0.1;
	setAttr -s 17 ".ed[0:16]"  0 1 0 4 5 0 0 8 0 1 9 0 2 3 0 3 7 0 3 6 0
		 4 0 0 5 1 0 6 5 0 7 4 0 6 7 1 8 2 0 7 8 1 9 2 0 8 9 1 9 6 1;
	setAttr -s 9 -ch 34 ".fc[0:8]" -type "polyFaces" 
		f 3 15 14 -13
		mu 0 3 16 17 2
		f 3 6 11 -6
		mu 0 3 3 12 15
		f 4 1 8 -1 -8
		mu 0 4 4 5 7 6
		f 4 16 -7 -5 -15
		mu 0 4 17 13 9 2
		f 4 13 12 4 5
		mu 0 4 14 16 2 11
		f 4 -12 9 -2 -11
		mu 0 4 15 12 5 4
		f 4 7 2 -14 10
		mu 0 4 10 0 16 14
		f 4 0 3 -16 -3
		mu 0 4 0 1 17 16
		f 4 -9 -10 -17 -4
		mu 0 4 1 8 13 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube48" -p "group7";
	rename -uid "1444B708-405E-1982-F66F-86921E0EB465";
	setAttr ".t" -type "double3" -12.873543460157219 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube49" -p "group7";
	rename -uid "B9C9E8D1-4392-DBD9-F91F-458350631CD0";
	setAttr ".t" -type "double3" -11.873543460157219 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube50" -p "group7";
	rename -uid "B5E13A4C-4B68-A6D6-F2A3-0897A23838DF";
	setAttr ".t" -type "double3" -10.873543460157219 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube51" -p "group7";
	rename -uid "781C405A-4399-E06D-4068-47B5A6B78AC4";
	setAttr ".t" -type "double3" -9.8735434601572187 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube52" -p "group7";
	rename -uid "8038F86B-4637-0CBC-2CE7-4E957C96A1AB";
	setAttr ".t" -type "double3" -8.8735434601572187 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube53" -p "group7";
	rename -uid "8505E2D1-4AD1-2E75-C537-BCB9C989C001";
	setAttr ".t" -type "double3" -7.8735434601572187 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube54" -p "group7";
	rename -uid "4AA41A43-488C-98CD-9D26-2EB4592434FE";
	setAttr ".t" -type "double3" -6.8735434601572187 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube55" -p "group7";
	rename -uid "964FAEB8-4960-077B-EF90-FF85FE5DAC11";
	setAttr ".t" -type "double3" -5.8735434601572187 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube56" -p "group7";
	rename -uid "B6640456-4810-FBBB-5F53-5AB606DF2A6F";
	setAttr ".t" -type "double3" -4.8735434601572187 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube57" -p "group7";
	rename -uid "1E416049-436F-0CDF-DD39-DBA04180B5C2";
	setAttr ".t" -type "double3" -3.8735434601572183 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube60" -p "group7";
	rename -uid "5B7F2FC0-4160-EEE6-CCC5-519C42797DE3";
	setAttr ".t" -type "double3" -0.87354346015721829 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube61" -p "group7";
	rename -uid "BDDBE5A7-4272-A779-2956-5E92F41782B2";
	setAttr ".t" -type "double3" 0.12645653984278168 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube62" -p "group7";
	rename -uid "F1E3CB67-42CC-45AF-F26D-D2BB10557B25";
	setAttr ".t" -type "double3" 1.1264565398427817 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube63" -p "group7";
	rename -uid "8DEE8A82-4894-ACD6-E5FB-CC9F65369F79";
	setAttr ".t" -type "double3" 2.1264565398427817 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube64" -p "group7";
	rename -uid "B112A6C3-46FC-A8D0-4423-46AE87E326AF";
	setAttr ".t" -type "double3" 3.1264565398427817 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube65" -p "group7";
	rename -uid "1B12FC4B-465E-3FAB-0DF1-21AA803CC778";
	setAttr ".t" -type "double3" 4.1264565398427822 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube66" -p "group7";
	rename -uid "600A083D-4FB2-3AE3-F18B-F8AE8AF255B5";
	setAttr ".t" -type "double3" 5.1264565398427822 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube67" -p "group7";
	rename -uid "9617B175-4CB5-669C-BCF6-378FD1273CCE";
	setAttr ".t" -type "double3" 6.1264565398427822 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube68" -p "group7";
	rename -uid "E4F63CEC-410F-5D18-0218-69B8F7367FFB";
	setAttr ".t" -type "double3" 7.1264565398427822 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube69" -p "group7";
	rename -uid "29A88844-46C7-9D29-AE17-39ABD83DAF20";
	setAttr ".t" -type "double3" 8.1264565398427813 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube70" -p "group7";
	rename -uid "39EFD28E-43AC-7699-60ED-C5A1C5DE4CA2";
	setAttr ".t" -type "double3" 9.1264565398427813 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube71" -p "group7";
	rename -uid "814117E2-49C7-F550-F8F0-8FB21AA126D1";
	setAttr ".t" -type "double3" 10.126456539842781 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube72" -p "group7";
	rename -uid "63028AEF-4C7F-414E-5DA3-B98750BA53CC";
	setAttr ".t" -type "double3" 11.126456539842781 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube73" -p "group7";
	rename -uid "4675E6DD-43E1-084A-CBFD-2FB9C1319040";
	setAttr ".t" -type "double3" 12.126456539842781 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube74" -p "group7";
	rename -uid "0F47B667-469D-E783-308D-15BC43393CB8";
	setAttr ".t" -type "double3" 13.126456539842781 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube75" -p "group7";
	rename -uid "5C67FCA6-48BB-8E1B-61BC-0F87CCD9B5CB";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929105 14.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube78" -p "group7";
	rename -uid "F80D15CE-43DC-5BC6-0CC1-4C82D6BCF3DB";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929105 13.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube79" -p "group7";
	rename -uid "CE55E897-4BBA-C398-B12B-8DB274BE2B7D";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929116 12.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube80" -p "group7";
	rename -uid "95F95AB6-49D6-1760-B614-45B1F2CCD141";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929138 11.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube81" -p "group7";
	rename -uid "7093DE63-44E9-ADE9-6BE9-93A956C8B0B1";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929149 10.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube82" -p "group7";
	rename -uid "39125A8E-42CB-166E-552B-ABA6498546EB";
	setAttr ".t" -type "double3" 14.126456539842781 0.8747824639992916 9.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube83" -p "group7";
	rename -uid "617D8B88-4515-8CD2-6CA2-108D8F47EC43";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929183 8.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube84" -p "group7";
	rename -uid "9FE7FB3F-43DE-9669-54C7-D8960F0F7B7D";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929194 7.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube85" -p "group7";
	rename -uid "93B56484-4DF8-1073-590A-B89BA7F84C18";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929205 6.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube86" -p "group7";
	rename -uid "A56706A5-4149-31FB-4095-E286A447E32A";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929216 5.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube87" -p "group7";
	rename -uid "08AF9EF7-4F0E-8C3C-310B-F9A982D40D08";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929238 4.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube88" -p "group7";
	rename -uid "0DFC1E3D-463F-02CD-7C49-C4847CA597FF";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929249 3.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube89" -p "group7";
	rename -uid "E9BD3E44-43AF-2D58-A01F-8FAF229490C0";
	setAttr ".t" -type "double3" 14.126456539842781 0.8747824639992926 2.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube90" -p "group7";
	rename -uid "0B8D1432-4540-1399-8E56-508F1B6C0461";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929283 1.1732574800856559 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube91" -p "group7";
	rename -uid "0380824D-4342-4A91-72EC-B3A7EFF040F5";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929294 0.17325748008565597 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube92" -p "group7";
	rename -uid "F4BA8B76-41BE-C3A1-3830-AD97AF585822";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929305 -0.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube93" -p "group7";
	rename -uid "38925233-4431-B07F-0106-75A0C2EC4EB8";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929316 -1.8267425199143441 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube94" -p "group7";
	rename -uid "E8197ABD-4774-23AC-0B93-1A8F884DE5C1";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929338 -2.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube95" -p "group7";
	rename -uid "5386C894-48B1-FB34-39B8-F4B58E3E6E52";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929349 -3.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube96" -p "group7";
	rename -uid "9B80847B-4E52-41EB-0FC6-9EB7BE7C9A0B";
	setAttr ".t" -type "double3" 14.126456539842781 0.8747824639992936 -4.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube97" -p "group7";
	rename -uid "E489425B-4678-17C0-4003-6BBAA559E637";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929394 -5.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube98" -p "group7";
	rename -uid "9A11095F-4AF8-6D5C-89F5-388ACCBC45B7";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929394 -6.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube99" -p "group7";
	rename -uid "9E97D7E5-4AE0-8FAA-0365-5E8E7DAF2A34";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929405 -7.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube100" -p "group7";
	rename -uid "A54A17EC-4516-DF39-5F29-AFA0843844DC";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929416 -8.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube101" -p "group7";
	rename -uid "7AB49B78-4B5E-827E-D23B-DF9E1E3B1D16";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929438 -9.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube102" -p "group7";
	rename -uid "E44B411F-4FD0-136A-5A3F-8EA6D022CD46";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929449 -10.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube103" -p "group7";
	rename -uid "44D25873-458C-1728-0EAD-85BE5BF40B37";
	setAttr ".t" -type "double3" 14.126456539842781 0.8747824639992946 -11.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube104" -p "group7";
	rename -uid "AFB71760-427B-D410-48C8-079B40B3A21A";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929471 -12.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube105" -p "group7";
	rename -uid "054DEAA4-4D2C-5A6F-6579-D6A1A2FA0C64";
	setAttr ".t" -type "double3" 14.126456539842781 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube108" -p "group7";
	rename -uid "A4C0777C-4BAF-6424-3797-05AE6FCBEE9D";
	setAttr ".t" -type "double3" 13.126456539842781 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube109" -p "group7";
	rename -uid "22F600DA-43D4-CE0D-FD84-B4AFF5275345";
	setAttr ".t" -type "double3" 12.126456539842781 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube110" -p "group7";
	rename -uid "5CCC09E3-467F-4ADC-2F71-208A86F5C55A";
	setAttr ".t" -type "double3" 11.126456539842781 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube111" -p "group7";
	rename -uid "67785E59-4960-65D4-30DD-BCBBA8DAB290";
	setAttr ".t" -type "double3" 10.126456539842781 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube112" -p "group7";
	rename -uid "B13A9C2F-4085-4B4A-A477-DCA2426D0C63";
	setAttr ".t" -type "double3" 9.1264565398427813 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube113" -p "group7";
	rename -uid "F801D275-49F1-1602-1AEF-F8A1AE9D58B4";
	setAttr ".t" -type "double3" 8.1264565398427813 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube114" -p "group7";
	rename -uid "D7E4C27D-4220-2CBF-3AF7-B0A7BC8D30B9";
	setAttr ".t" -type "double3" 7.1264565398427822 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube115" -p "group7";
	rename -uid "8B4AA1AF-44C7-1593-CF29-239C29392C51";
	setAttr ".t" -type "double3" 6.1264565398427822 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube116" -p "group7";
	rename -uid "B9E87506-49C7-C5DA-E4C4-F0A700B74919";
	setAttr ".t" -type "double3" 5.1264565398427822 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube117" -p "group7";
	rename -uid "5D2A3E9E-44CF-0C99-6491-1DADA9947244";
	setAttr ".t" -type "double3" 4.1264565398427822 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube118" -p "group7";
	rename -uid "D3364F04-4C10-4C26-2EB4-58BA5F8BB24C";
	setAttr ".t" -type "double3" 3.1264565398427817 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube119" -p "group7";
	rename -uid "EA72C468-4133-C65B-E8B6-53875E4439E7";
	setAttr ".t" -type "double3" 2.1264565398427817 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube120" -p "group7";
	rename -uid "5947EA6C-438C-067E-F0E6-8E80030B375B";
	setAttr ".t" -type "double3" 1.1264565398427817 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube121" -p "group7";
	rename -uid "66DAB10D-4BC2-79AE-A155-D3833F6A8C80";
	setAttr ".t" -type "double3" 0.12645653984278168 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube122" -p "group7";
	rename -uid "5C707F78-4B7E-F9A9-2994-B991088B9BDC";
	setAttr ".t" -type "double3" -0.87354346015721829 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube123" -p "group7";
	rename -uid "29396E5B-4546-A5FF-B93D-6D884CF6394E";
	setAttr ".t" -type "double3" -1.8735434601572183 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube124" -p "group7";
	rename -uid "BF2C8C1F-4E8B-6340-BBEA-A9BA363ABD01";
	setAttr ".t" -type "double3" -2.8735434601572183 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube125" -p "group7";
	rename -uid "16F58759-413D-73E4-BAEE-B6948F30C68A";
	setAttr ".t" -type "double3" -3.8735434601572183 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube126" -p "group7";
	rename -uid "F39B0EA1-4A8D-A009-0FD1-E69F00D4CA0D";
	setAttr ".t" -type "double3" -4.8735434601572187 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube127" -p "group7";
	rename -uid "E3C5D76A-4701-F601-45D6-8B85F0F22E57";
	setAttr ".t" -type "double3" -5.8735434601572187 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube128" -p "group7";
	rename -uid "8FABE8F4-46AF-1655-DAC7-EBBCAC664BF8";
	setAttr ".t" -type "double3" -6.8735434601572187 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube129" -p "group7";
	rename -uid "44A7C128-4207-7930-B6C5-46AC0C19084D";
	setAttr ".t" -type "double3" -7.8735434601572187 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube130" -p "group7";
	rename -uid "5F10848D-4EA3-F8E8-846F-77A04168414C";
	setAttr ".t" -type "double3" -8.8735434601572187 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube131" -p "group7";
	rename -uid "9FE5CF3D-4D43-52A9-EBC5-EAA7D10D97F0";
	setAttr ".t" -type "double3" -9.8735434601572187 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube132" -p "group7";
	rename -uid "52CD6C2F-489D-4716-4F19-AF9818F717FD";
	setAttr ".t" -type "double3" -10.873543460157219 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube133" -p "group7";
	rename -uid "B2440DDD-4A32-D1FF-D3C6-40B62C056C3A";
	setAttr ".t" -type "double3" -11.873543460157219 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube134" -p "group7";
	rename -uid "D8199EE6-4FCA-D358-6E6D-DB989BEEC0F0";
	setAttr ".t" -type "double3" -12.873543460157219 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube135" -p "group7";
	rename -uid "2A29821C-43DE-8918-E640-4E9012FFF8FD";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -13.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube138" -p "group7";
	rename -uid "626EA64F-4DE8-A1C5-4728-65AF336F7640";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -12.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube139" -p "group7";
	rename -uid "A50446B3-42A8-7DBF-0E08-91B930CF504F";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -11.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube140" -p "group7";
	rename -uid "FE9A893C-4829-F1F8-C523-E99A0BAB12A2";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -10.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube141" -p "group7";
	rename -uid "4B3F5712-4247-F008-02EA-2E916C923844";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -9.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube142" -p "group7";
	rename -uid "CF427497-47F2-85B8-948D-3F8942E719D7";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -8.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube143" -p "group7";
	rename -uid "BCA29FE2-4DEA-E8E4-13DC-33B147B9586A";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -7.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube144" -p "group7";
	rename -uid "1B677ED2-4246-A981-6151-86B0A460B50D";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -6.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube145" -p "group7";
	rename -uid "51525BC1-46DC-DE89-48A9-15B554BBD0AB";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -5.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube146" -p "group7";
	rename -uid "8E2485FD-4153-AB0B-8559-CC8065119F67";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -4.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube147" -p "group7";
	rename -uid "20BCE350-40C0-D799-F837-23B2BC30DF62";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -3.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube148" -p "group7";
	rename -uid "0F195902-41A1-78EB-7BF9-9F94D3BE9F1A";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -2.8267425199143439 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube149" -p "group7";
	rename -uid "C0606D61-45F6-A369-724C-1FA20E5A1CBC";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -1.8267425199143441 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube150" -p "group7";
	rename -uid "9A52AD03-4C3D-F0B4-454C-F188445A35C5";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 -0.826742519914344 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube151" -p "group7";
	rename -uid "C4A04588-46EE-93F6-C4E5-F1A699439920";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 0.17325748008565597 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube152" -p "group7";
	rename -uid "E8B161B4-42EF-CF6C-E18E-249EFA23A93D";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 1.1732574800856559 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube153" -p "group7";
	rename -uid "8FB73E15-4DCB-67FA-F4A2-5882E9AAB59A";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 2.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube154" -p "group7";
	rename -uid "2F720EFB-4E78-AEC6-AE1E-D5845726CA31";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 3.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube155" -p "group7";
	rename -uid "30066246-4C7F-9CEE-FA58-CEA22123FEB1";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 4.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube156" -p "group7";
	rename -uid "360E4870-4E9C-D001-66DB-A99B45A076A2";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 5.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube157" -p "group7";
	rename -uid "37B56695-405F-B86B-54F2-5C8339FAC825";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 6.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube158" -p "group7";
	rename -uid "E9624E56-4547-D562-C3EC-2785899B455A";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 7.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube159" -p "group7";
	rename -uid "11FBC9ED-4EFC-A9A5-3C20-FCBD3687337C";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 8.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube160" -p "group7";
	rename -uid "F1F87D11-4AEC-5D1D-BD15-58A484EB0C65";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 9.1732574800856561 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube161" -p "group7";
	rename -uid "101B9706-4297-F7F2-A327-E5AEB4FC8FFF";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 10.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube162" -p "group7";
	rename -uid "DAD791E0-476E-1B7E-0334-36B4F5C24C81";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 11.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube163" -p "group7";
	rename -uid "98A4B3D3-487A-FA25-EF4D-07B609D99BA4";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 12.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube164" -p "group7";
	rename -uid "3646C14D-44CD-CA45-28E7-3DB26EE582C6";
	setAttr ".t" -type "double3" -13.873543460157219 0.87478246399929493 13.173257480085656 ;
	setAttr ".rp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
	setAttr ".sp" -type "double3" 0 -0.51703903198242185 -0.24567719459533691 ;
createNode transform -n "pCube165" -p "group7";
	rename -uid "A29C8423-4CF5-DF62-7201-59A5B6D525F9";
	setAttr ".rp" -type "double3" 6.623109651896506 0.62864111216432106 13.930093367338978 ;
	setAttr ".sp" -type "double3" 6.623109651896506 0.62864111216432106 13.930093367338978 ;
createNode mesh -n "pCubeShape48" -p "pCube165";
	rename -uid "E0229817-4F74-EA31-480F-9B9F6E935374";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  6.6231098 0.62864113 13.930093 
		6.6231098 0.62864113 13.930093 6.6231098 0.62864113 13.930093 6.6231098 0.62864113 
		13.930093 6.6231098 0.62864113 13.930093 6.6231098 0.62864113 13.930093 6.6231098 
		0.62864113 13.930093 6.6231098 0.62864113 13.930093;
	setAttr -s 8 ".vt[0:7]"  -7.5 -0.075000003 0.050000001 7.5 -0.075000003 0.050000001
		 -7.5 0.075000003 0.050000001 7.5 0.075000003 0.050000001 -7.5 0.075000003 -0.050000001
		 7.5 0.075000003 -0.050000001 -7.5 -0.075000003 -0.050000001 7.5 -0.075000003 -0.050000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube166" -p "group7";
	rename -uid "3A01EB05-4BCC-0F4C-A9FA-2C927F1134C3";
	setAttr ".rp" -type "double3" -8.8970645065011755 0.62864111216432106 13.930093367338978 ;
	setAttr ".sp" -type "double3" -8.8970645065011755 0.62864111216432106 13.930093367338978 ;
createNode mesh -n "pCubeShape166" -p "pCube166";
	rename -uid "37C9184E-49C6-2D22-2647-3D8794E36B32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -6.390193 0.62864113 13.930093 
		-11.403935 0.62864113 13.930093 -6.390193 0.62864113 13.930093 -11.403935 0.62864113 
		13.930093 -6.390193 0.62864113 13.930093 -11.403935 0.62864113 13.930093 -6.390193 
		0.62864113 13.930093 -11.403935 0.62864113 13.930093;
	setAttr -s 8 ".vt[0:7]"  -7.5 -0.075000003 0.050000001 7.5 -0.075000003 0.050000001
		 -7.5 0.075000003 0.050000001 7.5 0.075000003 0.050000001 -7.5 0.075000003 -0.050000001
		 7.5 0.075000003 -0.050000001 -7.5 -0.075000003 -0.050000001 7.5 -0.075000003 -0.050000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube167" -p "group7";
	rename -uid "879E8223-41AC-F802-5612-AEAAFE9F6F85";
	setAttr ".rp" -type "double3" 0.13194266699173057 0.62864111216432106 -14.076743988086013 ;
	setAttr ".sp" -type "double3" 0.13194266699173057 0.62864111216432106 -14.076743988086013 ;
createNode mesh -n "pCubeShape167" -p "pCube167";
	rename -uid "095B8AFD-465F-9595-547F-099DAA35FFD2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -6.344027 0.62864113 -14.076744 
		6.6079125 0.62864113 -14.076744 -6.344027 0.62864113 -14.076744 6.6079125 0.62864113 
		-14.076744 -6.344027 0.62864113 -14.076744 6.6079125 0.62864113 -14.076744 -6.344027 
		0.62864113 -14.076744 6.6079125 0.62864113 -14.076744;
	setAttr -s 8 ".vt[0:7]"  -7.5 -0.075000003 0.050000001 7.5 -0.075000003 0.050000001
		 -7.5 0.075000003 0.050000001 7.5 0.075000003 0.050000001 -7.5 0.075000003 -0.050000001
		 7.5 0.075000003 -0.050000001 -7.5 -0.075000003 -0.050000001 7.5 -0.075000003 -0.050000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube168" -p "group7";
	rename -uid "9C495795-4505-0239-930A-BC88C051CE57";
	setAttr ".rp" -type "double3" -13.842796927914538 0.62864111216432106 -0.074166077967494748 ;
	setAttr ".sp" -type "double3" -13.842796927914538 0.62864111216432106 -0.074166077967494748 ;
createNode mesh -n "pCubeShape168" -p "pCube168";
	rename -uid "C49DDB22-4E90-1522-A7E8-819ED72611DA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -6.292798 0.62864113 13.851803 
		-21.292797 0.62864113 -14.100136 -6.292798 0.62864113 13.851803 -21.292797 0.62864113 
		-14.100136 -6.3927975 0.62864113 13.951803 -21.392797 0.62864113 -14.000135 -6.3927975 
		0.62864113 13.951803 -21.392797 0.62864113 -14.000135;
	setAttr -s 8 ".vt[0:7]"  -7.5 -0.075000003 0.050000001 7.5 -0.075000003 0.050000001
		 -7.5 0.075000003 0.050000001 7.5 0.075000003 0.050000001 -7.5 0.075000003 -0.050000001
		 7.5 0.075000003 -0.050000001 -7.5 -0.075000003 -0.050000001 7.5 -0.075000003 -0.050000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube169" -p "group7";
	rename -uid "C4BFACE9-49A8-2694-9623-4BB9385662BB";
	setAttr ".rp" -type "double3" 14.151768064807914 0.62864111216432106 -0.074166077967494748 ;
	setAttr ".sp" -type "double3" 14.151768064807914 0.62864111216432106 -0.074166077967494748 ;
createNode mesh -n "pCubeShape169" -p "pCube169";
	rename -uid "01D1DDD2-4609-C904-F7EC-43910F325295";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  21.701767 0.62864113 13.851803 
		6.7017689 0.62864113 -14.100136 21.701767 0.62864113 13.851803 6.7017689 0.62864113 
		-14.100136 21.601768 0.62864113 13.951803 6.601769 0.62864113 -14.000135 21.601768 
		0.62864113 13.951803 6.601769 0.62864113 -14.000135;
	setAttr -s 8 ".vt[0:7]"  -7.5 -0.075000003 0.050000001 7.5 -0.075000003 0.050000001
		 -7.5 0.075000003 0.050000001 7.5 0.075000003 0.050000001 -7.5 0.075000003 -0.050000001
		 7.5 0.075000003 -0.050000001 -7.5 -0.075000003 -0.050000001 7.5 -0.075000003 -0.050000001;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder1" -p "group7";
	rename -uid "D4E8A2B0-467D-35DB-88F7-08916CE2038C";
	setAttr ".rp" -type "double3" 12.049940842553442 1.7483354106216475 12.366047060036303 ;
	setAttr ".sp" -type "double3" 12.049940842553442 1.7483354106216475 12.366047060036303 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "AB36A25F-4593-6134-DFD4-9BB31144C99D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[5:9]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:4]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:4]" "vtx[10]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:4]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:9]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[5:9]" "vtx[11]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[5:9]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:4]" "f[15:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[10:14]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[5:9]";
	setAttr ".pv" -type "double2" 0.50000002980232239 0.50617372989654541 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.54828393 0.00764741
		 0.3735911 0.064408541 0.37359107 0.24809146 0.54828387 0.3048526 0.65625 0.15625
		 0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125
		 0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004
		 0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911
		 0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375 0.5 0.15000001
		 0.5 0.83749998 0.52500004 0.50617373 0.47500002 0.50617373 0.42500001 0.50617373
		 0.62500006 0.50617373 0.375 0.50617373 0.57500005 0.50617373;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt[0:16]" -type "float3"  11.946572 0.67042845 12.611112 
		12.13782 0.67042845 12.548972 12.13782 0.67042845 12.347882 11.946572 0.67042845 
		12.285742 11.828374 0.67042845 12.448426 11.998737 0.36185861 12.664394 12.095647 
		0.36179006 12.593805 12.058501 0.36053073 12.479897 11.938634 0.3598209 12.480086 
		11.901698 0.36064157 12.594112 11.999432 0.67042845 12.448426 11.998644 0.36092842 
		12.562458 11.942482 0.51041204 12.49849 12.096957 0.51077777 12.528518 12.116094 
		0.51142657 12.684695 11.973446 0.51146179 12.751187 11.866149 0.51083487 12.636106;
	setAttr -s 17 ".vt[0:16]"  0.21631199 -1 -0.6657396 -0.5663119 -1 -0.41144973
		 -0.56631196 -1 0.41144967 0.21631187 -1 0.6657396 0.69999999 -1 0 0.0028382111 3.43712163 -0.88378125
		 -0.39373535 3.43810606 -0.59491426 -0.24172492 3.45621467 -0.12878017 0.24879631 3.4664216 -0.12956093
		 0.39994466 3.45462155 -0.59617716 0 -1 0 0.0032237926 3.45049691 -0.46664277 0.23304695 1.3009758 0.25602296
		 -0.39909378 1.29571748 0.13313831 -0.47740528 1.28638852 -0.50596553 0.10633625 1.2858814 -0.7780686
		 0.54541987 1.29489684 -0.30713385;
	setAttr -s 35 ".ed[0:34]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 0 15 0 1 14 0 2 13 0 3 12 0 4 16 0 10 0 1 10 1 1 10 2 1 10 3 1
		 10 4 1 5 11 1 6 11 1 7 11 1 8 11 1 9 11 1 12 8 0 13 7 0 12 13 1 14 6 0 13 14 1 15 5 0
		 14 15 1 16 9 0 15 16 1 16 12 1;
	setAttr -s 20 -ch 70 ".fc[0:19]" -type "polyFaces" 
		f 4 0 11 31 -11
		mu 0 4 5 6 26 28
		f 4 1 12 29 -12
		mu 0 4 6 7 25 26
		f 4 2 13 27 -13
		mu 0 4 7 8 24 25
		f 4 3 14 34 -14
		mu 0 4 8 9 29 24
		f 4 4 10 33 -15
		mu 0 4 9 10 27 29
		f 3 -1 -16 16
		mu 0 3 1 0 22
		f 3 -2 -17 17
		mu 0 3 2 1 22
		f 3 -3 -18 18
		mu 0 3 3 2 22
		f 3 -4 -19 19
		mu 0 3 4 3 22
		f 3 -5 -20 15
		mu 0 3 0 4 22
		f 3 5 21 -21
		mu 0 3 20 19 23
		f 3 6 22 -22
		mu 0 3 19 18 23
		f 3 7 23 -23
		mu 0 3 18 17 23
		f 3 8 24 -24
		mu 0 3 17 21 23
		f 3 9 20 -25
		mu 0 3 21 20 23
		f 4 -28 25 -8 -27
		mu 0 4 25 24 14 13
		f 4 -30 26 -7 -29
		mu 0 4 26 25 13 12
		f 4 -32 28 -6 -31
		mu 0 4 28 26 12 11
		f 4 -34 30 -10 -33
		mu 0 4 29 27 16 15
		f 4 -35 32 -9 -26
		mu 0 4 24 29 15 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere6" -p "group7";
	rename -uid "81DACF57-4557-D1CD-0DE5-C49550E43A84";
	setAttr ".rp" -type "double3" 12.389453891037075 4.8206195910821865 11.877263654314866 ;
	setAttr ".sp" -type "double3" 12.389453891037075 4.8206195910821865 11.877263654314866 ;
createNode mesh -n "pSphereShape6" -p "pSphere6";
	rename -uid "68CF155A-478C-8801-5D8C-DFB8206C7FF6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0 0.2 0.2 0.2 0.40000001
		 0.2 0.60000002 0.2 0.80000001 0.2 1 0.2 0 0.40000001 0.2 0.40000001 0.40000001 0.40000001
		 0.60000002 0.40000001 0.80000001 0.40000001 1 0.40000001 0 0.60000002 0.2 0.60000002
		 0.40000001 0.60000002 0.60000002 0.60000002 0.80000001 0.60000002 1 0.60000002 0
		 0.80000001 0.2 0.80000001 0.40000001 0.80000001 0.60000002 0.80000001 0.80000001
		 0.80000001 1 0.80000001 0.1 0 0.30000001 0 0.5 0 0.70000005 0 0.90000004 0 0.1 1
		 0.30000001 1 0.5 1 0.70000005 1 0.90000004 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  11.807542 4.8392005 11.877263 
		11.860946 5.180481 11.877263 11.860946 5.180481 11.877263 11.807542 4.8392005 11.877263 
		11.774536 4.6282778 11.877263 12.058081 4.7402706 11.877263 12.144491 5.2924743 11.877263 
		12.144491 5.2924743 11.877263 12.058081 4.7402706 11.877263 12.004677 4.3989897 11.877263 
		12.379041 4.6900458 11.877263 12.46545 5.24225 11.877263 12.46545 5.24225 11.877263 
		12.379041 4.6900458 11.877263 12.325636 4.3487649 11.877263 12.647824 4.7077107 11.877263 
		12.701229 5.0489917 11.877263 12.701229 5.0489917 11.877263 12.647824 4.7077107 11.877263 
		12.61482 4.496788 11.877263 11.72312 4.9490485 11.877263 12.761767 4.7865186 11.877263;
	setAttr -s 22 ".vt[0:21]"  0.3087807 -1.37532902 -0.95032901 -0.80839807 -1.37532902 -0.58733565
		 -0.80839813 -1.37532902 0.58733553 0.30878055 -1.37532902 0.95032889 0.99923491 -1.37532902 0
		 0.4996177 -0.52532887 -1.53766465 -1.30801558 -0.52532887 -0.95032907 -1.30801558 -0.52532887 0.95032889
		 0.49961743 -0.52532887 1.53766453 1.61679614 -0.52532887 0 0.4996177 0.52532887 -1.53766465
		 -1.30801558 0.52532887 -0.95032907 -1.30801558 0.52532887 0.95032889 0.49961743 0.52532887 1.53766453
		 1.61679614 0.52532887 0 0.3087807 1.37532902 -0.95032901 -0.80839807 1.37532902 -0.58733565
		 -0.80839813 1.37532902 0.58733553 0.30878055 1.37532902 0.95032889 0.99923491 1.37532902 0
		 0 -1.70000005 0 0 1.70000005 0;
	setAttr -s 45 ".ed[0:44]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 10 11 0 11 12 0 12 13 0 13 14 0 14 10 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 15 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 5 10 0 6 11 0 7 12 0 8 13 0 9 14 0
		 10 15 0 11 16 0 12 17 0 13 18 0 14 19 0 20 0 0 20 1 0 20 2 0 20 3 0 20 4 0 15 21 0
		 16 21 0 17 21 0 18 21 0 19 21 0;
	setAttr -s 25 -ch 90 ".fc[0:24]" -type "polyFaces" 
		f 4 0 21 -6 -21
		mu 0 4 0 1 7 6
		f 4 1 22 -7 -22
		mu 0 4 1 2 8 7
		f 4 2 23 -8 -23
		mu 0 4 2 3 9 8
		f 4 3 24 -9 -24
		mu 0 4 3 4 10 9
		f 4 4 20 -10 -25
		mu 0 4 4 5 11 10
		f 4 5 26 -11 -26
		mu 0 4 6 7 13 12
		f 4 6 27 -12 -27
		mu 0 4 7 8 14 13
		f 4 7 28 -13 -28
		mu 0 4 8 9 15 14
		f 4 8 29 -14 -29
		mu 0 4 9 10 16 15
		f 4 9 25 -15 -30
		mu 0 4 10 11 17 16
		f 4 10 31 -16 -31
		mu 0 4 12 13 19 18
		f 4 11 32 -17 -32
		mu 0 4 13 14 20 19
		f 4 12 33 -18 -33
		mu 0 4 14 15 21 20
		f 4 13 34 -19 -34
		mu 0 4 15 16 22 21
		f 4 14 30 -20 -35
		mu 0 4 16 17 23 22
		f 3 -1 -36 36
		mu 0 3 1 0 24
		f 3 -2 -37 37
		mu 0 3 2 1 25
		f 3 -3 -38 38
		mu 0 3 3 2 26
		f 3 -4 -39 39
		mu 0 3 4 3 27
		f 3 -5 -40 35
		mu 0 3 5 4 28
		f 3 15 41 -41
		mu 0 3 18 19 29
		f 3 16 42 -42
		mu 0 3 19 20 30
		f 3 17 43 -43
		mu 0 3 20 21 31
		f 3 18 44 -44
		mu 0 3 21 22 32
		f 3 19 40 -45
		mu 0 3 22 23 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere7" -p "group7";
	rename -uid "188C8E5A-40E0-8123-8D96-639DB9D779E7";
	setAttr ".rp" -type "double3" 13.684580224738005 4.8353476178322143 11.877263678139466 ;
	setAttr ".sp" -type "double3" 13.684580224738005 4.8353476178322143 11.877263678139466 ;
createNode mesh -n "pSphereShape7" -p "pSphere7";
	rename -uid "E36B0F42-4533-122D-A3DC-7ABFC2D391EF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0 0.2 0.2 0.2 0.40000001
		 0.2 0.60000002 0.2 0.80000001 0.2 1 0.2 0 0.40000001 0.2 0.40000001 0.40000001 0.40000001
		 0.60000002 0.40000001 0.80000001 0.40000001 1 0.40000001 0 0.60000002 0.2 0.60000002
		 0.40000001 0.60000002 0.60000002 0.60000002 0.80000001 0.60000002 1 0.60000002 0
		 0.80000001 0.2 0.80000001 0.40000001 0.80000001 0.60000002 0.80000001 0.80000001
		 0.80000001 1 0.80000001 0.1 0 0.30000001 0 0.5 0 0.69999999 0 0.90000004 0 0.1 1
		 0.30000001 1 0.5 1 0.69999999 1 0.90000004 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  13.187961 5.2776055 12.174027 
		13.573553 5.5123134 12.060674 13.573553 5.5123134 11.693853 13.187961 5.2776055 11.580501 
		12.94965 5.1325483 11.877263 13.300669 4.9441357 12.357436 13.924572 5.3239007 12.174027 
		13.924572 5.3239007 11.580501 13.300669 4.9441357 11.397091 12.915075 4.7094283 11.877263 
		13.521401 4.581502 12.357436 14.145304 4.961267 12.174027 14.145304 4.961267 11.580501 
		13.521401 4.581502 11.397091 13.135808 4.3467946 11.877263 13.765844 4.328218 12.174027 
		14.151438 4.5629258 12.060674 14.151438 4.5629258 11.693853 13.765844 4.328218 11.580501 
		13.527535 4.1831608 11.877263 13.226326 5.4545369 11.877263 13.94063 4.2810302 11.877263;
	setAttr -s 22 ".vt[0:21]"  0.3087807 -1.37532902 -0.95032901 -0.80839807 -1.37532902 -0.58733565
		 -0.80839813 -1.37532902 0.58733553 0.30878055 -1.37532902 0.95032889 0.99923491 -1.37532902 0
		 0.4996177 -0.52532887 -1.53766465 -1.30801558 -0.52532887 -0.95032907 -1.30801558 -0.52532887 0.95032889
		 0.49961743 -0.52532887 1.53766453 1.61679614 -0.52532887 0 0.4996177 0.52532887 -1.53766465
		 -1.30801558 0.52532887 -0.95032907 -1.30801558 0.52532887 0.95032889 0.49961743 0.52532887 1.53766453
		 1.61679614 0.52532887 0 0.3087807 1.37532902 -0.95032901 -0.80839807 1.37532902 -0.58733565
		 -0.80839813 1.37532902 0.58733553 0.30878055 1.37532902 0.95032889 0.99923491 1.37532902 0
		 0 -1.70000005 0 0 1.70000005 0;
	setAttr -s 45 ".ed[0:44]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 10 11 0 11 12 0 12 13 0 13 14 0 14 10 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 15 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 5 10 0 6 11 0 7 12 0 8 13 0 9 14 0
		 10 15 0 11 16 0 12 17 0 13 18 0 14 19 0 20 0 0 20 1 0 20 2 0 20 3 0 20 4 0 15 21 0
		 16 21 0 17 21 0 18 21 0 19 21 0;
	setAttr -s 25 -ch 90 ".fc[0:24]" -type "polyFaces" 
		f 4 0 21 -6 -21
		mu 0 4 0 1 7 6
		f 4 1 22 -7 -22
		mu 0 4 1 2 8 7
		f 4 2 23 -8 -23
		mu 0 4 2 3 9 8
		f 4 3 24 -9 -24
		mu 0 4 3 4 10 9
		f 4 4 20 -10 -25
		mu 0 4 4 5 11 10
		f 4 5 26 -11 -26
		mu 0 4 6 7 13 12
		f 4 6 27 -12 -27
		mu 0 4 7 8 14 13
		f 4 7 28 -13 -28
		mu 0 4 8 9 15 14
		f 4 8 29 -14 -29
		mu 0 4 9 10 16 15
		f 4 9 25 -15 -30
		mu 0 4 10 11 17 16
		f 4 10 31 -16 -31
		mu 0 4 12 13 19 18
		f 4 11 32 -17 -32
		mu 0 4 13 14 20 19
		f 4 12 33 -18 -33
		mu 0 4 14 15 21 20
		f 4 13 34 -19 -34
		mu 0 4 15 16 22 21
		f 4 14 30 -20 -35
		mu 0 4 16 17 23 22
		f 3 -1 -36 36
		mu 0 3 1 0 24
		f 3 -2 -37 37
		mu 0 3 2 1 25
		f 3 -3 -38 38
		mu 0 3 3 2 26
		f 3 -4 -39 39
		mu 0 3 4 3 27
		f 3 -5 -40 35
		mu 0 3 5 4 28
		f 3 15 41 -41
		mu 0 3 18 19 29
		f 3 16 42 -42
		mu 0 3 19 20 30
		f 3 17 43 -43
		mu 0 3 20 21 31
		f 3 18 44 -44
		mu 0 3 21 22 32
		f 3 19 40 -45
		mu 0 3 22 23 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere8" -p "group7";
	rename -uid "EF2707C6-4E9C-2DD6-39FE-D69DBC4AE81C";
	setAttr ".rp" -type "double3" 11.322144093065644 4.8353476565955997 13.060604945838559 ;
	setAttr ".sp" -type "double3" 11.322144093065644 4.8353476565955997 13.060604945838559 ;
createNode mesh -n "pSphereShape8" -p "pSphere8";
	rename -uid "A97933FD-41AF-0111-AA94-CEA7F02B8FE6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0 0.2 0.2 0.2 0.40000001
		 0.2 0.60000002 0.2 0.80000001 0.2 1 0.2 0 0.40000001 0.2 0.40000001 0.40000001 0.40000001
		 0.60000002 0.40000001 0.80000001 0.40000001 1 0.40000001 0 0.60000002 0.2 0.60000002
		 0.40000001 0.60000002 0.60000002 0.60000002 0.80000001 0.60000002 1 0.60000002 0
		 0.80000001 0.2 0.80000001 0.40000001 0.80000001 0.60000002 0.80000001 0.80000001
		 0.80000001 1 0.80000001 0.1 0 0.30000001 0 0.5 0 0.69999999 0 0.90000004 0 0.1 1
		 0.30000001 1 0.5 1 0.69999999 1 0.90000004 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  11.08708 6.0928798 12.864747 
		11.413505 6.143158 12.65925 11.222032 5.5463319 11.994246 10.777269 5.1271944 11.788749 
		10.693865 5.4649796 12.326748 11.229613 5.8523688 13.650797 11.757778 5.9337206 13.318295 
		11.447967 4.9680357 12.242297 10.728327 4.2898574 11.909796 10.593376 4.8364058 12.780296 
		11.368871 5.2357807 14.211414 11.897038 5.3171325 13.878912 11.587225 4.3514471 12.802914 
		10.867585 3.673269 12.470412 10.732635 4.2198167 13.340913 11.451664 4.4786291 14.332461 
		11.778089 4.5289073 14.126965 11.586614 3.9320812 13.461961 11.141851 3.512944 13.256462 
		11.058449 3.8507295 13.794461 10.995716 5.8654451 12.153508 11.446366 3.870122 13.967701;
	setAttr -s 22 ".vt[0:21]"  0.3087807 -1.37532902 -0.95032901 -0.80839807 -1.37532902 -0.58733565
		 -0.80839813 -1.37532902 0.58733553 0.30878055 -1.37532902 0.95032889 0.99923491 -1.37532902 0
		 0.4996177 -0.52532887 -1.53766465 -1.30801558 -0.52532887 -0.95032907 -1.30801558 -0.52532887 0.95032889
		 0.49961743 -0.52532887 1.53766453 1.61679614 -0.52532887 0 0.4996177 0.52532887 -1.53766465
		 -1.30801558 0.52532887 -0.95032907 -1.30801558 0.52532887 0.95032889 0.49961743 0.52532887 1.53766453
		 1.61679614 0.52532887 0 0.3087807 1.37532902 -0.95032901 -0.80839807 1.37532902 -0.58733565
		 -0.80839813 1.37532902 0.58733553 0.30878055 1.37532902 0.95032889 0.99923491 1.37532902 0
		 0 -1.70000005 0 0 1.70000005 0;
	setAttr -s 45 ".ed[0:44]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 10 11 0 11 12 0 12 13 0 13 14 0 14 10 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 15 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 5 10 0 6 11 0 7 12 0 8 13 0 9 14 0
		 10 15 0 11 16 0 12 17 0 13 18 0 14 19 0 20 0 0 20 1 0 20 2 0 20 3 0 20 4 0 15 21 0
		 16 21 0 17 21 0 18 21 0 19 21 0;
	setAttr -s 25 -ch 90 ".fc[0:24]" -type "polyFaces" 
		f 4 0 21 -6 -21
		mu 0 4 0 1 7 6
		f 4 1 22 -7 -22
		mu 0 4 1 2 8 7
		f 4 2 23 -8 -23
		mu 0 4 2 3 9 8
		f 4 3 24 -9 -24
		mu 0 4 3 4 10 9
		f 4 4 20 -10 -25
		mu 0 4 4 5 11 10
		f 4 5 26 -11 -26
		mu 0 4 6 7 13 12
		f 4 6 27 -12 -27
		mu 0 4 7 8 14 13
		f 4 7 28 -13 -28
		mu 0 4 8 9 15 14
		f 4 8 29 -14 -29
		mu 0 4 9 10 16 15
		f 4 9 25 -15 -30
		mu 0 4 10 11 17 16
		f 4 10 31 -16 -31
		mu 0 4 12 13 19 18
		f 4 11 32 -17 -32
		mu 0 4 13 14 20 19
		f 4 12 33 -18 -33
		mu 0 4 14 15 21 20
		f 4 13 34 -19 -34
		mu 0 4 15 16 22 21
		f 4 14 30 -20 -35
		mu 0 4 16 17 23 22
		f 3 -1 -36 36
		mu 0 3 1 0 24
		f 3 -2 -37 37
		mu 0 3 2 1 25
		f 3 -3 -38 38
		mu 0 3 3 2 26
		f 3 -4 -39 39
		mu 0 3 4 3 27
		f 3 -5 -40 35
		mu 0 3 5 4 28
		f 3 15 41 -41
		mu 0 3 18 19 29
		f 3 16 42 -42
		mu 0 3 19 20 30
		f 3 17 43 -43
		mu 0 3 20 21 31
		f 3 18 44 -44
		mu 0 3 21 22 32
		f 3 19 40 -45
		mu 0 3 22 23 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere9" -p "group7";
	rename -uid "3260B5A1-4F40-D3A7-40D8-BA8F1ECE137F";
	setAttr ".rp" -type "double3" 11.322144069199377 4.8353475822042826 11.124114107793819 ;
	setAttr ".sp" -type "double3" 11.322144069199377 4.8353475822042826 11.124114107793819 ;
createNode mesh -n "pSphereShape9" -p "pSphere9";
	rename -uid "4D5DC0F1-41B6-ADA6-971A-EAB1DF5381BD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0 0.2 0.2 0.2 0.40000001
		 0.2 0.60000002 0.2 0.80000001 0.2 1 0.2 0 0.40000001 0.2 0.40000001 0.40000001 0.40000001
		 0.60000002 0.40000001 0.80000001 0.40000001 1 0.40000001 0 0.60000002 0.2 0.60000002
		 0.40000001 0.60000002 0.60000002 0.60000002 0.80000001 0.60000002 1 0.60000002 0
		 0.80000001 0.2 0.80000001 0.40000001 0.80000001 0.60000002 0.80000001 0.80000001
		 0.80000001 1 0.80000001 0.1 0 0.30000001 0 0.5 0 0.69999999 0 0.90000004 0 0.1 1
		 0.30000001 1 0.5 1 0.69999999 1 0.90000004 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  10.769527 5.1030641 12.290758 
		11.209503 5.5072832 12.102775 11.385489 6.0558338 11.494449 11.054279 5.9906378 11.306465 
		10.673594 5.401793 11.798612 10.740857 4.3289161 12.178059 11.452754 4.9829564 11.873897 
		11.737506 5.8705306 10.889602 11.201595 5.7650409 10.58544 10.585633 4.8122706 11.381749 
		10.895602 3.7605972 11.662789 11.607497 4.4146376 11.358625 11.89225 5.3022113 10.374332 
		11.35634 5.196722 10.070169 10.740378 4.2439518 10.86648 11.174653 3.6151857 10.941764 
		11.614629 4.0194049 10.75378 11.790615 4.567956 10.145453 11.459406 4.5027599 9.9574699 
		11.078719 3.9139154 10.449616 10.97066 5.7873425 11.957839 11.471423 3.9482241 10.290389;
	setAttr -s 22 ".vt[0:21]"  0.3087807 -1.37532902 -0.95032901 -0.80839807 -1.37532902 -0.58733565
		 -0.80839813 -1.37532902 0.58733553 0.30878055 -1.37532902 0.95032889 0.99923491 -1.37532902 0
		 0.4996177 -0.52532887 -1.53766465 -1.30801558 -0.52532887 -0.95032907 -1.30801558 -0.52532887 0.95032889
		 0.49961743 -0.52532887 1.53766453 1.61679614 -0.52532887 0 0.4996177 0.52532887 -1.53766465
		 -1.30801558 0.52532887 -0.95032907 -1.30801558 0.52532887 0.95032889 0.49961743 0.52532887 1.53766453
		 1.61679614 0.52532887 0 0.3087807 1.37532902 -0.95032901 -0.80839807 1.37532902 -0.58733565
		 -0.80839813 1.37532902 0.58733553 0.30878055 1.37532902 0.95032889 0.99923491 1.37532902 0
		 0 -1.70000005 0 0 1.70000005 0;
	setAttr -s 45 ".ed[0:44]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 10 11 0 11 12 0 12 13 0 13 14 0 14 10 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 15 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 5 10 0 6 11 0 7 12 0 8 13 0 9 14 0
		 10 15 0 11 16 0 12 17 0 13 18 0 14 19 0 20 0 0 20 1 0 20 2 0 20 3 0 20 4 0 15 21 0
		 16 21 0 17 21 0 18 21 0 19 21 0;
	setAttr -s 25 -ch 90 ".fc[0:24]" -type "polyFaces" 
		f 4 0 21 -6 -21
		mu 0 4 0 1 7 6
		f 4 1 22 -7 -22
		mu 0 4 1 2 8 7
		f 4 2 23 -8 -23
		mu 0 4 2 3 9 8
		f 4 3 24 -9 -24
		mu 0 4 3 4 10 9
		f 4 4 20 -10 -25
		mu 0 4 4 5 11 10
		f 4 5 26 -11 -26
		mu 0 4 6 7 13 12
		f 4 6 27 -12 -27
		mu 0 4 7 8 14 13
		f 4 7 28 -13 -28
		mu 0 4 8 9 15 14
		f 4 8 29 -14 -29
		mu 0 4 9 10 16 15
		f 4 9 25 -15 -30
		mu 0 4 10 11 17 16
		f 4 10 31 -16 -31
		mu 0 4 12 13 19 18
		f 4 11 32 -17 -32
		mu 0 4 13 14 20 19
		f 4 12 33 -18 -33
		mu 0 4 14 15 21 20
		f 4 13 34 -19 -34
		mu 0 4 15 16 22 21
		f 4 14 30 -20 -35
		mu 0 4 16 17 23 22
		f 3 -1 -36 36
		mu 0 3 1 0 24
		f 3 -2 -37 37
		mu 0 3 2 1 25
		f 3 -3 -38 38
		mu 0 3 3 2 26
		f 3 -4 -39 39
		mu 0 3 4 3 27
		f 3 -5 -40 35
		mu 0 3 5 4 28
		f 3 15 41 -41
		mu 0 3 18 19 29
		f 3 16 42 -42
		mu 0 3 19 20 30
		f 3 17 43 -43
		mu 0 3 20 21 31
		f 3 18 44 -44
		mu 0 3 21 22 32
		f 3 19 40 -45
		mu 0 3 22 23 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere10" -p "group7";
	rename -uid "810A31CC-476B-7B0A-7B4C-7DB6FCE23E35";
	setAttr ".rp" -type "double3" 13.101981856620618 6.1092600803212127 11.124114100293744 ;
	setAttr ".sp" -type "double3" 13.101981856620618 6.1092600803212127 11.124114100293744 ;
createNode mesh -n "pSphereShape10" -p "pSphere10";
	rename -uid "A77739ED-4849-0315-9DB8-D8ABC27D0510";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0 0.2 0.2 0.2 0.40000001
		 0.2 0.60000002 0.2 0.80000001 0.2 1 0.2 0 0.40000001 0.2 0.40000001 0.40000001 0.40000001
		 0.60000002 0.40000001 0.80000001 0.40000001 1 0.40000001 0 0.60000002 0.2 0.60000002
		 0.40000001 0.60000002 0.60000002 0.60000002 0.80000001 0.60000002 1 0.60000002 0
		 0.80000001 0.2 0.80000001 0.40000001 0.80000001 0.60000002 0.80000001 0.80000001
		 0.80000001 1 0.80000001 0.1 0 0.30000001 0 0.5 0 0.69999999 0 0.90000004 0 0.1 1
		 0.30000001 1 0.5 1 0.69999999 1 0.90000004 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  12.499647 6.1511369 12.334865 
		12.801544 6.6377759 12.182565 13.013413 7.2981744 11.689714 12.84246 7.2196851 11.537415 
		12.524936 6.510777 11.93614 12.504043 5.3924556 12.07943 12.992522 6.179853 11.833005 
		13.335335 7.2484002 11.035556 13.058725 7.1214018 10.789129 12.54496 5.9743648 11.434279 
		12.690339 4.9224839 11.459098 13.178819 5.7098818 11.212673 13.521629 6.7784295 10.415223 
		13.245021 6.6514306 10.168798 12.731255 5.5043931 10.813948 12.987377 4.9207363 10.710813 
		13.289273 5.4073749 10.558515 13.501143 6.0677733 10.065663 13.330189 5.989284 9.9133635 
		13.012665 5.280376 10.312089 12.67883 6.9087391 12.127833 13.281698 5.3878803 10.120396;
	setAttr -s 22 ".vt[0:21]"  0.3087807 -1.37532902 -0.95032901 -0.80839807 -1.37532902 -0.58733565
		 -0.80839813 -1.37532902 0.58733553 0.30878055 -1.37532902 0.95032889 0.99923491 -1.37532902 0
		 0.4996177 -0.52532887 -1.53766465 -1.30801558 -0.52532887 -0.95032907 -1.30801558 -0.52532887 0.95032889
		 0.49961743 -0.52532887 1.53766453 1.61679614 -0.52532887 0 0.4996177 0.52532887 -1.53766465
		 -1.30801558 0.52532887 -0.95032907 -1.30801558 0.52532887 0.95032889 0.49961743 0.52532887 1.53766453
		 1.61679614 0.52532887 0 0.3087807 1.37532902 -0.95032901 -0.80839807 1.37532902 -0.58733565
		 -0.80839813 1.37532902 0.58733553 0.30878055 1.37532902 0.95032889 0.99923491 1.37532902 0
		 0 -1.70000005 0 0 1.70000005 0;
	setAttr -s 45 ".ed[0:44]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 10 11 0 11 12 0 12 13 0 13 14 0 14 10 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 15 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 5 10 0 6 11 0 7 12 0 8 13 0 9 14 0
		 10 15 0 11 16 0 12 17 0 13 18 0 14 19 0 20 0 0 20 1 0 20 2 0 20 3 0 20 4 0 15 21 0
		 16 21 0 17 21 0 18 21 0 19 21 0;
	setAttr -s 25 -ch 90 ".fc[0:24]" -type "polyFaces" 
		f 4 0 21 -6 -21
		mu 0 4 0 1 7 6
		f 4 1 22 -7 -22
		mu 0 4 1 2 8 7
		f 4 2 23 -8 -23
		mu 0 4 2 3 9 8
		f 4 3 24 -9 -24
		mu 0 4 3 4 10 9
		f 4 4 20 -10 -25
		mu 0 4 4 5 11 10
		f 4 5 26 -11 -26
		mu 0 4 6 7 13 12
		f 4 6 27 -12 -27
		mu 0 4 7 8 14 13
		f 4 7 28 -13 -28
		mu 0 4 8 9 15 14
		f 4 8 29 -14 -29
		mu 0 4 9 10 16 15
		f 4 9 25 -15 -30
		mu 0 4 10 11 17 16
		f 4 10 31 -16 -31
		mu 0 4 12 13 19 18
		f 4 11 32 -17 -32
		mu 0 4 13 14 20 19
		f 4 12 33 -18 -33
		mu 0 4 14 15 21 20
		f 4 13 34 -19 -34
		mu 0 4 15 16 22 21
		f 4 14 30 -20 -35
		mu 0 4 16 17 23 22
		f 3 -1 -36 36
		mu 0 3 1 0 24
		f 3 -2 -37 37
		mu 0 3 2 1 25
		f 3 -3 -38 38
		mu 0 3 3 2 26
		f 3 -4 -39 39
		mu 0 3 4 3 27
		f 3 -5 -40 35
		mu 0 3 5 4 28
		f 3 15 41 -41
		mu 0 3 18 19 29
		f 3 16 42 -42
		mu 0 3 19 20 30
		f 3 17 43 -43
		mu 0 3 20 21 31
		f 3 18 44 -44
		mu 0 3 21 22 32
		f 3 19 40 -45
		mu 0 3 22 23 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere11" -p "group7";
	rename -uid "F728BE18-4BFB-7CF7-E042-2680A8C44EED";
	setAttr ".rp" -type "double3" 12.073598531178602 6.2090902615964119 11.941364086166018 ;
	setAttr ".sp" -type "double3" 12.073598531178602 6.2090902615964119 11.941364086166018 ;
createNode mesh -n "pSphereShape11" -p "pSphere11";
	rename -uid "923940E0-428C-4C34-5360-C3BAAD6A0AF9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0 0.2 0.2 0.2 0.40000001
		 0.2 0.60000002 0.2 0.80000001 0.2 1 0.2 0 0.40000001 0.2 0.40000001 0.40000001 0.40000001
		 0.60000002 0.40000001 0.80000001 0.40000001 1 0.40000001 0 0.60000002 0.2 0.60000002
		 0.40000001 0.60000002 0.60000002 0.60000002 0.80000001 0.60000002 1 0.60000002 0
		 0.80000001 0.2 0.80000001 0.40000001 0.80000001 0.60000002 0.80000001 0.80000001
		 0.80000001 1 0.80000001 0.1 0 0.30000001 0 0.5 0 0.69999999 0 0.90000004 0 0.1 1
		 0.30000001 1 0.5 1 0.69999999 1 0.90000004 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  12.9117 7.0962248 11.489337 
		12.919497 6.4276123 10.91268 12.681958 5.6872034 10.79574 12.527355 5.8982177 11.300124 
		12.669343 6.7690411 11.728791 12.515039 7.4010482 12.024144 12.527654 6.3192101 11.091091 
		12.143308 5.1212034 10.901877 11.893155 5.4626327 11.717991 12.122898 6.8716536 12.41159 
		11.895077 7.2273684 12.498798 11.907692 6.1455302 11.565746 11.523346 4.9475231 11.376534 
		11.273193 5.2889519 12.192645 11.502935 6.6979737 12.886244 11.288618 6.6415238 12.732 
		11.296414 5.9729114 12.155342 11.058876 5.2325025 12.038403 10.904272 5.4435167 12.542787 
		11.046262 6.3143401 12.971455 12.93355 6.4293299 11.098659 10.92731 5.8672886 12.634674;
	setAttr -s 22 ".vt[0:21]"  0.3087807 -1.37532902 -0.95032901 -0.80839807 -1.37532902 -0.58733565
		 -0.80839813 -1.37532902 0.58733553 0.30878055 -1.37532902 0.95032889 0.99923491 -1.37532902 0
		 0.4996177 -0.52532887 -1.53766465 -1.30801558 -0.52532887 -0.95032907 -1.30801558 -0.52532887 0.95032889
		 0.49961743 -0.52532887 1.53766453 1.61679614 -0.52532887 0 0.4996177 0.52532887 -1.53766465
		 -1.30801558 0.52532887 -0.95032907 -1.30801558 0.52532887 0.95032889 0.49961743 0.52532887 1.53766453
		 1.61679614 0.52532887 0 0.3087807 1.37532902 -0.95032901 -0.80839807 1.37532902 -0.58733565
		 -0.80839813 1.37532902 0.58733553 0.30878055 1.37532902 0.95032889 0.99923491 1.37532902 0
		 0 -1.70000005 0 0 1.70000005 0;
	setAttr -s 45 ".ed[0:44]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 10 11 0 11 12 0 12 13 0 13 14 0 14 10 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 15 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 5 10 0 6 11 0 7 12 0 8 13 0 9 14 0
		 10 15 0 11 16 0 12 17 0 13 18 0 14 19 0 20 0 0 20 1 0 20 2 0 20 3 0 20 4 0 15 21 0
		 16 21 0 17 21 0 18 21 0 19 21 0;
	setAttr -s 25 -ch 90 ".fc[0:24]" -type "polyFaces" 
		f 4 0 21 -6 -21
		mu 0 4 0 1 7 6
		f 4 1 22 -7 -22
		mu 0 4 1 2 8 7
		f 4 2 23 -8 -23
		mu 0 4 2 3 9 8
		f 4 3 24 -9 -24
		mu 0 4 3 4 10 9
		f 4 4 20 -10 -25
		mu 0 4 4 5 11 10
		f 4 5 26 -11 -26
		mu 0 4 6 7 13 12
		f 4 6 27 -12 -27
		mu 0 4 7 8 14 13
		f 4 7 28 -13 -28
		mu 0 4 8 9 15 14
		f 4 8 29 -14 -29
		mu 0 4 9 10 16 15
		f 4 9 25 -15 -30
		mu 0 4 10 11 17 16
		f 4 10 31 -16 -31
		mu 0 4 12 13 19 18
		f 4 11 32 -17 -32
		mu 0 4 13 14 20 19
		f 4 12 33 -18 -33
		mu 0 4 14 15 21 20
		f 4 13 34 -19 -34
		mu 0 4 15 16 22 21
		f 4 14 30 -20 -35
		mu 0 4 16 17 23 22
		f 3 -1 -36 36
		mu 0 3 1 0 24
		f 3 -2 -37 37
		mu 0 3 2 1 25
		f 3 -3 -38 38
		mu 0 3 3 2 26
		f 3 -4 -39 39
		mu 0 3 4 3 27
		f 3 -5 -40 35
		mu 0 3 5 4 28
		f 3 15 41 -41
		mu 0 3 18 19 29
		f 3 16 42 -42
		mu 0 3 19 20 30
		f 3 17 43 -43
		mu 0 3 20 21 31
		f 3 18 44 -44
		mu 0 3 21 22 32
		f 3 19 40 -45
		mu 0 3 22 23 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere12" -p "group7";
	rename -uid "F8FC71E4-4122-4382-9154-49B19BD8B23C";
	setAttr ".rp" -type "double3" 10.262915303442288 4.9062077802583905 12.292864504752925 ;
	setAttr ".sp" -type "double3" 10.262915303442288 4.9062077802583905 12.292864504752925 ;
createNode mesh -n "pSphereShape12" -p "pSphere12";
	rename -uid "955DA834-4978-E7EA-5728-E48F970F5519";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0 0.2 0.2 0.2 0.40000001
		 0.2 0.60000002 0.2 0.80000001 0.2 1 0.2 0 0.40000001 0.2 0.40000001 0.40000001 0.40000001
		 0.60000002 0.40000001 0.80000001 0.40000001 1 0.40000001 0 0.60000002 0.2 0.60000002
		 0.40000001 0.60000002 0.60000002 0.60000002 0.80000001 0.60000002 1 0.60000002 0
		 0.80000001 0.2 0.80000001 0.40000001 0.80000001 0.60000002 0.80000001 0.80000001
		 0.80000001 1 0.80000001 0.1 0 0.30000001 0 0.5 0 0.69999999 0 0.90000004 0 0.1 1
		 0.30000001 1 0.5 1 0.69999999 1 0.90000004 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  10.726698 6.3385687 12.798995 
		11.504945 5.9178853 12.122087 11.356854 5.4562836 11.341605 10.487082 5.591682 11.536151 
		10.097623 6.1369643 12.436868 10.2816 5.986165 13.378317 11.540832 5.3054848 12.283054 
		11.301214 4.5585976 11.02021 9.8938932 4.7776771 11.334992 9.2637367 5.6599622 12.792383 
		9.8138914 5.2065778 13.520032 11.073121 4.525897 12.424768 10.833505 3.7790101 11.161923 
		9.4261837 3.9980893 11.476707 8.7960272 4.8803744 12.934098 9.5022182 4.2975821 13.17001 
		10.280465 3.8768983 12.4931 10.132374 3.415297 11.71262 9.2626009 3.5506952 11.907166 
		8.8731441 4.0959773 12.807883 10.97917 6.1291828 12.003348 9.4656305 3.6063843 12.461948;
	setAttr -s 22 ".vt[0:21]"  0.3087807 -1.37532902 -0.95032901 -0.80839807 -1.37532902 -0.58733565
		 -0.80839813 -1.37532902 0.58733553 0.30878055 -1.37532902 0.95032889 0.99923491 -1.37532902 0
		 0.4996177 -0.52532887 -1.53766465 -1.30801558 -0.52532887 -0.95032907 -1.30801558 -0.52532887 0.95032889
		 0.49961743 -0.52532887 1.53766453 1.61679614 -0.52532887 0 0.4996177 0.52532887 -1.53766465
		 -1.30801558 0.52532887 -0.95032907 -1.30801558 0.52532887 0.95032889 0.49961743 0.52532887 1.53766453
		 1.61679614 0.52532887 0 0.3087807 1.37532902 -0.95032901 -0.80839807 1.37532902 -0.58733565
		 -0.80839813 1.37532902 0.58733553 0.30878055 1.37532902 0.95032889 0.99923491 1.37532902 0
		 0 -1.70000005 0 0 1.70000005 0;
	setAttr -s 45 ".ed[0:44]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 10 11 0 11 12 0 12 13 0 13 14 0 14 10 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 15 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 5 10 0 6 11 0 7 12 0 8 13 0 9 14 0
		 10 15 0 11 16 0 12 17 0 13 18 0 14 19 0 20 0 0 20 1 0 20 2 0 20 3 0 20 4 0 15 21 0
		 16 21 0 17 21 0 18 21 0 19 21 0;
	setAttr -s 25 -ch 90 ".fc[0:24]" -type "polyFaces" 
		f 4 0 21 -6 -21
		mu 0 4 0 1 7 6
		f 4 1 22 -7 -22
		mu 0 4 1 2 8 7
		f 4 2 23 -8 -23
		mu 0 4 2 3 9 8
		f 4 3 24 -9 -24
		mu 0 4 3 4 10 9
		f 4 4 20 -10 -25
		mu 0 4 4 5 11 10
		f 4 5 26 -11 -26
		mu 0 4 6 7 13 12
		f 4 6 27 -12 -27
		mu 0 4 7 8 14 13
		f 4 7 28 -13 -28
		mu 0 4 8 9 15 14
		f 4 8 29 -14 -29
		mu 0 4 9 10 16 15
		f 4 9 25 -15 -30
		mu 0 4 10 11 17 16
		f 4 10 31 -16 -31
		mu 0 4 12 13 19 18
		f 4 11 32 -17 -32
		mu 0 4 13 14 20 19
		f 4 12 33 -18 -33
		mu 0 4 14 15 21 20
		f 4 13 34 -19 -34
		mu 0 4 15 16 22 21
		f 4 14 30 -20 -35
		mu 0 4 16 17 23 22
		f 3 -1 -36 36
		mu 0 3 1 0 24
		f 3 -2 -37 37
		mu 0 3 2 1 25
		f 3 -3 -38 38
		mu 0 3 3 2 26
		f 3 -4 -39 39
		mu 0 3 4 3 27
		f 3 -5 -40 35
		mu 0 3 5 4 28
		f 3 15 41 -41
		mu 0 3 18 19 29
		f 3 16 42 -42
		mu 0 3 19 20 30
		f 3 17 43 -43
		mu 0 3 20 21 31
		f 3 18 44 -44
		mu 0 3 21 22 32
		f 3 19 40 -45
		mu 0 3 22 23 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube170" -p "group7";
	rename -uid "EDA8A402-4B98-C974-743B-248CE673B801";
	setAttr ".rp" -type "double3" -2.4014672784928148 -0.59136573446025575 12.682385258360057 ;
	setAttr ".sp" -type "double3" -2.4014672784928148 -0.59136573446025575 12.682385258360057 ;
createNode mesh -n "pCubeShape170" -p "pCube170";
	rename -uid "4B9E64BE-410D-5997-851B-B5ADEEEB8114";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.8663251 -0.59136575 14.104764 
		-1.9366094 -0.59136575 14.104764 -2.8663251 -0.59136575 14.104764 -1.9366094 -0.59136575 
		14.104764 -2.8663251 -0.59136575 11.260006 -1.9366094 -0.59136575 11.260006 -2.8663251 
		-0.59136575 11.260006 -1.9366094 -0.59136575 11.260006;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "sunDirection" -p "group7";
	rename -uid "75C3E3DF-4D46-3A2E-3135-459374728069";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 6.9388939039072285e-20 0 ;
	setAttr ".r" -type "double3" -29.999999999999996 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.00060849364905389048 3.8518598887744718e-36 ;
	setAttr ".rpt" -type "double3" 0 8.1522690931728494e-05 0.00030424682452694524 ;
	setAttr ".sp" -type "double3" 0 -0.00060849364905389048 3.8518598887744718e-36 ;
createNode directionalLight -n "sunShape" -p "sunDirection";
	rename -uid "0B19CB66-4B6A-B4D8-CA2A-EC8D042055BB";
	setAttr -k off ".v";
createNode transform -n "persp2";
	rename -uid "557247D7-49CF-13C2-D223-65AA250DB1B4";
	setAttr ".t" -type "double3" 0.019076080160908903 0.31415678058007923 1.0888115088938124 ;
	setAttr ".r" -type "double3" -2.7383527296035837 -1.000000000000689 3.1064835636100452e-18 ;
createNode camera -n "perspShape2" -p "persp2";
	rename -uid "DD3A6EC8-4F73-A695-4245-298D8B65C190";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 1.0964095928916648;
	setAttr ".imn" -type "string" "persp2";
	setAttr ".den" -type "string" "persp2_depth";
	setAttr ".man" -type "string" "persp2_mask";
	setAttr ".tp" -type "double3" 14.705597253194727 25.427467365958311 -0.39202128922045887 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube48" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube49" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube50" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube51" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube52" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube53" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube54" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube55" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube56" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube57" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube60" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube61" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube62" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube63" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube64" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube65" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube66" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube67" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube68" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube69" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube70" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube71" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube72" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube73" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube74" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube75" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube78" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube79" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube80" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube81" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube82" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube83" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube84" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube85" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube86" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube87" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube88" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube89" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube90" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube91" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube92" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube93" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube94" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube95" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube96" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube97" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube98" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube99" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube100" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube101" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube102" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube103" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube104" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube105" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube108" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube109" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube110" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube111" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube112" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube113" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube114" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube115" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube116" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube117" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube118" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube119" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube120" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube121" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube122" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube123" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube124" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube125" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube126" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube127" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube128" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube129" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube130" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube131" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube132" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube133" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube134" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube135" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube138" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube139" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube140" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube141" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube142" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube143" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube144" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube145" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube146" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube147" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube148" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube149" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube150" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube151" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube152" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube153" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube154" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube155" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube156" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube157" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube158" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube159" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube160" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube161" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube162" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube163" ;
parent -s -nc -r -add "|group7|pCube47|pCubeShape47" "pCube164" ;
createNode materialInfo -n "materialInfo4";
	rename -uid "C224B33A-4C45-A3EB-96D4-1990A48253D4";
createNode shadingEngine -n "lambert4SG";
	rename -uid "597240F8-4FB6-20B9-844B-1BAA4A2A6F99";
	setAttr ".ihi" 0;
	setAttr -s 61 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode lambert -n "lambert4";
	rename -uid "2682A755-4369-F126-220D-309504DF4FC5";
	setAttr ".c" -type "float3" 0.62900001 0.28353184 0.10064002 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "978D0EB2-4FFC-9BCB-1CFD-7CA0FD73A252";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "71B48C77-445D-55D8-EF74-CDA9DDA4FB49";
createNode lambert -n "lambert6";
	rename -uid "69CB9A37-4DA7-B736-104D-E88CEDB90373";
	setAttr ".c" -type "float3" 0.14399999 0.073872 0.073872 ;
createNode groupId -n "groupId10";
	rename -uid "A408A48B-4457-6ECB-17CB-ACA9038A7FBB";
	setAttr ".ihi" 0;
createNode materialInfo -n "materialInfo7";
	rename -uid "E24B93A9-46D1-C399-7BA7-F7A6100BF177";
createNode shadingEngine -n "lambert7SG";
	rename -uid "877B5F68-4036-22F8-CD4F-E0B6BBDEC43B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "lambert7";
	rename -uid "44BA5890-43AD-16F2-D2A5-0692BFD3CCA0";
	setAttr ".c" -type "float3" 0.10348799 0.67199999 0.10348799 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "AFED1D9B-488E-E3D9-C205-4E82944C5C5F";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "22F1FB45-4113-233A-11E0-0DB6AC1567A3";
createNode lambert -n "Cream";
	rename -uid "5537E800-4BF8-BFC8-42BC-54AE910595B9";
	setAttr ".c" -type "float3" 0.76700002 0.50468892 0.38810205 ;
createNode groupId -n "groupId7";
	rename -uid "74379449-427D-DEAD-DF82-B9BDF9D25477";
	setAttr ".ihi" 0;
createNode materialInfo -n "materialInfo5";
	rename -uid "EED65708-4B32-C2E2-6163-1889467FF829";
createNode shadingEngine -n "lambert5SG";
	rename -uid "E002DEFF-4099-4338-5277-1DA92299BA60";
	setAttr ".ihi" 0;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "lambert5";
	rename -uid "91E5F5C0-4DA3-87EB-24EF-71A913093DFD";
	setAttr ".c" -type "float3" 0 0.23311891 0.551 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "488FCD11-4D65-B434-2620-B39D1C644239";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "C6CC2A89-4282-95B4-4440-E882AF65E118";
createNode lambert -n "Red";
	rename -uid "EDB3D35F-4187-F3D5-DF48-099EA23EB906";
	setAttr ".c" -type "float3" 0.086999997 0.046805996 0.046805996 ;
createNode materialInfo -n "materialInfo8";
	rename -uid "BDE3514F-4521-3A7F-8470-148E8789C324";
createNode shadingEngine -n "lambert8SG";
	rename -uid "0D213DC0-47D8-60A8-C8C2-46848D0D2CF2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "lambert8";
	rename -uid "060A0A09-430D-56EF-455E-AAB9B05A1376";
	setAttr ".c" -type "float3" 0.086999997 0.046805996 0.046805996 ;
createNode materialInfo -n "materialInfo9";
	rename -uid "84F22ED4-4DD4-6699-3344-D395F93BF5FF";
createNode shadingEngine -n "lambert9SG";
	rename -uid "8730EFD9-4545-CE0F-E5DC-C2B556C6E3B9";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "lambert9";
	rename -uid "9C968590-45DD-8071-08AA-2F912796AE8C";
	setAttr ".c" -type "float3" 0.017414998 0.12899999 0.017414998 ;
createNode mia_physicalsun -n "mia_physicalsun1";
	rename -uid "F0C90626-4A53-4225-7460-999376588E9C";
createNode mia_physicalsky -n "mia_physicalsky1";
	rename -uid "1BE0F73F-42D4-1437-DC3F-83B140D0939C";
	setAttr ".S01" 0.20000000298023224;
	setAttr ".S18" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "47A7FC1D-4D20-5D73-896D-CEAF008444F4";
	setAttr -s 123 ".lnk";
	setAttr -s 123 ".slnk";
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings";
	rename -uid "CBC56840-47C7-0306-468A-35BB5CDAE850";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "76A97146-4B15-60B1-3DED-DB805F29D61A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "BCECFE02-4D84-7F40-221F-2383958A080E";
createNode displayLayerManager -n "layerManager";
	rename -uid "37A5911A-4192-ED01-AAC5-8FA1684D017B";
createNode displayLayer -n "defaultLayer";
	rename -uid "7C128C0A-482F-4697-D25E-74B001D62812";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "15ABD3DD-4630-6B55-E564-DE9109072DE4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "AE2DCB41-4912-C2F5-E76B-8FB395EE8035";
	setAttr ".g" yes;
createNode standardSurface -n "WeatherSurface1";
	rename -uid "5A0FEE8F-4227-73E7-8770-7D937CEB1A02";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG1";
	rename -uid "B752AD10-4326-9B76-EF97-D08748874ECE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "D1AD0CD1-4D6A-B9F2-7446-48B8A4537F5A";
createNode standardSurface -n "WeatherSurface2";
	rename -uid "B3F04B43-4F46-F044-DFDF-D8A3E24922B3";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG2";
	rename -uid "0B66BC47-4DDF-99C7-2525-54AE17E71BE8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "8EFD96F7-4890-7147-7A7C-3EA035D11A5C";
createNode standardSurface -n "WeatherSurface3";
	rename -uid "E8955625-455F-9205-6968-6CAEA05E4501";
	setAttr ".bc" -type "float3" 0.90249997 0.93099999 0.94999999 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.90249997 0.93099999 0.94999999 ;
createNode shadingEngine -n "WeatherSurfaceSG3";
	rename -uid "A8DDF1AC-4666-9E19-532B-7E85F028916A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "0C746A76-449B-3383-D50D-41A65370DC63";
createNode standardSurface -n "WeatherSurface4";
	rename -uid "AF73A610-4E4F-89A2-05E3-EB83AA87FAA5";
	setAttr ".bc" -type "float3" 0.93432498 0.96382999 0.9835 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.93432498 0.96382999 0.9835 ;
createNode shadingEngine -n "WeatherSurfaceSG4";
	rename -uid "EA09D03D-4FBE-C4C3-E2FD-9FA81A0B14A4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "D9752487-42B2-361F-23FF-B2870FF1BB69";
createNode standardSurface -n "WeatherSurface5";
	rename -uid "D47F971D-4ED0-A73F-7E48-84B14A5E8DE5";
	setAttr ".bc" -type "float3" 0.965675 0.99617004 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.965675 0.99617004 1 ;
createNode shadingEngine -n "WeatherSurfaceSG5";
	rename -uid "181C8E7C-429B-EA14-0AC2-80B6B3B6AC14";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "E443394E-47F5-C637-9199-02AA9ECBB4E8";
createNode standardSurface -n "WeatherSurface6";
	rename -uid "53191DB2-41D6-B322-17D7-BAB364DF4A7B";
	setAttr ".bc" -type "float3" 0.9975 1 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.9975 1 1 ;
createNode shadingEngine -n "WeatherSurfaceSG6";
	rename -uid "97545741-466F-EBEA-37CD-728355CEADE3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
	rename -uid "0EF80307-456C-15DD-8983-9A8A3BF189FA";
createNode groupId -n "groupId18";
	rename -uid "0AD02A58-4A5C-25C2-C3D5-2DBE0C82B63E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "B008F93D-46E0-995F-AD0B-0A82E22D93A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "5C634541-4D72-3286-C021-0C824FC29244";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "0977DC72-4B21-610B-6F0F-BA8B241B3E35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "A77F947C-42B5-4C09-5214-3BBE1D93AD4F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "789B0850-4501-DDB9-18FC-A78321D70ABE";
	setAttr ".ihi" 0;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "615F5084-4A70-6263-E70D-F780D7ECAB7E";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.6.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "B2EDC5E1-4A31-5F9F-C0E8-84A196CB349C";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "D16CC22E-487A-78FF-0C92-2CB0DDE24A32";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "91D27C33-4A4B-C8EC-2B85-C685495CC5FA";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "8979DF28-4B39-05FB-6DED-CA84A205B2D0";
createNode aiPhysicalSky -n "aiPhysicalSky1";
	rename -uid "65EA48E5-4734-2A0E-718A-46992DE390FF";
	setAttr ".sky_tint" -type "float3" 0.449 0.95760971 1 ;
	setAttr ".intensity" 2.692857027053833;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2C271677-423D-BBA9-8DC8-BDAAF5960839";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 555\n            -height 330\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n"
		+ "            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 555\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 555\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp2\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1117\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n"
		+ "            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showRowButtons 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            cameraSequencer -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -showThumbnail 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -showNamespace 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n"
		+ "                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"motionMakerEditorPanel\" (localizedPanelLabel(\"MotionMaker Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"MotionMaker Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|persp2\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1117\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mayaUsdProxyShapeBaseDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|persp2\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1117\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mayaUsdProxyShapeBaseDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 0.05 -size 0.12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6DB0551F-41B7-3118-5BB3-CF8B9A54790D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 200 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "Weather_MAT1";
	rename -uid "ED67C6A3-4C45-D884-A359-E6985D55BF60";
createNode shadingEngine -n "Weather_SG1";
	rename -uid "27B7CD64-4A32-BD14-B211-D2853625706C";
	addAttr -s false -ci true -sn "weatherTexture" -ln "weatherTexture" -at "message";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
	rename -uid "A6109603-46E8-2C2D-4FE1-71A749C04643";
createNode file -n "Weather_PNG1";
	rename -uid "6A91AD09-440D-C9A2-5808-929D0FF53789";
	setAttr ".ftn" -type "string" "C:/Users/free/Downloads/Atmosphere/Snow.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "FD2E3A57-43B3-8B1A-1A32-978D93680BB8";
createNode standardSurface -n "WeatherSurface7";
	rename -uid "C9DFBA8B-4910-7A35-3BD4-888B1901AE4C";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG7";
	rename -uid "34750114-4CB0-143D-4C17-2DAB14CC1075";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
	rename -uid "957790C9-4E7B-89D5-DCD3-C4BE88DE91C0";
createNode groupId -n "groupId28";
	rename -uid "79CCE36D-419D-347C-9C05-FC86928A3A3A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "21F0858F-4D8B-DE9D-460F-22991FE1E7EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	rename -uid "75E2F97B-41B2-4AB5-2855-87BD12F2F110";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	rename -uid "B5DD984B-4C94-08DE-675B-C8BCD48E579D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	rename -uid "75BAACA8-4B2D-2ECB-7DD5-2F999B94DD3F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	rename -uid "790DEA54-427B-BD4F-C4B1-3CA904F2C323";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	rename -uid "54E5DD13-425A-28A8-7BB5-E18EF6571AB2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	rename -uid "0D81A1E0-434C-FC70-EE94-21848B2D0BB8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	rename -uid "6BE2AA21-4103-150B-E18E-A7BB12270BD6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId82";
	rename -uid "6D03124A-4056-BF2C-9ABB-D78D3340D6C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId88";
	rename -uid "CCF31AFC-41B4-4558-61C1-749D836C76A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId94";
	rename -uid "7CD04FB3-42AC-6A55-D837-0DAEA156CB6C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId100";
	rename -uid "ACC20285-42BA-3F38-F7F9-13BF80EEDB1A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	rename -uid "35FD1692-44C6-56B3-CBAD-25869D66DD68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId112";
	rename -uid "D4346E02-44ED-7496-CD9E-61A882A8A613";
	setAttr ".ihi" 0;
createNode groupId -n "groupId118";
	rename -uid "F0AF2AD0-4EB0-DADF-3A60-FDA4AF472609";
	setAttr ".ihi" 0;
createNode groupId -n "groupId124";
	rename -uid "6FE589DB-465F-AFA3-3234-4DB0918FF9B0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId130";
	rename -uid "0057458F-42E3-7117-68DC-C98D7F58EF76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId136";
	rename -uid "342A2549-4131-AA69-E10F-B2B0453C7432";
	setAttr ".ihi" 0;
createNode groupId -n "groupId142";
	rename -uid "C6CA89A6-44BA-AA8D-7A42-E6AF3AD3642D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId148";
	rename -uid "5E28D184-453A-9CB1-45F7-3884D5F1AC72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId154";
	rename -uid "D746C2EF-46AB-1A21-25ED-C9B8062D439B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId160";
	rename -uid "8FCC1960-4E19-FDD6-0DC2-D69C74F39C10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId166";
	rename -uid "1CFFDA31-494E-F582-9C8E-52BCCB89B334";
	setAttr ".ihi" 0;
createNode groupId -n "groupId172";
	rename -uid "F1A4D598-4C8A-115B-6583-4283A0DB2258";
	setAttr ".ihi" 0;
createNode groupId -n "groupId178";
	rename -uid "E060909C-4A94-AE22-8A7C-53B65A12BBEB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId184";
	rename -uid "046A8DCE-42CC-31FB-B2AF-D38AB109DA3F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId190";
	rename -uid "5301C71A-417E-8333-2496-D29C501BB33D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId196";
	rename -uid "E46218B1-4308-EE33-4DA0-83B4CDD27F2A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId202";
	rename -uid "E2F6BD9C-41DE-9B88-ED48-29A6D09BE2B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId208";
	rename -uid "E0EA0B14-45BD-55B8-FAE8-3B899E92ACC2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId214";
	rename -uid "980AD9C4-4305-3288-6E9D-AEBD2010BADD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId220";
	rename -uid "72280B12-4E6A-C46F-4EA7-CA86950FAC11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId226";
	rename -uid "485B2AE9-41BB-451E-742F-19817163FA2C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId232";
	rename -uid "00B9CF00-4DFE-214B-F4A7-FDAE37BFB9FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId238";
	rename -uid "C45D6E0E-4957-3AF3-A818-F7B5AAD3A397";
	setAttr ".ihi" 0;
createNode groupId -n "groupId244";
	rename -uid "38ACFABD-4AA3-8750-B217-4E9264A61272";
	setAttr ".ihi" 0;
createNode groupId -n "groupId250";
	rename -uid "BA4A7F93-48B8-4867-4959-179520AD00AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId256";
	rename -uid "EEE59ED7-49D4-56BD-6D75-56A276DD865D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId262";
	rename -uid "81BCB4E2-481B-D5B4-DE3B-D99961EFA9E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId268";
	rename -uid "9178458B-403A-C77F-17AB-A5A92B37E20B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId274";
	rename -uid "54DBD598-4F30-D3F3-22BC-7EAB45FFB2DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId280";
	rename -uid "5435BCB9-4E90-5FB8-11F5-F7A3F1F666C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId286";
	rename -uid "7C3A14D0-49C5-6F03-74ED-C0B89312BD4D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId292";
	rename -uid "03550AB3-4FCB-ABB4-D429-EA9EB7141A6E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId298";
	rename -uid "4EFBCF1B-400D-D833-6D47-FC89A89BFA3C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId304";
	rename -uid "4680AD5B-4113-3A15-2C19-3395922CA24F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId310";
	rename -uid "23A05DD2-4AA3-C856-C59E-9B9765CF4A6D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId316";
	rename -uid "9CAC4A90-4EFE-8518-1D25-EAB53341EC1E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId322";
	rename -uid "60F4AC64-464C-718A-AA74-A08811EB3FF1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId328";
	rename -uid "E1941C5C-4239-0C6D-4257-99884F5DFCEA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId334";
	rename -uid "8BF0ECEF-44D1-5E93-8A9C-29A3C201AEB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId340";
	rename -uid "31E179AD-4BB2-318C-D3FB-0E96B7DAB347";
	setAttr ".ihi" 0;
createNode groupId -n "groupId346";
	rename -uid "9EE2AEE3-439A-1D74-3E92-348C994DDA15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId352";
	rename -uid "84B6302C-4CDD-27B4-D096-84A829B46855";
	setAttr ".ihi" 0;
createNode groupId -n "groupId358";
	rename -uid "92B2705C-4357-5FDD-663F-0B95DB59814D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId364";
	rename -uid "610547DE-4169-75B6-C71E-DFA904C51F3B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId370";
	rename -uid "E6E34844-49C7-7D37-BD5D-FCA9F3DB04B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId376";
	rename -uid "BC7D0AD6-40FF-D1EC-DAAF-4DA1080B98B3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId382";
	rename -uid "55A17101-4214-F1B6-0EE1-2FA5CBD4522E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId388";
	rename -uid "49072AE2-417B-6583-4FA5-FDA4D498EB5F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId394";
	rename -uid "9E4F7448-44D2-A2B7-7228-4E8934C86950";
	setAttr ".ihi" 0;
createNode groupId -n "groupId400";
	rename -uid "6290F684-4B99-4BD0-71C1-F19BD48FF949";
	setAttr ".ihi" 0;
createNode groupId -n "groupId406";
	rename -uid "2EF303B0-415D-D992-BB19-6F89D031F893";
	setAttr ".ihi" 0;
createNode groupId -n "groupId412";
	rename -uid "F9D4A46D-4F21-FA38-71F5-85A10762630B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId418";
	rename -uid "587C2264-4F30-A57C-5F07-F48C4D64FC82";
	setAttr ".ihi" 0;
createNode groupId -n "groupId424";
	rename -uid "3012B75E-466B-7864-B867-8C8DBA9EA0C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId430";
	rename -uid "393257E6-405D-CF42-B350-77BBB1EBF3AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId436";
	rename -uid "D7932FA7-4DF1-7974-DB4C-2681103D1A4C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId442";
	rename -uid "D5E0DACB-4133-72FF-C049-3CAFE039CF7A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId448";
	rename -uid "FDB7F7CD-460C-DB4E-ACAF-12A7102348E4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId454";
	rename -uid "E8806F42-4B23-519A-394F-DA8BED3766CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId460";
	rename -uid "016A1091-4BDB-0E53-4ED6-DBA88DA11207";
	setAttr ".ihi" 0;
createNode groupId -n "groupId466";
	rename -uid "7F070A46-466E-C2B3-C7A5-25AF1086BFAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId472";
	rename -uid "E805E12E-4F5C-1B7F-E683-19BE48356993";
	setAttr ".ihi" 0;
createNode groupId -n "groupId478";
	rename -uid "DF78C823-430E-F3F4-2C56-C39D9CD99964";
	setAttr ".ihi" 0;
createNode groupId -n "groupId484";
	rename -uid "F4821ADB-443D-3DAE-423F-E583C1CE2200";
	setAttr ".ihi" 0;
createNode groupId -n "groupId490";
	rename -uid "C9BC20C9-4503-EA9E-053D-0F9883BB3CBA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId496";
	rename -uid "B6EE9F8A-43E0-A7E9-20C9-C8916DBEC759";
	setAttr ".ihi" 0;
createNode groupId -n "groupId502";
	rename -uid "85926477-440B-BE93-B2C4-B0A6104B62FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId508";
	rename -uid "63B7F856-4F94-2F2E-0D45-2287056C6E82";
	setAttr ".ihi" 0;
createNode groupId -n "groupId514";
	rename -uid "04F0C936-4C6E-257F-E9E4-318CDD344695";
	setAttr ".ihi" 0;
createNode groupId -n "groupId520";
	rename -uid "27BA87AE-402F-9F2C-BF79-F08403B56ECA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId526";
	rename -uid "3080B6FB-4B75-CE0A-92E7-E4804B6F7766";
	setAttr ".ihi" 0;
createNode groupId -n "groupId532";
	rename -uid "24E98BDF-44A5-0310-482B-AC90DCE47820";
	setAttr ".ihi" 0;
createNode groupId -n "groupId538";
	rename -uid "DEBBAE52-45CE-290E-FD14-9E8A66C4201D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId544";
	rename -uid "FEB62AA0-4F6B-E6C0-401D-76982A9C28F0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId550";
	rename -uid "869DC133-4B4A-0558-84DC-A18D697E1477";
	setAttr ".ihi" 0;
createNode groupId -n "groupId556";
	rename -uid "7AD75B53-4D40-93F9-E176-88900129A5F5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId562";
	rename -uid "4CFEC940-43B0-752D-3A6A-4C8F75CA2F43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId568";
	rename -uid "80BAC79B-4F90-79B4-34BD-988AFC5AA9BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId574";
	rename -uid "40648130-40C6-B6AE-CB62-A8A76035A205";
	setAttr ".ihi" 0;
createNode groupId -n "groupId580";
	rename -uid "12A27977-4AC5-D911-8F18-DF96F372DF76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId586";
	rename -uid "9BE81F1E-48FC-06B5-CCAB-2BB44D2AD33B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId592";
	rename -uid "7A482041-4B6B-48AD-DE53-0A8BD1A1DED9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId598";
	rename -uid "768BE0D8-41AB-A969-9547-4ABBB830A35F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId604";
	rename -uid "1896D0D6-4F4C-6563-EED9-70BED6F16B5F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId610";
	rename -uid "034EC5E2-40C6-F2D7-35CF-46AD252B4BE0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId616";
	rename -uid "1600391B-4209-EA82-ABB5-55ABEE0B0B6C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId622";
	rename -uid "C411FD7A-481C-E574-30FE-6885E1AB73AE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId628";
	rename -uid "9407362D-47D9-1EB5-2A43-1DA67C2126D3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId634";
	rename -uid "75B17BC0-4B02-EE17-40A6-F18F1A6528FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId640";
	rename -uid "60BB55E9-4D7D-7D39-01A2-D9AA3B0D2E48";
	setAttr ".ihi" 0;
createNode groupId -n "groupId646";
	rename -uid "7E6089D2-431D-84D6-0E4E-F883EF5837DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId652";
	rename -uid "473CAD02-46AE-4ECC-D308-41833757F83C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId658";
	rename -uid "4B850338-4583-8FC2-4701-ACAFA60B6F9A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId664";
	rename -uid "8D21F166-4DA9-A82C-01B3-6981A7BFC0C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId670";
	rename -uid "9098C1F8-4A8B-8DD9-0622-75B82F01345C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId676";
	rename -uid "F4A6ABBE-465C-3768-A851-9CB7F7BFF857";
	setAttr ".ihi" 0;
createNode groupId -n "groupId682";
	rename -uid "A90619D7-4A5B-51DA-BF61-F186E8452D54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId688";
	rename -uid "138F0A5A-4C8E-F06C-679D-78BCD541B3D2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId694";
	rename -uid "717AD8EF-4A85-57DA-8AFA-778CAB3BA7C1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId700";
	rename -uid "C1F92577-41DF-23B6-218C-40836E794420";
	setAttr ".ihi" 0;
createNode groupId -n "groupId706";
	rename -uid "F0FF3364-4163-9563-1A54-AB9F3EEC18C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId712";
	rename -uid "3FAD6E14-409E-EC43-0C71-2FA35B747D17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId718";
	rename -uid "92AC8D62-4268-EA22-FACA-B2A975EE0E2B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId724";
	rename -uid "75862E6C-4AE0-E6DA-E137-D3BE74F0C7A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId730";
	rename -uid "1815BB10-4897-8FD3-4690-05A801DF6C03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId736";
	rename -uid "2EAA10F1-4D58-F9B9-A28E-1A96172CAC0F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId742";
	rename -uid "38227A75-4B50-F2B1-E2FE-549C55C795F9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId748";
	rename -uid "EC0429D1-4FB8-E903-705B-F4A81E1E2DC0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId754";
	rename -uid "989CCED5-4E9F-E698-BFB6-CB81D2EE1346";
	setAttr ".ihi" 0;
createNode groupId -n "groupId760";
	rename -uid "E0663CD1-45DD-0386-E5AE-14AF17D16ECC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId766";
	rename -uid "CF1E37A3-48E0-BDFF-E6D0-6DA76C5BDFD9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId772";
	rename -uid "CC2AA1B4-4964-AB01-D796-398B1A4E6D82";
	setAttr ".ihi" 0;
createNode groupId -n "groupId778";
	rename -uid "4B170043-4A61-50B6-454E-D298BBB3E391";
	setAttr ".ihi" 0;
createNode groupId -n "groupId784";
	rename -uid "B950F28C-42E3-E41E-1F64-3BB41AB68CCE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId790";
	rename -uid "159ACD7B-4B4F-D262-6DBF-E0AEC78E4BFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId796";
	rename -uid "121B2382-4D49-2C3F-39DA-54858B2C8A65";
	setAttr ".ihi" 0;
createNode groupId -n "groupId802";
	rename -uid "754C7626-4288-0ACF-D59A-04B0752D7870";
	setAttr ".ihi" 0;
createNode groupId -n "groupId808";
	rename -uid "98793E86-4779-3F41-DA00-B39F727D10DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId814";
	rename -uid "9C11587A-43C4-B173-E1E6-F2B7428575C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId820";
	rename -uid "ACECB285-48CC-5708-F952-8183288E4F5B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId826";
	rename -uid "54DE4113-484B-8878-AC3D-B688122EAD23";
	setAttr ".ihi" 0;
createNode groupId -n "groupId832";
	rename -uid "56FB823A-4D53-AE76-ACAE-AC9A6050E2F4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId838";
	rename -uid "15CE6E63-43DE-49D8-7DD6-2F9153232386";
	setAttr ".ihi" 0;
createNode groupId -n "groupId844";
	rename -uid "FBE3EABE-4AC8-0B04-D47A-50863C42FDB9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId850";
	rename -uid "67200A18-4309-141B-68CB-A8BFDBF88795";
	setAttr ".ihi" 0;
createNode groupId -n "groupId856";
	rename -uid "7DEEC31D-4CB3-3318-24A2-66B5761C98DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId862";
	rename -uid "0D3A4A7A-4112-F232-C39C-69B3EA787942";
	setAttr ".ihi" 0;
createNode groupId -n "groupId868";
	rename -uid "758214D3-49E2-CB11-07EB-1BAFC805A1B9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId874";
	rename -uid "D111C2D5-4DC2-B397-7E64-28838FCD2798";
	setAttr ".ihi" 0;
createNode groupId -n "groupId880";
	rename -uid "3B88FE8C-456E-47D1-04E9-1D9EF3EEEA92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId886";
	rename -uid "FE8E9D9F-42C3-1386-2E6A-90B6582370E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId892";
	rename -uid "E16F545F-4927-794C-9B37-8A99ED1D5783";
	setAttr ".ihi" 0;
createNode groupId -n "groupId898";
	rename -uid "4A79EDD5-434C-BA1E-9652-559D7F80A88A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId904";
	rename -uid "6B7645C8-4E7E-03AD-CD2B-87B251E95D40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId910";
	rename -uid "E49B4423-469E-63EA-89C4-E69C3D63CA43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId916";
	rename -uid "23B09745-492F-A6EE-03F7-0F9FCDFA93C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId922";
	rename -uid "DAE88373-4C5B-0B18-2232-D09DBB0B35FB";
	setAttr ".ihi" 0;
createNode lambert -n "Weather_MAT2";
	rename -uid "094BCF49-487E-7397-F63A-BF912F7D13C0";
createNode shadingEngine -n "Weather_SG2";
	rename -uid "254242B3-424F-9CFF-4DCD-1F97CEC24DBD";
	addAttr -s false -ci true -sn "weatherTexture" -ln "weatherTexture" -at "message";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
	rename -uid "57E8F872-4A7B-6734-F73B-8BA0DA9DF0B2";
createNode file -n "Weather_PNG2";
	rename -uid "EEA48B61-4B76-18F7-73D9-64A9A726F1BD";
	setAttr ".ftn" -type "string" "C:/Users/free/Downloads/Atmosphere/Snow.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "4ADEC342-4251-E8D2-4FA5-8B966CBD9DD7";
createNode standardSurface -n "WeatherSurface8";
	rename -uid "A51B01D4-48A0-64E7-954A-A0B191DC4E2B";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG8";
	rename -uid "2CDD56AA-44A6-8601-03B0-D78B6B0C48B5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo19";
	rename -uid "74E0DA5F-4213-F483-0BA7-F88268C5D0ED";
createNode groupId -n "groupId928";
	rename -uid "B4F61222-4129-15AA-7463-CC85148950D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId934";
	rename -uid "0CFCB9E7-4357-7CB5-4A2D-9B8EB6E27360";
	setAttr ".ihi" 0;
createNode groupId -n "groupId940";
	rename -uid "D97A2E15-4780-7557-78A0-77ADD16CB7FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId946";
	rename -uid "B473C6D6-4EE9-0BAC-2A60-F38A3048A2BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId952";
	rename -uid "029F1E19-4603-5C6E-0258-84B1C36CFA58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId958";
	rename -uid "3967E946-493B-2F3D-4513-378B33A5B448";
	setAttr ".ihi" 0;
createNode groupId -n "groupId964";
	rename -uid "87163C2D-4797-6739-32C0-69B5C59D9BDD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId970";
	rename -uid "D4E8441E-4F51-8DAC-A1AA-65A1906AEE84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId976";
	rename -uid "AEA13456-432A-1A80-EB51-3FBC0D6E4846";
	setAttr ".ihi" 0;
createNode groupId -n "groupId982";
	rename -uid "01E468D2-4950-A38E-A6B1-EAB8CBCFE13A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId988";
	rename -uid "C379135E-4E38-595B-EC2C-8BAAF2485884";
	setAttr ".ihi" 0;
createNode groupId -n "groupId994";
	rename -uid "1DF984E9-4F98-9065-B964-E8A33608EC08";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1000";
	rename -uid "3CFB3B25-4AD7-0BE7-E7BB-EB8D50694F92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1006";
	rename -uid "14BA388B-415C-64FE-9F8C-C9B50D44413D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1012";
	rename -uid "1A5D4AD8-4DBE-FC84-6F81-B9B54BF59923";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1018";
	rename -uid "DA2C128C-47D0-4107-0673-61A94904039B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1024";
	rename -uid "BAFA8246-4E03-A629-9D89-D6BD253300EC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1030";
	rename -uid "CA24E215-488E-E131-0956-93AC5A4E59B7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1036";
	rename -uid "D5A7157E-4033-7A94-40C3-899FB9AECB96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1042";
	rename -uid "E1C64A1E-4D06-706D-B407-8688D15C9A10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1048";
	rename -uid "021610D8-43FB-5174-2759-FDA1CADC356D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1054";
	rename -uid "602AA632-4D4E-BF83-983A-B7A9E9DC940D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1060";
	rename -uid "3C2A3972-4F94-E321-166A-F69CE7CF8AAF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1066";
	rename -uid "1715F3A1-4140-BD13-8D2A-6AA55FC0FA6D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1072";
	rename -uid "194D7647-48F9-BFCA-1A9A-0AB2237E49E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1078";
	rename -uid "43B80462-4DCD-0526-1A8E-CE8B16173218";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1084";
	rename -uid "22EA4A55-46BC-430D-3053-7BA9861C16FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1090";
	rename -uid "EBB2FA08-4895-D9AB-787A-A283874EB942";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1096";
	rename -uid "26BA1C15-4503-8374-B520-5696C8CBDC05";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1102";
	rename -uid "9A013C9A-464F-18B7-035C-9AA2F4613FBF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1108";
	rename -uid "4FEA8058-4F57-F6BC-7F41-2084F715781F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1114";
	rename -uid "3B2D34C8-42D6-CF6D-9421-2E8226F69B5D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1120";
	rename -uid "8F4C1261-485A-EA70-3906-218DB9616D6C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1126";
	rename -uid "2413D277-4FF9-03EA-1689-A98072CC9494";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1132";
	rename -uid "631C3AD8-4741-CFD6-84A4-0CA6CB2DDDE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1138";
	rename -uid "9CD01571-478C-80E8-B4E2-5691D618F0D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1144";
	rename -uid "FAAE75AF-433B-B111-6AD8-E1A2CAFE7D30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1150";
	rename -uid "12EB742C-4005-623E-0408-FDA6C2DD91B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1156";
	rename -uid "72550A06-44E0-A522-FAC4-43B5ABCB045E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1162";
	rename -uid "9153322E-4F29-B8A0-D684-1999FFB0FEB4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1168";
	rename -uid "AA740DB5-4E1A-5359-51E6-FC8F4BAF1140";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1174";
	rename -uid "8E0CA28D-4734-EFF9-FE6B-C19E32F3E160";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1180";
	rename -uid "CA4E72D7-4B5A-15F4-A7F6-5088A56F8C08";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1186";
	rename -uid "C3626E21-42A6-A2F3-46A7-B5A9CCF25A00";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1192";
	rename -uid "D49ED66A-40FD-CF73-5AF6-9AA8F30409BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1198";
	rename -uid "532486E2-45BC-78AF-FD1A-0BAAF424D20C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1204";
	rename -uid "B8AEFCA6-4A0F-C32C-5C35-B3972A40423F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1210";
	rename -uid "BB01E952-4D27-0D67-A662-60B62BA4F19D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1216";
	rename -uid "A07F57E7-4FAD-B6FD-A62B-BC8F813BF02F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1222";
	rename -uid "AFD9C956-4266-23BF-9860-ADB3849E7982";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1228";
	rename -uid "BF460180-493F-1ADF-7A71-A5852762E0FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1234";
	rename -uid "ED05ADD8-4811-649C-EC70-16919337B4AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1240";
	rename -uid "59D7476E-4A3E-720C-0FCC-81B86CADC9DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1246";
	rename -uid "B68676E8-45B1-678C-4AF1-1492BDF0DB32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1252";
	rename -uid "3CF199E0-49DF-26F1-D81D-B2A6D459C2F9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1258";
	rename -uid "2C757119-47EC-FFF6-538E-EABBE3D02993";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1264";
	rename -uid "EF70B53A-43F0-9FF9-C08B-D39B9668A94F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1270";
	rename -uid "AC13D3F8-474C-419A-47AC-94B997C084C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1276";
	rename -uid "475DFE21-4F6C-6DD8-D941-F9B7764E7E26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1282";
	rename -uid "D4ACD989-48B5-5F9B-E715-4CB979487507";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1288";
	rename -uid "94E93F04-410F-2354-359E-0AB7D35E15FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1294";
	rename -uid "CA0653E3-42C2-3878-13B7-C08F0D00CB5C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1300";
	rename -uid "967FE271-4CB4-77B1-3C2D-E0AD9064DEF2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1306";
	rename -uid "EE331626-41CD-272C-51C5-2DBB6C10CB37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1312";
	rename -uid "9AE943BF-41D6-FE0E-B430-EDA25D9ED72F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1318";
	rename -uid "C04814F3-4C54-00B6-F70D-D78143422F25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1324";
	rename -uid "53FF5C25-4FFB-E1A6-322E-E08D4CD040D8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1330";
	rename -uid "6D7F8AC2-4585-F14B-15F5-7AA26EC37777";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1336";
	rename -uid "8A3DBFAA-485B-CC71-F010-67B6EFC952D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1342";
	rename -uid "21CE03C0-4BCA-4F93-2E59-8E8D57DE5B83";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1348";
	rename -uid "C0B905C6-4731-5AA2-796B-C49FB13D2912";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1354";
	rename -uid "6ECB3615-4F81-ED93-0AC7-ABBBAD1715FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1360";
	rename -uid "122F52F7-483C-605B-8CB8-BBBBBC63166C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1366";
	rename -uid "8A423320-43F2-9DAB-2263-0B9E01D1CC6D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1372";
	rename -uid "61333598-456D-0064-BBD1-B1B90256643F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1378";
	rename -uid "A6BE2AC4-49C3-60AC-46EA-C9B282358BCE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1384";
	rename -uid "F2FFD7AC-47A7-62CE-972D-2D971405FB57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1390";
	rename -uid "83AFDC3C-4372-6B5B-713D-9094F2BEE295";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1396";
	rename -uid "D4F71591-4183-E03A-F094-739B153A832C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1402";
	rename -uid "4D52BA59-49C6-EB7F-1A31-1F8E4C043E71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1408";
	rename -uid "A20B3303-4E23-E308-1B16-66A3395A8CE0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1414";
	rename -uid "B6A026B6-4D57-D510-E0C9-BF90B3221E37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1420";
	rename -uid "AF142E1F-4A3B-83B7-0900-CFA40C8CCDAC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1426";
	rename -uid "5F733B95-46A8-C293-040E-949E18DE310E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1432";
	rename -uid "3BE81C74-4ABA-3B19-3D00-3F8FA603607F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1438";
	rename -uid "8B875F41-4D6C-3A8F-DDA3-BBA20D234432";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1444";
	rename -uid "F94DA428-46B7-EC12-8ECB-0BA8DBA41C28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1450";
	rename -uid "D16311FC-4950-57E7-D6B5-79B65DB59B50";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1456";
	rename -uid "D7B7E3BF-4715-A940-E238-909C922F0516";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1462";
	rename -uid "1AD1CF97-4F18-D8F5-E50C-B891FDA841AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1468";
	rename -uid "B39F9F24-463F-D481-3524-5A8C80DB7FB4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1474";
	rename -uid "D0BB876A-40BB-51D4-6EA2-9EB912C01814";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1480";
	rename -uid "52795913-4B59-89C3-DC74-029FDB656EC1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1486";
	rename -uid "3F431633-472A-B232-39D1-BF896520BB71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1492";
	rename -uid "879C8F4B-41EF-22C8-ACC5-5EB28D00E6A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1498";
	rename -uid "308D14BA-48FC-9033-C67B-16AF998762D2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1504";
	rename -uid "24D0A3CB-49A8-BCB9-6265-E6AC93D79F16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1510";
	rename -uid "2EF2562B-4A70-239E-9DBA-E081B4C3329E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1516";
	rename -uid "24794778-4CA5-DDF2-2BC0-219370454E36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1522";
	rename -uid "20F1FDE6-4536-4341-1FED-11BA12D726E7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1528";
	rename -uid "54908D85-49C1-2BD9-47CF-5AAF4E7072FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1534";
	rename -uid "039A2E3C-4D04-376B-2E77-269B7408E46A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1540";
	rename -uid "4DDDAB64-47CF-F40A-D941-D5B11F3D8E8C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1546";
	rename -uid "2F53E899-424E-3C3E-5CA5-E5BD3261FA65";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1552";
	rename -uid "36A3C8ED-479D-C8D7-09D6-B3853C3F743E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1558";
	rename -uid "3496BEA6-4F6B-6CA2-322C-B584D647D704";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1564";
	rename -uid "A04BB80A-4015-2152-A8AF-CE8BFBE57AC5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1570";
	rename -uid "8E40DDF8-44C1-D38F-B769-F5AC43397222";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1576";
	rename -uid "2FF35E20-45A1-7A1B-1240-FF906203F076";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1582";
	rename -uid "4A96A424-4728-44DC-F684-5E875FA3F742";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1588";
	rename -uid "9B569DEB-4E79-866D-C5E3-DBB23750D15F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1594";
	rename -uid "63F440B0-47F5-D0AD-C9F8-BE95908DAC21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1600";
	rename -uid "738F5077-4F67-706D-733D-068DAEA96626";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1606";
	rename -uid "1AFC626F-4CCF-12B1-7540-16AE9E605E71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1612";
	rename -uid "59C0192B-4AAB-371C-E0F1-91B22E1517F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1618";
	rename -uid "F91CEFED-49BF-75C9-8950-3C8CA524D417";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1624";
	rename -uid "14131E24-44B8-91B9-A040-06A34B52956F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1630";
	rename -uid "6F9FA70D-4D10-6E8E-EF7B-B3BA6C625C11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1636";
	rename -uid "1DDE024C-4D89-2C33-0AC1-C09271D518AC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1642";
	rename -uid "19667356-4D85-70A7-8F3B-959E83C323A7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1648";
	rename -uid "AF5FC075-4F45-3148-337C-249A29A04B96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1654";
	rename -uid "6343FF1C-46CD-D76B-8FC0-7AA41EC9B829";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1660";
	rename -uid "4BAF98AF-4186-CB87-B3C4-66A2B32CEBED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1666";
	rename -uid "19EAA88E-4B69-8265-A83D-7CB850533C79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1672";
	rename -uid "EE5C5E06-429D-87AB-0162-0DAB933EDE9C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1678";
	rename -uid "FD28B3FD-416D-57F5-0007-8CB1AB7C82FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1684";
	rename -uid "73903895-48C1-1BA1-9EE2-44B17F8453F8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1690";
	rename -uid "9053DC0E-4119-BD2B-3C87-E9AA7F0F8956";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1696";
	rename -uid "5454C074-43D0-65E7-DC3C-9992B92B045D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1702";
	rename -uid "F1E01BC5-4FA4-FCA4-157E-4EB40F10DE8D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1708";
	rename -uid "0809C1EF-496B-098B-94BD-F9A9E0468192";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1714";
	rename -uid "2E227309-4879-2168-338A-8EB44CC8A92F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1720";
	rename -uid "4FA4F4C8-436F-7E75-EE87-9C8FDA623C6B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1726";
	rename -uid "7B4E1CD4-418D-22DD-C903-C79F2AAAA70C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1732";
	rename -uid "45CD82F4-4EB1-E5A1-9D14-86A9980E7C4A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1738";
	rename -uid "B5FFFF70-4D1E-FA0B-2838-45A99D0F736D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1744";
	rename -uid "317A96DE-4010-1162-0A67-DCA6F57E89B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1750";
	rename -uid "96A59C7A-4667-83C5-24A8-2EA024D2934A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1756";
	rename -uid "E8A6D3C9-472E-385B-04D6-409F6F25935C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1762";
	rename -uid "1DDB708C-4E79-EEAB-E8FC-219152243197";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1768";
	rename -uid "1A3A5B1B-4CEC-CAB1-F768-F99C046C3351";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1774";
	rename -uid "734A27A2-49A8-4DD4-CAC1-9696A10EB5FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1780";
	rename -uid "1406DB9F-4CD8-1305-8F8D-6B88A61B3B0F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1786";
	rename -uid "185769CB-4390-D4BF-DE84-A8BE859DBF83";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1792";
	rename -uid "E734015B-4E5B-667B-92C9-C98BB2D4B333";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1798";
	rename -uid "217D4369-480E-4770-663F-FA946BFE2BCC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1804";
	rename -uid "35FBD261-4688-658F-5C73-5A88E1F130AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1810";
	rename -uid "B35B35BC-41FC-2920-884E-FAA7A619138A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1816";
	rename -uid "607975A3-41F3-8C6C-0210-EFBD7C8848BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1822";
	rename -uid "F50D6900-49C2-E26F-E11A-7B8E987A0D76";
	setAttr ".ihi" 0;
createNode lambert -n "Weather_MAT3";
	rename -uid "B45C0034-44A3-421B-04E9-1B82196BC53F";
createNode shadingEngine -n "Weather_SG3";
	rename -uid "4C0FEF0F-4331-BC2C-AE58-8198D54EF2B0";
	addAttr -s false -ci true -sn "weatherTexture" -ln "weatherTexture" -at "message";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo20";
	rename -uid "DB19A9EE-4D11-6F7F-E060-28B8EF8B4246";
createNode file -n "Weather_PNG3";
	rename -uid "163F9B95-4803-7A7F-E967-B1800B20DDFB";
	setAttr ".ftn" -type "string" "C:/Users/free/Downloads/Atmosphere/Snow.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "1164D185-43F9-242E-AE45-5B9C1155F49E";
createNode standardSurface -n "WeatherSurface9";
	rename -uid "B87D1DE9-4D44-41C5-41B5-328F036B021A";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG9";
	rename -uid "F7A1E93D-4021-00A9-0F6C-8288525647E3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo21";
	rename -uid "629FB417-4DC6-E300-8327-D1B860191346";
createNode groupId -n "groupId1828";
	rename -uid "36D1CE43-434C-F5C2-43AD-A0A7AEE6D2B5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1834";
	rename -uid "03E46545-45EB-89CD-D774-E1B0FE48484D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1840";
	rename -uid "DA32C7EC-4C2A-7E3C-088D-ADB8A1DF4060";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1846";
	rename -uid "A1DDE471-4521-F47D-3D3D-64BF9EBBFCE7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1852";
	rename -uid "CAEB8337-4FA4-326B-581A-2A9F8BD4F53A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1858";
	rename -uid "D1B020B2-47ED-AA22-A9EC-999348687B9D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1864";
	rename -uid "E2366D38-4C43-E2C1-7F32-B7B4740BCA92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1870";
	rename -uid "B5D036E8-4C62-355A-CEC5-E3B7668D3274";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1876";
	rename -uid "C9609E71-4AC1-4FAB-A766-28A8A6B63563";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1882";
	rename -uid "6A4B7D4F-4081-78F7-4D41-ABB1C7078618";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1888";
	rename -uid "92761A84-4446-0F49-1D50-8EA810718911";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1894";
	rename -uid "B62B7E45-4D30-497B-E8FF-EA892FB38066";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1900";
	rename -uid "5A4B2B75-46AD-A3DC-1DF0-0C84B6A96D55";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1906";
	rename -uid "5183C055-474D-AC31-76D9-669676F5633D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1912";
	rename -uid "99968689-47D4-182E-83BC-A6B3F5658446";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1918";
	rename -uid "F6A42719-4EE0-03DD-D27C-0C8E0806341B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1924";
	rename -uid "749363C5-40E2-A555-6403-2485CA2F9633";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1930";
	rename -uid "8ECFFB19-4EC5-5E11-63EC-8D985977265A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1936";
	rename -uid "4CC02FF8-4F18-9CE6-E653-CAAC851F181D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1942";
	rename -uid "F9355CE4-4C47-4327-BB94-60899D05EAE1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1948";
	rename -uid "96A161C2-4564-7EED-8C6E-8D912CC56246";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1954";
	rename -uid "FDC82D8B-473F-2406-C784-7A93DC89990A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1960";
	rename -uid "D70BE55C-422A-1C9A-AC36-6396094FD17F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1966";
	rename -uid "69FE6766-442D-F5AD-B381-918148FA2763";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1972";
	rename -uid "2033C04E-4062-2F7B-D4DA-24B11ED6D29A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1978";
	rename -uid "B6EE6CDD-4740-DB64-417A-2B974D85FD51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1984";
	rename -uid "374F7942-473F-418B-05C3-D28139D1B157";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1990";
	rename -uid "7C5397DA-434C-0618-22C0-BC8F87BFDE15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1996";
	rename -uid "4B4DF647-4B31-629D-FAE0-38B64DA0221F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2002";
	rename -uid "98F24E7D-4B2D-F148-3C34-1D80035D3126";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2008";
	rename -uid "5996D932-4EAC-5F18-FD2C-5EA1109E34C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2014";
	rename -uid "25340EA8-483B-B47D-254E-778E4630D24F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2020";
	rename -uid "AF2E7EFB-4E21-D99D-6A32-89AA244469C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2026";
	rename -uid "2745519B-4E32-0982-9379-34AF7A99D972";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2032";
	rename -uid "14C5426A-480B-3B05-A725-A592387B7506";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2038";
	rename -uid "68C7FC77-440B-7561-1BEF-B9B06E1F9135";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2044";
	rename -uid "B3B22852-481F-588C-57FC-99B1A5F2F2B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2050";
	rename -uid "0A55089D-4A1F-03BB-CE82-5C8235DD496C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2056";
	rename -uid "726E8CC0-4A8D-BD6A-C453-3E959CB70E79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2062";
	rename -uid "ECA63E68-4B5D-B070-4EAE-8BA9C864DC8A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2068";
	rename -uid "83EB8C82-4EE1-B360-9842-45922240C4DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2074";
	rename -uid "765B5236-4958-B31B-8470-EDB1D6ABDEF0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2080";
	rename -uid "0AFFF656-47F6-3F8C-04EC-418FFF18DC59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2086";
	rename -uid "18AA25C3-466B-39C3-F3AC-FAA1B03227C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2092";
	rename -uid "A38A84AC-4EA8-85D4-C282-3FA5AC0DC515";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2098";
	rename -uid "A70D0F04-425C-A2F0-0702-61B8D04F2CC2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2104";
	rename -uid "9E7E999B-48E8-90D2-14E3-5BB9192E94EB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2110";
	rename -uid "16CCF96C-4579-13AE-962C-A6A40895ACCD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2116";
	rename -uid "89E41379-4697-94D2-EAF5-E7AB80FE6AEA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2122";
	rename -uid "A66A02D4-47F0-53D4-A128-4A8736654D4F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2128";
	rename -uid "4A69A229-4832-D58E-24E6-29B75FB961C1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2134";
	rename -uid "B53079CC-4CE5-478F-8D17-338F5FF82F76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2140";
	rename -uid "66208284-4FB8-03EF-A244-7DA656685754";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2146";
	rename -uid "1B2B7A5C-4C9C-4526-322A-3E863AA68625";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2152";
	rename -uid "8E3946F1-4AC1-B0F4-034A-A09C130D622B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2158";
	rename -uid "30C4F638-4A4B-4EDB-2774-40836F92C6FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2164";
	rename -uid "DD3CF598-4965-0D65-671F-14A63FD38E3D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2170";
	rename -uid "669D7F67-470D-F431-8814-70812778F929";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2176";
	rename -uid "A9D8A5C8-426D-C45A-AA28-46AF1DEA8E63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2182";
	rename -uid "FE4D5433-415B-FC7F-1CB6-3D896491C868";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2188";
	rename -uid "E53C4E34-4004-5AFE-2433-A3A062F9E231";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2194";
	rename -uid "5D3B0923-4F80-C1EA-2C92-DBA4360B4C60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2200";
	rename -uid "9B8E483C-4B78-6607-53A8-BAA8FB2CAF31";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2206";
	rename -uid "9B5C9CFA-4BC1-2171-B679-D4BEB73245C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2212";
	rename -uid "DD91BD8F-472F-D74F-AA15-DDB1CBA6B9C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2218";
	rename -uid "27F4CB7B-477A-6DB3-4401-008D0091289F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2224";
	rename -uid "3874AF7C-40F5-B8C9-EF9D-B59021F500D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2230";
	rename -uid "C3AB3702-41C2-D8F8-FEA9-19AE50DADE15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2236";
	rename -uid "4613F239-4B76-26EA-188F-CDAA37686487";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2242";
	rename -uid "E1A02BB9-405D-6558-B478-71AC0A44F306";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2248";
	rename -uid "0945402F-4BA2-A632-E975-AE913A0EC841";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2254";
	rename -uid "B8874C78-4348-3A40-4A89-9FA1E127E09F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2260";
	rename -uid "E688C4A4-475B-710B-0E29-9D94040AFCE3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2266";
	rename -uid "40F0D581-49CC-23F8-3535-CDA1DC4D6435";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2272";
	rename -uid "B89D35D4-4726-8466-59E9-68B795EEC294";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2278";
	rename -uid "84C74340-4890-5C2E-2F7E-2A8788E8FF5B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2284";
	rename -uid "F0B2B176-4D12-2F78-07D2-EA898A830539";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2290";
	rename -uid "EDAB1BD3-4EE8-FCBF-CB5B-3B99C74AC767";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2296";
	rename -uid "84B6EB81-45AF-FC1C-2895-E19D9E437C03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2302";
	rename -uid "0AE4DA47-4BEF-53CC-06B7-649A6E7A18A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2308";
	rename -uid "47CF0A5D-43AF-DC6E-F59E-E68B9ECC14DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2314";
	rename -uid "D7D06838-4CCA-520F-A4E6-08900845E23F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2320";
	rename -uid "4DCA26D9-4E76-5341-0759-0FA70834811E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2326";
	rename -uid "0BC7213B-45F9-F03B-78F6-1D8E9AA3FCAD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2332";
	rename -uid "5E675CEB-4247-EC41-64A6-3C9145855866";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2338";
	rename -uid "9A0884CB-45E0-7C87-6D1D-A08A9DD52226";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2344";
	rename -uid "89C71564-4651-9BCC-85FB-18A7514277F7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2350";
	rename -uid "B4F5A66C-4931-1EC1-95DB-E39DC432A6DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2356";
	rename -uid "3559EDD4-4198-7F80-550B-4E9174004B13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2362";
	rename -uid "66F9D426-46EA-CBE5-7649-65800D44D8C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2368";
	rename -uid "6DF0F699-4B02-D737-4E5C-DFB0F88BE9B3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2374";
	rename -uid "C9EBADAD-4FC7-6003-10AA-0EB38D69A6EC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2380";
	rename -uid "46A94B22-4D4A-8C2E-983C-9DB31D986FDF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2386";
	rename -uid "367D8821-4028-6014-BE57-11B9FA4A8776";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2392";
	rename -uid "CC397173-4B3C-CAA7-DBE3-65B79886F009";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2398";
	rename -uid "16DBD860-4FE8-4F8C-6E00-2198553F45A5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2404";
	rename -uid "E1F94E9A-4611-4129-7692-D19B08F4456F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2410";
	rename -uid "7CF951CE-4C79-6872-E719-65A375CA1309";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2416";
	rename -uid "9DDBBE50-4C62-2E31-1810-5E9037D46CC0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2422";
	rename -uid "D8B41C1E-46A4-E50A-A8E6-E38F9EB8098E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2428";
	rename -uid "BB19933B-421F-D5BA-88ED-8082EADF8FBE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2434";
	rename -uid "94105271-4391-BDE7-E027-6FB655EB10E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2440";
	rename -uid "C520ACD2-4865-7A45-E489-148A2772D71F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2446";
	rename -uid "7700F38A-4233-A8E5-17DF-B7ACF83A4978";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2452";
	rename -uid "9D23F978-4AD6-45E2-AA97-A39CE7B40D2C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2458";
	rename -uid "55BD0FC2-4472-B7FB-8345-81ADE740F298";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2464";
	rename -uid "9F506F6B-4905-A80F-4824-0C84AB075E95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2470";
	rename -uid "3ED09A2E-4A43-4AA9-9C26-3981CE8447A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2476";
	rename -uid "BEF1963F-47D9-3D37-0B6C-30BC12EA4D58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2482";
	rename -uid "C8E4DAD9-4CFF-BE67-F0B6-708E6B320A2F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2488";
	rename -uid "E77F7DE3-4CEE-6C32-E0B9-06934D0C3ACD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2494";
	rename -uid "2FD055B4-4D0A-0E4E-8C25-699E25F5946E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2500";
	rename -uid "E73D8CAD-475A-E957-B854-27BBF8E1A636";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2506";
	rename -uid "16247CA2-40BF-B952-48EA-BE8494A1F037";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2512";
	rename -uid "DA10950A-410D-AD18-F5B8-59BD2E52B6C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2518";
	rename -uid "1E744AC3-4CB5-F8A9-E997-43B051E33C97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2524";
	rename -uid "1259E6AA-41AF-230F-C48C-54B63F261931";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2530";
	rename -uid "F113D822-4F8E-1493-B4A1-64B24B83E9B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2536";
	rename -uid "330D4EB4-4EB2-1A71-497E-A690394A46B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2542";
	rename -uid "39FD8849-4DB9-BCFC-D232-B49945F7CA7D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2548";
	rename -uid "84203E28-4BE9-923C-76FC-B482001E2164";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2554";
	rename -uid "8512ECCD-4867-5101-CFA0-37B9E6443560";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2560";
	rename -uid "AE6BA13E-43AF-65BD-047D-EC9642A53978";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2566";
	rename -uid "9B4BAE42-41C7-8120-AE10-4AA104A60D6D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2572";
	rename -uid "BF726C9F-4753-55AC-042C-33A57515AA9D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2578";
	rename -uid "7C3F2200-4D53-9394-1200-11A3419FAB1C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2584";
	rename -uid "B4B54BAD-4EDA-720C-21B8-E8B063FBE502";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2590";
	rename -uid "6E2CD8FE-4158-63FE-F2AB-7BA9131EDC1B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2596";
	rename -uid "E20E94EC-4B52-A1DC-399F-E6863F01A68D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2602";
	rename -uid "62E758C9-4740-FE40-C224-07BDD6B90A47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2608";
	rename -uid "79A90296-4E41-6000-A741-E1A771DE08BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2614";
	rename -uid "C0A04D40-41B0-F15A-0BCF-B5ACA3975311";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2620";
	rename -uid "FFB8C035-423E-CCC2-8CAC-A8B788FED980";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2626";
	rename -uid "49BCDC60-401B-D26B-5301-B694C267623F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2632";
	rename -uid "2A6C2BF1-4CEC-BAD2-BFEC-17A162723A68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2638";
	rename -uid "1519E3EB-4D64-0E72-4430-B7B7ED7A50CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2644";
	rename -uid "A243D666-4653-CF1B-1B34-FDACD48F50D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2650";
	rename -uid "C76ADE14-4525-19D0-559C-B8B5D44CD42B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2656";
	rename -uid "6C27F6EF-441F-E718-5DE5-50BEBC323895";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2662";
	rename -uid "B850898D-4D98-0B04-7C1D-81AB19AC7F57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2668";
	rename -uid "7658A58A-47F6-C564-CDF5-F7A3B8669484";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2674";
	rename -uid "FCF13974-43CA-4E83-B066-3081F0C05D22";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2680";
	rename -uid "71412740-46DD-F976-0537-20A2EFDEB43E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2686";
	rename -uid "2D025207-44E4-0E71-44F1-6380FDF198BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2692";
	rename -uid "575B5E4B-4C62-AE9E-E4CC-50A0B1F27997";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2698";
	rename -uid "4731F3FF-4EB2-F5BC-A621-50874A8E8C55";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2704";
	rename -uid "633E2918-441F-9236-BFC8-78A9A8225CDC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2710";
	rename -uid "A97BB3D7-405C-7217-C671-4C8A37F353C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2716";
	rename -uid "F71772ED-43E5-2661-CC75-05B08A80EE47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2722";
	rename -uid "318944EB-4653-E7F2-5F85-7591E41C69D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2728";
	rename -uid "A786E2A9-4B43-A586-CE6D-FBAD7A0BF6DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2734";
	rename -uid "23758834-4E8F-40F7-89EE-9D811258CED9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2740";
	rename -uid "29F6F71A-44D4-3227-714C-9783EC5A4CEB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2746";
	rename -uid "EC8E0F1F-4460-7F97-1E6A-8FA84134D28C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2752";
	rename -uid "9233544E-4C49-4416-FEE5-77991DC4FD1B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2758";
	rename -uid "F0416F81-4AAF-AAD7-8293-7A8E472B7874";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2764";
	rename -uid "98F629A2-42C6-58B3-F9B0-83A918CC2332";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2770";
	rename -uid "4874631B-488B-0863-8289-B188754AE781";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2776";
	rename -uid "677E9F7B-4129-3894-72E3-D7A778E1E187";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2782";
	rename -uid "A5FEEB1D-437B-053C-9B30-FD889F00FDD0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2788";
	rename -uid "B5D91360-438F-C0B1-4379-9D8B0C621E9D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2794";
	rename -uid "5BCF4004-4B3C-84E6-E20E-048AC5A8D877";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2800";
	rename -uid "C286FC84-4E77-CA2C-ABB1-248ED9FA3F28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2806";
	rename -uid "4D233D3B-43B3-8D51-5C06-6DA3ED931C3A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2812";
	rename -uid "F9922EF7-4F79-665E-9A9C-D8BCA5668150";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2818";
	rename -uid "7425CF84-4C97-564F-105A-D7A773657CD9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2824";
	rename -uid "C688E6FE-440E-9634-E68D-D696AE010041";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2830";
	rename -uid "AB53BBA9-4845-233C-81BC-0292D3CCBC84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2836";
	rename -uid "E384876E-44F7-B36B-A2B3-039E0C39ACC9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2842";
	rename -uid "7CDD1CC5-473A-EC78-026A-E78FDA86689F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2848";
	rename -uid "ACC15B8E-44D2-6E61-F6A3-E1BF34A433ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2854";
	rename -uid "A35061CE-4BFA-9919-3482-13825C7DF19F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2860";
	rename -uid "E01BFDA0-4755-C1B1-C969-149C4DC128CB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2866";
	rename -uid "13ADC1BF-4230-4E4C-5FB2-38B3C8280008";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2872";
	rename -uid "0EECA68A-4026-FDE6-CE99-9BB6B558912C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2878";
	rename -uid "A4246175-43C8-59A5-DC45-27AFD93C28FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2884";
	rename -uid "765F2982-42C6-8F34-17C8-02B3597EDC98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2890";
	rename -uid "36B3F27A-46DC-54AB-6453-B19473745FAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2896";
	rename -uid "F2B887D5-4CA5-8D1D-9041-C2A454D7CF7A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2902";
	rename -uid "211A4BCA-4DAA-BF8F-A992-65BD572CFA2E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2908";
	rename -uid "A77EE8C8-4838-CE52-6AED-35944AC2C812";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2914";
	rename -uid "8D8C3C62-40C1-F0A8-13C4-7AA5461A8DE0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2920";
	rename -uid "36582D58-4A10-9C01-11BB-9A8AA37FCDCE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2926";
	rename -uid "26647D5A-4C2B-E44F-9C0E-4FAE864020F1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2932";
	rename -uid "7784121B-4498-1CD9-8E15-7695FDD11F4B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2938";
	rename -uid "8190403F-4EE9-146C-F907-1CAD27F00FEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2944";
	rename -uid "1655F66C-4243-E0EE-F4A5-BA91DDAA092F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2950";
	rename -uid "51768586-41BA-5058-3898-4C8B192DB539";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2956";
	rename -uid "FE75289F-4AED-685D-A89A-DD96D5362D3F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2962";
	rename -uid "D2021997-4FE2-AF10-C724-D8A4A33CDF2F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2968";
	rename -uid "ECCE3D73-4726-4C08-C706-C3B23230E013";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2974";
	rename -uid "24EAE8A9-442D-65D5-58AA-0A9A51E9DBEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2980";
	rename -uid "B1D192D5-4FE1-3F66-534F-838A439F388B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2986";
	rename -uid "DC871F03-480B-59A7-4A15-1C8F57BCF130";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2992";
	rename -uid "B748692D-4C72-209B-1677-04B13939C165";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2998";
	rename -uid "3A233A19-4354-F71C-80BD-36B5EA1D1C88";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3004";
	rename -uid "1E2AFFBA-4051-BECB-208D-2282452F8220";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3010";
	rename -uid "1DB38806-4155-CCD9-342F-CBBB84DCF11D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3016";
	rename -uid "C9C87B8B-4868-74A2-7412-10B1F6C3AE0F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3022";
	rename -uid "0BB0A2F7-4D65-B5A6-D431-4A8B04315CA6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3028";
	rename -uid "E82E9A28-416F-926E-3D83-3688F993695F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3034";
	rename -uid "2B11E550-4F35-A597-C2B6-46BB77AC2842";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3040";
	rename -uid "69D5E705-426F-388F-9EBB-5BADA3A7B4B9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3046";
	rename -uid "7BD40364-4743-7E66-82B7-F382CC783640";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3052";
	rename -uid "402B488E-4D5C-77CF-DA79-FD8E68485CC4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3058";
	rename -uid "7DD51AB5-43A7-6EB6-CAA5-FCBB0CB71203";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3064";
	rename -uid "0DD025AE-4E70-6417-D0F1-A88FD00642A4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3070";
	rename -uid "B8D025EF-4564-DD8A-B830-B08ABC41F0C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3076";
	rename -uid "E64D5C43-40F4-8535-18FD-448FFB40525E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3082";
	rename -uid "F1B3ECBC-4705-2146-97E5-539547648C76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3088";
	rename -uid "4CB95DB4-4476-6BF2-8F32-8C99A28FFE9F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3094";
	rename -uid "7C88CDBC-4083-6212-8D78-42A2C33CB975";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3100";
	rename -uid "3BA21036-4465-0443-C9B6-B1B22C3535CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3106";
	rename -uid "A98D6FA2-4042-C9BB-1357-18BBBF5497C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3112";
	rename -uid "BFF6D2DC-49FF-4270-DF59-78AA9776DC18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3118";
	rename -uid "F56E387E-4CCA-5380-1DC3-60996AF6193F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3124";
	rename -uid "371F5F3F-4133-1441-8E08-B78F6D63AF52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3130";
	rename -uid "B0557AC0-4831-F533-8BE5-7EBFB7D94D1C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3136";
	rename -uid "08F6DE85-45A9-F64F-B6BD-39BC6F872681";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3142";
	rename -uid "9A503A6B-4EFF-DA30-6EBE-7CA41659B5D2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3148";
	rename -uid "CB45F38D-4DEE-7946-5134-AFB7AD6942B9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3154";
	rename -uid "EFEA993B-43C8-2396-2B2B-E9961C4304C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3160";
	rename -uid "48CA9B9A-42F2-028D-9A3B-D0BCEF3B4918";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3166";
	rename -uid "E0D20B4B-40EB-3AEB-7798-28B541162254";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3172";
	rename -uid "8326CF0C-4561-2056-0D65-40922F343266";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3178";
	rename -uid "0319B5FF-4F3D-E476-1A9F-D0A986FD1D0A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3184";
	rename -uid "B6172405-4F37-E519-8476-6FBDBAB47F87";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3190";
	rename -uid "94AF0219-4138-1CD3-DBD7-4BA3CA687078";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3196";
	rename -uid "1A141B51-4CCC-7EF0-F0AF-2CB7040B7D14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3202";
	rename -uid "931F62B3-4727-9046-D048-56AB0155E19D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3208";
	rename -uid "D7D4AC5B-415F-10CB-7A23-31ADE0F126DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3214";
	rename -uid "1470A81B-402E-874D-7B64-7FB63F32B216";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3220";
	rename -uid "E59FADF3-4CA7-DD03-5C34-3C9B2E4E5D3F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3226";
	rename -uid "0809946A-45AA-680E-71F1-47A0B006110C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3232";
	rename -uid "7DA14959-4761-CF93-9D27-D1A6CE52AF31";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3238";
	rename -uid "B7D26FEE-456B-33BA-FA05-0EA252DEA5FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3244";
	rename -uid "5B8D02DD-4F1E-7B9D-C6B3-9FB40092C9F7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3250";
	rename -uid "0E5F4B51-4016-8941-4C40-17898F20E956";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3256";
	rename -uid "2FC12D56-4B66-826A-EB01-D2AFB44C4E01";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3262";
	rename -uid "472D4194-4569-DC94-8257-4AAD2FD6CAF0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3268";
	rename -uid "28248C4C-4132-9769-79AA-BCAAA8336C78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3274";
	rename -uid "6DDDBCEE-4109-0A10-AC3D-F88FD29B9A52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3280";
	rename -uid "0C2982D5-48F6-76D2-9E30-58B3C2F07FF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3286";
	rename -uid "87C46E38-49A0-E073-C01F-B28A762B9BCB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3292";
	rename -uid "BAFAE85F-44D0-BC7C-93AC-748F64084D97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3298";
	rename -uid "E33A9BEE-4490-9346-8BB4-4EA61C0007AA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3304";
	rename -uid "223A5023-4A40-AB47-44D3-18B2EE26CD11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3310";
	rename -uid "4ECAC295-41BB-F7F4-E9EB-8D944B68C82F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3316";
	rename -uid "B43E5309-43A3-85AC-6D12-BA9D63D6F954";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3322";
	rename -uid "6BB30CC7-4709-F4A4-7F6D-94903A17AFD5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3328";
	rename -uid "B3414A38-469F-735C-0486-04B7642E1798";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3334";
	rename -uid "9F093144-46BF-92BB-3B9A-32B9E9113134";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3340";
	rename -uid "DA1BA2BE-445C-3AFE-3323-EEB122D47394";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3346";
	rename -uid "EADEE459-41AF-4407-39C4-9D8C14AF0B36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3352";
	rename -uid "B4F130AB-49B6-1A7A-88EE-7FBF768610C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3358";
	rename -uid "5B68354D-4C5B-2F5B-21A4-DD8458C1B7E4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3364";
	rename -uid "CA439D5D-4FBC-66D8-199B-6DA5D94383C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3370";
	rename -uid "3891CE2B-41FB-7817-6344-79AD25EADE0A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3376";
	rename -uid "D40E4363-45C5-9B39-059D-4DA62F63CD44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3382";
	rename -uid "BB24FC5F-461C-A453-F016-A6AFF57D7AEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3388";
	rename -uid "9F514E7F-4B20-C4F3-2C49-4FABC3468CDE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3394";
	rename -uid "1E89C0AA-439C-9F3C-57CC-C7981D75F276";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3400";
	rename -uid "69815CFE-4746-2D96-9607-D283D00B6876";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3406";
	rename -uid "4E5E08C1-41C4-5968-B9AA-04B50A030A4B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3412";
	rename -uid "B76E8093-487D-9AF4-22DA-1A8017B4787B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3418";
	rename -uid "418E9E23-4D81-2320-5B21-6D989C522E7E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3424";
	rename -uid "FA6B640C-4B14-FBB0-1DD7-7F9F5BC60C91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3430";
	rename -uid "31CF40E2-4003-45E9-9218-6484BF5E9DAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3436";
	rename -uid "983AA565-401B-41BF-9103-D38983D25A60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3442";
	rename -uid "75C2EFCA-4743-8C4E-ADD4-F78438CA2467";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3448";
	rename -uid "A956D242-4A8E-2113-7851-BAA59174304F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3454";
	rename -uid "322321A9-401B-77AF-3ACE-819EA32FCD5B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3460";
	rename -uid "3968AA4D-4472-B969-A3DC-81B7262AC32B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3466";
	rename -uid "E6C37180-4AD7-708E-8EC9-678E4DBF551C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3472";
	rename -uid "58B980E3-45F0-F4AF-CC92-E794CCA9C09D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3478";
	rename -uid "E0DAC5FA-4004-3D18-70BE-17BF6AB6689A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3484";
	rename -uid "710BEEAB-4CB2-F11C-636E-0EB286296928";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3490";
	rename -uid "3D191B35-4617-1827-841A-F4A33CFD53DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3496";
	rename -uid "6A6F24E4-40D6-5F6A-A928-4895D1C7F6A0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3502";
	rename -uid "966A364D-404C-166F-DBCD-D0A57A90FA80";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3508";
	rename -uid "B906D881-4AAB-5212-5327-299CA176F772";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3514";
	rename -uid "9A8C790C-4A95-EB53-4F94-5382D2B62B0E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3520";
	rename -uid "03BED80B-4ECD-3800-ED56-D785EDC103DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3526";
	rename -uid "258EDEC2-4704-C835-A884-A0833470F859";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3532";
	rename -uid "A6D1AE97-4EF2-2AAF-8DD5-F5948952F264";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3538";
	rename -uid "87547C3F-46B4-4DEB-6D99-C2A04FEB4C54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3544";
	rename -uid "BFF28C5F-4BBA-FE77-3653-A09B5EC2A199";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3550";
	rename -uid "4E173431-46F0-737D-8EA6-399CB2119AE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3556";
	rename -uid "708B3690-43C4-54DD-D2BD-A49F73A90FE9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3562";
	rename -uid "246E628C-4664-9D13-7BA0-6D82E8142281";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3568";
	rename -uid "04376FA4-4D16-1767-87E9-DBA296AA4111";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3574";
	rename -uid "641C8C58-430A-1154-C552-E6A050A8E03A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3580";
	rename -uid "7CE5E375-4C88-CE5D-4881-0083E486344D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3586";
	rename -uid "731B9F03-47D2-0353-4033-8E9ED87108A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3592";
	rename -uid "06B7061D-4542-62B4-3F4C-1CAA01766D97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3598";
	rename -uid "CF8B4362-417F-E387-A0BD-199EC0AF8FF2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3604";
	rename -uid "062D07C4-4782-A2EF-F966-828405EDCB51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3610";
	rename -uid "A5D67A95-4C6A-BB7D-BCE2-83B2249FDF79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3616";
	rename -uid "DEC5A820-4C0D-91ED-231F-289E7449A89C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3622";
	rename -uid "9750CA93-417A-AA70-C831-1FBF834104F9";
	setAttr ".ihi" 0;
createNode lambert -n "Weather_MAT5";
	rename -uid "8BFD9406-4DF2-FB96-6D83-969F3FF2FA7B";
createNode shadingEngine -n "Weather_SG5";
	rename -uid "46F62026-4404-499D-18E0-838B063730C9";
	addAttr -s false -ci true -sn "weatherTexture" -ln "weatherTexture" -at "message";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo24";
	rename -uid "2A59A3AF-40A4-6A46-1844-BAB69590A869";
createNode file -n "Weather_PNG5";
	rename -uid "74AAE2ED-4E43-FFC8-9815-53AAFC4583FD";
	setAttr ".ftn" -type "string" "C:/Users/free/Downloads/Atmosphere/Snow.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "45704617-470E-05B9-A01B-1A8597761306";
createNode standardSurface -n "WeatherSurface11";
	rename -uid "327A4694-4C60-AE17-8999-E5952462E09B";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG11";
	rename -uid "961D5632-43D5-A02B-F12F-5080812488D4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo25";
	rename -uid "5E610ED4-4AC7-79FD-DA5F-C5B258AE1396";
createNode groupId -n "groupId3628";
	rename -uid "BEE98B7C-433E-A8F2-2E70-C3904C706214";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3634";
	rename -uid "FBBA27DD-47CD-718B-BEFA-82B613306239";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3640";
	rename -uid "2A2EE964-431D-50F1-A948-298166013C3D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3646";
	rename -uid "64C4A00D-483B-2B8F-4C30-71BB3EF50AD4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3652";
	rename -uid "8B2A7F14-4956-0708-2623-22AEF9F5D12F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3658";
	rename -uid "914789D7-446D-BFC9-805E-3F82B362BF3A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3664";
	rename -uid "08F0E58E-4BAB-4603-D3E6-1CAAFD406801";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3670";
	rename -uid "478C4DA5-4411-5A30-BCE6-4E8176E83EBB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3676";
	rename -uid "9AF17279-43CC-86EA-B966-AABF5A018119";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3682";
	rename -uid "4F7ED1EC-4A81-0C5C-9A44-3E88A23EDCF6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3688";
	rename -uid "FF21B1FC-45FC-4F6C-0BA3-99A980328C1C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3694";
	rename -uid "C221BDA3-4DBB-EE7F-4B34-5BB1C553707B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3700";
	rename -uid "2216456E-4640-A62E-489C-0CBCF74D58CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3706";
	rename -uid "27E4DB58-4741-D9C2-47AC-DDB5DF82DE1D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3712";
	rename -uid "39CAA14B-4F28-7B74-87AE-5BAD888C3BDA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3718";
	rename -uid "C2BB31D4-48DA-4961-E843-55918626C331";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3724";
	rename -uid "5D8C6C09-448F-F85E-AC80-C19ACA1EAEFA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3730";
	rename -uid "0552495D-4A51-FE6B-7D61-B3A5949363DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3736";
	rename -uid "852E3FD0-4026-C687-BAF3-44A4A8960E50";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3742";
	rename -uid "70431893-4F61-CBEF-D4E0-F58FDAE469DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3748";
	rename -uid "8846D654-4D45-35AE-56EC-D285E52CBC56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3754";
	rename -uid "9E40942E-4E27-D0FE-E71D-52A5D4B15DB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3760";
	rename -uid "EF21EDE0-4E41-42C0-EEBA-AE9FD5EFDAD7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3766";
	rename -uid "F41F075D-4740-F51D-930E-DB8E2AB89508";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3772";
	rename -uid "16497981-4BDC-7C57-EBC5-789B9147184A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3778";
	rename -uid "3A485515-49BE-77F1-F050-6E8D96802897";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3784";
	rename -uid "A70BE089-4896-DF35-942F-AA8DC2605581";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3790";
	rename -uid "CF8C37BE-4202-02D6-C46A-E7B00F9E4497";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3796";
	rename -uid "F68C2E5C-492D-FA06-5077-23A509A0C1BD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3802";
	rename -uid "DD724F34-49A5-558F-AA3E-E19EAADC1812";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3808";
	rename -uid "B0B02E2A-415C-62CA-7B5D-CCA08A842997";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3814";
	rename -uid "1F221AD2-41D7-098F-8BD9-79A32B90267C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3820";
	rename -uid "1A5FCAF8-428E-8A27-09DA-FDA532E85DF9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3826";
	rename -uid "335FFBF0-42D6-36D4-2FB2-DCBA625232B5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3832";
	rename -uid "D8132BDA-4C08-A36E-7C6B-8EBD429D7DE0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3838";
	rename -uid "3BEE2F26-4AE9-49EF-D842-59AF41D423E8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3844";
	rename -uid "43A02082-4228-6E52-7F56-3399715B9435";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3850";
	rename -uid "A6CDEFB9-4CD4-AF3C-3495-379076C68DEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3856";
	rename -uid "06387B4D-4DBB-7062-707F-BA9AC7F51D1D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3862";
	rename -uid "9C820C77-47DA-A942-D1CA-00946A619652";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3868";
	rename -uid "855BD057-4A08-01A5-1277-6B80EBA002D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3874";
	rename -uid "B14BF7F2-4087-01C6-BDD0-0DB459E1DD8B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3880";
	rename -uid "DE9CE719-40B5-7FD1-2103-E0862B1CAB67";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3886";
	rename -uid "50E2009A-460A-384A-40C9-688D08D84306";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3892";
	rename -uid "9181DDA8-496F-81D5-307A-F09659D11EF1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3898";
	rename -uid "60AB2C2B-4ABD-82D9-3D57-52B12FA7AC7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3904";
	rename -uid "66E96461-49B1-497E-ECA2-15945F3076AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3910";
	rename -uid "08CEA59C-4A98-ABFF-12FB-CDA174806A18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3916";
	rename -uid "881CFF4B-4D89-6C6A-349C-0495288A7992";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3922";
	rename -uid "B0A601C4-4E3B-1902-F35E-6BA8F5788728";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3928";
	rename -uid "C1A66A54-4EE7-910C-1D66-8394F50AD5B5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3934";
	rename -uid "1B292C52-475A-90B1-0E6B-EBAE2E8D1891";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3940";
	rename -uid "25194113-46F3-BA89-7EC2-14B02AC30483";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3946";
	rename -uid "27A7935C-4B76-33E8-F8B6-0B90996DBE68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3952";
	rename -uid "07AEE1BA-4E7C-F9E3-930C-35A3A0A10A42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3958";
	rename -uid "D9E266EA-4046-1043-13A8-E48F83396FBC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3964";
	rename -uid "1227E949-407F-6BFF-7FCD-20BD51EFA2CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3970";
	rename -uid "BFA67743-48B3-E91B-BAD1-12A4162734AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3976";
	rename -uid "1E2FDF3F-400B-A347-A2C0-B99C4FE8B980";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3982";
	rename -uid "4A1E3FEF-4D1D-23FC-37E9-709310979F48";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3988";
	rename -uid "5B8B8CF7-4F17-E600-4260-D8977AE65AD3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3994";
	rename -uid "3B8904F4-4AB4-9D0B-DF03-46BEC8BDEDD4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4000";
	rename -uid "F848B53F-4646-77BE-3132-B5A5FEE19D9B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4006";
	rename -uid "C01FB214-4F3F-8676-611E-3CA2D5C41301";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4012";
	rename -uid "79A7F977-4980-D015-ED3A-5E939ADFED1C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4018";
	rename -uid "7393AA01-42E8-F14F-F647-CF87DECC58A0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4024";
	rename -uid "86B56EBE-48FA-A629-9F25-B38FAA996183";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4030";
	rename -uid "E0D5E430-4488-28DB-AE22-DB957E74C7FB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4036";
	rename -uid "86F34E87-496F-EF91-94DA-80AD100E3605";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4042";
	rename -uid "A0721069-4A22-9D18-CAA6-97A5F6D3803A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4048";
	rename -uid "C770FDDF-4623-C9CB-5AA4-D39FB932F277";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4054";
	rename -uid "F71A1E4B-4398-71A3-57FA-B881105A7AB6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4060";
	rename -uid "2CA8A546-4B0A-4290-D3E9-10B18558F995";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4066";
	rename -uid "9BE2569A-40A0-A5A1-7B37-3FB9735020EF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4072";
	rename -uid "B998F7CE-4371-C595-FFD4-778D69495E81";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4078";
	rename -uid "3C592841-4171-C7F3-140F-2B866388B545";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4084";
	rename -uid "2114B581-463C-32CC-271A-E980046CA832";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4090";
	rename -uid "F474BA8B-4C49-AB0A-D3DD-2680ED005DBC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4096";
	rename -uid "AF2253E0-4EAE-50C3-B305-369040BD8B4A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4102";
	rename -uid "AEAF4B10-435C-7C90-4462-849F664DBB76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4108";
	rename -uid "F91A54C0-442F-C781-CEC9-1584D0CB41BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4114";
	rename -uid "F188ECF6-4E29-E4CA-C00D-E6B487C87405";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4120";
	rename -uid "A995C378-44C9-1692-7131-CC9A387D40EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4126";
	rename -uid "7D1638BD-4225-1628-60E0-02AB1D61AC5C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4132";
	rename -uid "85D16B57-4945-B232-6A77-A2A9761E7D44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4138";
	rename -uid "4C8B86EE-4C90-2FC4-0A1C-DC844D3530FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4144";
	rename -uid "2843A915-40B9-4BB6-46F8-B8B70D7FA85C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4150";
	rename -uid "9CBF21AB-4165-AFFD-DFF8-35851FEED67F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4156";
	rename -uid "DDB3A818-4015-6C02-F949-61962EA06432";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4162";
	rename -uid "9088580A-40CF-AFC9-C37C-3B8E00547498";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4168";
	rename -uid "03CC26BD-4BB4-B0AA-CF8B-E2AAE983485B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4174";
	rename -uid "3C9D5C02-49E4-9BE4-4778-07BCB5B31BA8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4180";
	rename -uid "935D1E2C-47C5-0A46-392F-F6AA47239DC1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4186";
	rename -uid "DB958182-4F49-0029-F8BA-6985902BDCB9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4192";
	rename -uid "CCB12138-4792-50C6-1F95-96B04A5A5B6D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4198";
	rename -uid "1DB4E326-4F19-65A3-B42B-86B46A5D6893";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4204";
	rename -uid "3D46B304-4128-CF92-DE60-12BF884ADE95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4210";
	rename -uid "B8E7F9B3-4E1A-2EBA-6001-6FB5F8B5C3C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4216";
	rename -uid "F04A25D7-487B-B860-A295-EE98B905FB64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4222";
	rename -uid "226DDF5B-4F6D-89A0-D8F2-B184193BD89E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4228";
	rename -uid "9868326A-4EF6-F344-0B0A-968B6B5A0801";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4234";
	rename -uid "68C7F588-41D4-23EF-CCCC-718520ADC899";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4240";
	rename -uid "5531894E-4D31-D4C9-0157-72AB7CEB48E7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4246";
	rename -uid "03E0716F-4A7A-5F70-06A0-DBB06712526F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4252";
	rename -uid "3739DDE6-41CB-49C0-4076-419FE8230CC4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4258";
	rename -uid "4B265C36-497F-0520-6D3F-B2B7B723C32F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4264";
	rename -uid "12CCA269-4B2C-6B02-8A96-E2A5332A2913";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4270";
	rename -uid "8C66AA9D-4762-BBC8-871F-E6A1719A8780";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4276";
	rename -uid "DB8BA005-4F5D-DAC3-3C44-EEACD6E37286";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4282";
	rename -uid "BEF99AA8-44D9-5B31-3208-7C95A902E227";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4288";
	rename -uid "77868AFC-4AB5-DA58-0488-D9A571B6C031";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4294";
	rename -uid "4157BC56-44C6-6A29-E01F-069BEE1F130C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4300";
	rename -uid "448425FC-4256-0895-ECF5-9CAC9FBA79E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4306";
	rename -uid "64126A6C-442B-D43A-7139-3A8E110D406E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4312";
	rename -uid "4E62C782-49A9-86C8-0B2C-DF985A651664";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4318";
	rename -uid "F2255361-4FE5-53A7-4455-518F30E268EB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4324";
	rename -uid "65F802ED-455E-3E49-C12D-F4A7241613B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4330";
	rename -uid "2DA7EF23-480C-757B-2D1F-4985BA630C5E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4336";
	rename -uid "90CAEF63-4739-942E-2BAE-AEB4217EF908";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4342";
	rename -uid "B96425B7-4727-33AC-0628-FAAE26A4B0A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4348";
	rename -uid "4BD2D645-415F-C08E-7A7A-BD9E2E0061AC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4354";
	rename -uid "2C9E96B3-49A2-5C36-1604-2EA70D6855DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4360";
	rename -uid "8D5EDC22-4660-7B26-65EA-E3B1BBB609A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4366";
	rename -uid "AA6F3D5A-439B-1CE0-5AEC-C6B247C94FC2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4372";
	rename -uid "15A23309-4E2F-2D46-AF48-1DB67880C4C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4378";
	rename -uid "872F9834-4D48-9255-3DB4-D595642A5A89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4384";
	rename -uid "D57797D2-4AEE-A386-1F03-70AB97A76E48";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4390";
	rename -uid "492D1A0E-4953-9F49-37D0-6B9953440B92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4396";
	rename -uid "56FAAEF0-469C-0A97-96B3-2D9A065949FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4402";
	rename -uid "825ED67B-485F-D182-3662-4CADDBB2807B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4408";
	rename -uid "235F8564-4A64-8DC5-B4C1-A8B0F8A559C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4414";
	rename -uid "57BCE973-4341-AC70-57F1-54A76CF57C0A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4420";
	rename -uid "0FEA8202-49FF-D500-590D-B29A90670B13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4426";
	rename -uid "8B5945ED-46B2-12DF-4BDE-08BCB21CCDC9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4432";
	rename -uid "18F5F2C9-43F0-1E74-86BB-E3AC5C6D2566";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4438";
	rename -uid "31818A6E-4BF2-A828-4E19-10B57195CB39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4444";
	rename -uid "041D7262-4488-A4F4-CAD1-A9AD9C6680A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4450";
	rename -uid "621A16A3-46A3-B430-02D2-D7B049F55BD0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4456";
	rename -uid "631C66F6-4D12-A102-CE54-33BCF3BC2FB6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4462";
	rename -uid "E7AE00E8-4FAF-8BA2-B5A0-37AF1AF9CCFB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4468";
	rename -uid "97014478-450D-326F-2A22-E491C1B80459";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4474";
	rename -uid "4993A862-47F1-D67B-3538-738C36DFC4FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4480";
	rename -uid "E63670CC-466A-77DD-0A76-C79054183253";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4486";
	rename -uid "ED710160-4B73-0588-0E2B-2DAF54D59A37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4492";
	rename -uid "59C22433-4398-D6AE-9122-4DB277B616BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4498";
	rename -uid "E6EA6EBC-4EA5-27D2-258A-07BCB0E48F9A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4504";
	rename -uid "F018ED10-457F-DDE1-4265-98AC61C63EB9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4510";
	rename -uid "BDE0429F-42F2-92BC-EADD-45A366442622";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4516";
	rename -uid "EC6ABDCA-4497-38F9-3A06-DAAA1AAD4CCC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4522";
	rename -uid "EBAC592D-4F0C-71AD-B348-B78FF685FA4A";
	setAttr ".ihi" 0;
createNode standardSurface -n "WeatherSurface36";
	rename -uid "1CEC2591-48C1-36B6-3593-D99189FAB539";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG36";
	rename -uid "46D9B286-41C1-11E9-F6E9-E7988BF29C4B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo50";
	rename -uid "4BCDF670-4C64-E0C7-2316-EFAA4C4F7C61";
createNode standardSurface -n "WeatherSurface37";
	rename -uid "8B983F39-4D48-7F88-8DC2-73A9154D15F6";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG37";
	rename -uid "242AEC89-4B94-44E3-0D4B-1081B49FDEA7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo51";
	rename -uid "A6A6B4BE-43D8-3B3C-36A0-999B1C5339B3";
createNode standardSurface -n "WeatherSurface38";
	rename -uid "2C94FBD7-4362-D86F-D9D9-1DAD126081DE";
	setAttr ".bc" -type "float3" 0.90249997 0.93099999 0.94999999 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.90249997 0.93099999 0.94999999 ;
createNode shadingEngine -n "WeatherSurfaceSG38";
	rename -uid "B10C7353-4DC0-A0D1-BF84-FABFA18E9C85";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo52";
	rename -uid "E50B823B-4235-357A-F115-D180CA815D2B";
createNode standardSurface -n "WeatherSurface39";
	rename -uid "C92B31AE-4575-2966-1662-398A91622697";
	setAttr ".bc" -type "float3" 0.93432498 0.96382999 0.9835 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.93432498 0.96382999 0.9835 ;
createNode shadingEngine -n "WeatherSurfaceSG39";
	rename -uid "29B44196-4B11-F01A-199C-D783F2B96DA4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo53";
	rename -uid "FE3E7FD5-4879-29C3-76B0-718D5D933D16";
createNode standardSurface -n "WeatherSurface40";
	rename -uid "8AE17492-40A0-B73E-A3A2-699A44A4A324";
	setAttr ".bc" -type "float3" 0.965675 0.99617004 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.965675 0.99617004 1 ;
createNode shadingEngine -n "WeatherSurfaceSG40";
	rename -uid "DE8D964B-4306-71BE-C82A-8895CFE75EB6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo54";
	rename -uid "115965B6-4162-9505-5B6F-3F94AFD140FA";
createNode standardSurface -n "WeatherSurface41";
	rename -uid "3DCB973F-4F63-AF1A-D325-169816100381";
	setAttr ".bc" -type "float3" 0.9975 1 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.9975 1 1 ;
createNode shadingEngine -n "WeatherSurfaceSG41";
	rename -uid "A5781437-44C0-FDE8-6E0E-88B7BCA3B95C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo55";
	rename -uid "AD7171A6-49E9-7977-2597-3E9547CE0025";
createNode standardSurface -n "WeatherSurface42";
	rename -uid "8E045B37-41DD-6815-D456-EE82038A44F9";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG42";
	rename -uid "98D5C7DC-4FDA-4FD7-0FF6-20915E10D853";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo56";
	rename -uid "C92AD273-45C5-EFB1-BCF2-BCB0ADC2FFA0";
createNode standardSurface -n "WeatherSurface43";
	rename -uid "BBF0E642-42BD-2B78-BCF3-48AC8D29987D";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG43";
	rename -uid "53A74054-4A44-6DB9-02E4-63B313AA1864";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo57";
	rename -uid "022E0845-402A-998C-C60A-FF8AD5F38E96";
createNode standardSurface -n "WeatherSurface44";
	rename -uid "AE2F4725-4204-CEEE-BDC5-9ABE85896B94";
	setAttr ".bc" -type "float3" 0.90249997 0.93099999 0.94999999 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.90249997 0.93099999 0.94999999 ;
createNode shadingEngine -n "WeatherSurfaceSG44";
	rename -uid "486C3729-422B-B89F-519E-EB91F930DD2B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo58";
	rename -uid "5F38972C-4926-71C3-6203-3BAE99E57FC4";
createNode standardSurface -n "WeatherSurface45";
	rename -uid "3A81306C-4C46-C11C-4703-F59ACFE7C3D8";
	setAttr ".bc" -type "float3" 0.93432498 0.96382999 0.9835 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.93432498 0.96382999 0.9835 ;
createNode shadingEngine -n "WeatherSurfaceSG45";
	rename -uid "67AC32D8-4338-B6C4-61F2-B0B758D7F376";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo59";
	rename -uid "04A701D8-4FE1-0E56-EED9-FBA9D157CD52";
createNode standardSurface -n "WeatherSurface46";
	rename -uid "8260642B-43AC-BCA4-ACAE-78AF599DCAB9";
	setAttr ".bc" -type "float3" 0.965675 0.99617004 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.965675 0.99617004 1 ;
createNode shadingEngine -n "WeatherSurfaceSG46";
	rename -uid "EBF7C524-4810-0A2D-D8C1-418DA930A26E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo60";
	rename -uid "3AEB3023-4F84-29AE-D4F4-6FAFA216F8E4";
createNode standardSurface -n "WeatherSurface47";
	rename -uid "4AC46953-4A65-45FA-AFA8-8EBBC9B0C6D7";
	setAttr ".bc" -type "float3" 0.9975 1 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.9975 1 1 ;
createNode shadingEngine -n "WeatherSurfaceSG47";
	rename -uid "77D21509-4FC9-E075-BCAE-679BD2CBD26F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo61";
	rename -uid "96D4EB55-4DC4-3CB6-387D-4AA1F83E9C70";
createNode standardSurface -n "WeatherSurface48";
	rename -uid "71725E89-450F-1ED3-9761-F6A3802F017D";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG48";
	rename -uid "DA84A8DD-4F36-8D27-CCFD-A3821611F99C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo62";
	rename -uid "9B97AC62-4B47-747F-D1CF-0DB8AB901F25";
createNode standardSurface -n "WeatherSurface49";
	rename -uid "AB98828C-46E3-ED7A-76BC-BB94EC40D51D";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG49";
	rename -uid "A52392B5-47F1-BAB6-7D96-428BFEC4A6DE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo63";
	rename -uid "76309A7B-4A77-AF26-E804-22A9A29D17CE";
createNode standardSurface -n "WeatherSurface50";
	rename -uid "3EF1E541-4FDC-0092-8A7A-84BD6BE5673F";
	setAttr ".bc" -type "float3" 0.90249997 0.93099999 0.94999999 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.90249997 0.93099999 0.94999999 ;
createNode shadingEngine -n "WeatherSurfaceSG50";
	rename -uid "FD54AF64-4B1B-D062-D16E-99BA534C1E44";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo64";
	rename -uid "9B11E02D-4B13-9E46-5190-879E032927E4";
createNode standardSurface -n "WeatherSurface51";
	rename -uid "A6146885-4CF6-9160-BBD5-EEBC084A87EB";
	setAttr ".bc" -type "float3" 0.93432498 0.96382999 0.9835 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.93432498 0.96382999 0.9835 ;
createNode shadingEngine -n "WeatherSurfaceSG51";
	rename -uid "7C0E2986-43ED-F3D3-4C79-7C89D1C3217D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo65";
	rename -uid "5DA9450F-403D-E36E-2DF7-E9B64FCB7F16";
createNode standardSurface -n "WeatherSurface52";
	rename -uid "F024F8D5-44AD-7A5B-F3D6-B68771C789FA";
	setAttr ".bc" -type "float3" 0.965675 0.99617004 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.965675 0.99617004 1 ;
createNode shadingEngine -n "WeatherSurfaceSG52";
	rename -uid "EB921FBA-4BDA-6157-208C-629786677C89";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo66";
	rename -uid "F0B64BB3-4504-C23D-B667-389AE56E4B87";
createNode standardSurface -n "WeatherSurface53";
	rename -uid "EF48EB47-4C3F-FB43-4275-0A856070C4DD";
	setAttr ".bc" -type "float3" 0.9975 1 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.9975 1 1 ;
createNode shadingEngine -n "WeatherSurfaceSG53";
	rename -uid "7533511B-43B5-A358-8F5B-D5AED1B7D316";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo67";
	rename -uid "888EDCD0-474D-EC7C-A456-E783B0315BC6";
createNode standardSurface -n "WeatherSurface60";
	rename -uid "185C8F52-4D7F-B869-E914-AEB4214395CC";
	setAttr ".bc" -type "float3" 0.5 0.62 0.73000002 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.5 0.62 0.73000002 ;
createNode shadingEngine -n "WeatherSurfaceSG60";
	rename -uid "ED7C0785-4D2F-D10E-2E3E-BD80825C9171";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo74";
	rename -uid "B9804AF0-4573-079B-1929-2EB227228887";
createNode standardSurface -n "WeatherSurface61";
	rename -uid "BCA6DF95-4CB5-38B3-29F1-89ABD2A300DB";
	setAttr ".bc" -type "float3" 0.5 0.62 0.73000002 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.5 0.62 0.73000002 ;
createNode shadingEngine -n "WeatherSurfaceSG61";
	rename -uid "3D08FBE2-4BE8-4D96-EA1D-009F64445F1A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo75";
	rename -uid "95D1E723-434B-BEC9-E199-70B415D9F7BB";
createNode standardSurface -n "WeatherSurface62";
	rename -uid "90ECD881-4B79-BA62-8040-2587AA9AF672";
	setAttr ".bc" -type "float3" 0.47499999 0.58899999 0.69350004 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.47499999 0.58899999 0.69350004 ;
createNode shadingEngine -n "WeatherSurfaceSG62";
	rename -uid "86E167C9-4872-65B6-DB27-87AF772CE966";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo76";
	rename -uid "41E890C9-41F3-1921-31D5-3891EF1926EE";
createNode standardSurface -n "WeatherSurface63";
	rename -uid "D6FDE398-41F2-3CC3-12D7-928A90B7A6A2";
	setAttr ".bc" -type "float3" 0.49175 0.60977 0.71795499 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.49175 0.60977 0.71795499 ;
createNode shadingEngine -n "WeatherSurfaceSG63";
	rename -uid "101686B7-48B2-0F44-15DC-1B976ED377C0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo77";
	rename -uid "CE4A416D-4E6F-904D-7F4B-AB8E068B93CA";
createNode standardSurface -n "WeatherSurface64";
	rename -uid "B13EE2B4-4382-4BA6-FB00-3CB6F7152170";
	setAttr ".bc" -type "float3" 0.50825 0.63023001 0.74204504 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.50825 0.63023001 0.74204504 ;
createNode shadingEngine -n "WeatherSurfaceSG64";
	rename -uid "D7E363C9-4C2D-AB54-692B-01BB00C43A9F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo78";
	rename -uid "87066378-4BA4-B670-5FCD-7A80A2200E59";
createNode standardSurface -n "WeatherSurface65";
	rename -uid "F0A41A85-4792-E98B-3BD9-99897FA45261";
	setAttr ".bc" -type "float3" 0.52499998 0.65100002 0.7665 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.52499998 0.65100002 0.7665 ;
createNode shadingEngine -n "WeatherSurfaceSG65";
	rename -uid "66D69276-4FB6-24DE-A372-DCBB1542A904";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo79";
	rename -uid "CB9F2668-433B-9C1C-C7BA-618F4485C0E9";
createNode standardSurface -n "WeatherSurface72";
	rename -uid "68F05B6E-4DCB-27A0-2B34-6385F81E19A1";
	setAttr ".bc" -type "float3" 0.55000001 0.72000003 0.89999998 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.55000001 0.72000003 0.89999998 ;
createNode shadingEngine -n "WeatherSurfaceSG72";
	rename -uid "15E411B2-4225-A710-98DE-47B86B42B907";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo87";
	rename -uid "119BE087-4592-CCB1-25C4-4A85D4F0F4F7";
createNode standardSurface -n "WeatherSurface73";
	rename -uid "8F73ED04-47E6-33D9-08A9-3CB0CF68B2C4";
	setAttr ".bc" -type "float3" 0.55000001 0.72000003 0.89999998 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.55000001 0.72000003 0.89999998 ;
createNode shadingEngine -n "WeatherSurfaceSG73";
	rename -uid "C6A8C550-41F3-6B9A-5583-39B7E5327343";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo88";
	rename -uid "62F2A8C4-4EAE-3C3C-8253-95817506047C";
createNode standardSurface -n "WeatherSurface74";
	rename -uid "D09088A3-4A4B-C285-FA79-CEA3E06C0C39";
	setAttr ".bc" -type "float3" 0.52250004 0.68400002 0.85499996 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.52250004 0.68400002 0.85499996 ;
createNode shadingEngine -n "WeatherSurfaceSG74";
	rename -uid "17E12CFD-43DA-B330-F43F-309FAB976256";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo89";
	rename -uid "E3FC657D-4159-F2CF-3394-3FA375C4F800";
createNode standardSurface -n "WeatherSurface75";
	rename -uid "61BE3773-4B17-0449-6978-50AA58416B76";
	setAttr ".bc" -type "float3" 0.54092503 0.70812005 0.88514996 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.54092503 0.70812005 0.88514996 ;
createNode shadingEngine -n "WeatherSurfaceSG75";
	rename -uid "308F1D29-4166-9A4C-9CE1-87AA5D04B004";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo90";
	rename -uid "8E80D45F-4994-3BC9-D5DC-03B5CB2C987E";
createNode standardSurface -n "WeatherSurface76";
	rename -uid "E7D74C98-4494-205C-A07C-2EA19900098B";
	setAttr ".bc" -type "float3" 0.559075 0.73188001 0.91485 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.559075 0.73188001 0.91485 ;
createNode shadingEngine -n "WeatherSurfaceSG76";
	rename -uid "35374257-42D1-BCAD-1B58-AA8BF85E84E8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo91";
	rename -uid "74DD8260-4A7C-C2DE-1824-AC8FCF8DA0E4";
createNode standardSurface -n "WeatherSurface77";
	rename -uid "8E2F3D30-42E7-C5F4-D090-EFA9F55ADAC0";
	setAttr ".bc" -type "float3" 0.57749999 0.75600004 0.94499999 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.57749999 0.75600004 0.94499999 ;
createNode shadingEngine -n "WeatherSurfaceSG77";
	rename -uid "0A935AC4-4FB7-5961-1171-9590A3D107FE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo92";
	rename -uid "139D3770-4181-EAF3-9C2F-88A3FE93D365";
createNode standardSurface -n "PuddleWater2";
	rename -uid "68CED508-4187-7FFF-4962-F9802B633337";
	setAttr ".b" 0.15000000596046448;
	setAttr ".bc" -type "float3" 0.64999998 0.80000001 0.89999998 ;
	setAttr ".sr" 0.079999998211860657;
	setAttr ".sior" 1.3329999446868896;
	setAttr ".t" 0.75;
	setAttr ".trc" -type "float3" 0.64999998 0.80000001 0.89999998 ;
createNode shadingEngine -n "PuddleWaterSG2";
	rename -uid "F3E3970E-4810-AF62-0929-DCA38F214704";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo93";
	rename -uid "2A642CD3-465E-CA74-C962-3C962804966D";
createNode standardSurface -n "WeatherSurface78";
	rename -uid "584BCA11-4E22-B433-DD32-0DB19862424E";
	setAttr ".bc" -type "float3" 0.55000001 0.24000001 0.045000024 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.55000001 0.24000001 0.045000024 ;
createNode shadingEngine -n "WeatherSurfaceSG78";
	rename -uid "5B8F255F-4A24-D896-5DDA-C589C0A06160";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo94";
	rename -uid "8E10AFF9-48D7-B70C-4F66-17B3AE521384";
createNode standardSurface -n "WeatherSurface79";
	rename -uid "A7B19435-4055-1F4E-AABD-CBB9719FF16C";
	setAttr ".bc" -type "float3" 0.55000001 0.24000001 0.045000024 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.55000001 0.24000001 0.045000024 ;
createNode shadingEngine -n "WeatherSurfaceSG79";
	rename -uid "C4013DE8-44AC-021C-BBE5-5B983F49EF83";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo95";
	rename -uid "3485091A-4403-4137-588F-4AA078260AC8";
createNode standardSurface -n "WeatherSurface80";
	rename -uid "DEFA0587-4F24-0818-2921-EE92900333E4";
	setAttr ".bc" -type "float3" 0.41250002 0.18000001 0.03375002 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.41250002 0.18000001 0.03375002 ;
createNode shadingEngine -n "WeatherSurfaceSG80";
	rename -uid "476BB025-4926-F51A-8427-B3953F09EA90";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo96";
	rename -uid "AEEF3C34-4FF4-71DE-CEAD-A29DF412652D";
createNode standardSurface -n "WeatherSurface81";
	rename -uid "6CCF65D7-42E0-CA1A-AFEA-4787B25AE496";
	setAttr ".bc" -type "float3" 0.50462502 0.2202 0.041287523 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.50462502 0.2202 0.041287523 ;
createNode shadingEngine -n "WeatherSurfaceSG81";
	rename -uid "86D4A072-465F-275C-5B6A-B0938932E2AD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo97";
	rename -uid "6B0CCF1B-46C7-07F6-A746-2DAD841A83CF";
createNode standardSurface -n "WeatherSurface82";
	rename -uid "9F6EB1FB-458D-FE9F-B082-B0B028B66040";
	setAttr ".bc" -type "float3" 0.595375 0.25980002 0.048712526 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.595375 0.25980002 0.048712526 ;
createNode shadingEngine -n "WeatherSurfaceSG82";
	rename -uid "2FA1069F-4FBD-3876-B03E-78A97565D02E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo98";
	rename -uid "64CD8A81-418B-8D4C-F43C-2A9AA149C2B9";
createNode standardSurface -n "WeatherSurface83";
	rename -uid "EA6AD39B-43E9-1B91-9497-02BE6B06CA38";
	setAttr ".bc" -type "float3" 0.6875 0.30000001 0.056250028 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.6875 0.30000001 0.056250028 ;
createNode shadingEngine -n "WeatherSurfaceSG83";
	rename -uid "ABEF3111-459B-88DF-9BBA-08ADA000E5F5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo99";
	rename -uid "8709E5AA-4B68-3F6F-AF54-689AE328F694";
createNode groupId -n "groupId4528";
	rename -uid "D5F68EAC-4308-BEA3-91D8-6EB1965BF9A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4534";
	rename -uid "58A979FA-4704-E787-D61C-DA8D9C7E5C4A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4540";
	rename -uid "2489497B-4A7D-61A4-B964-8DAB3FB499F4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4546";
	rename -uid "39B0CFF8-4BB8-3280-E355-2197E3D3D442";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4552";
	rename -uid "EAE5E287-4916-791E-4041-CA9D04CE5D25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4558";
	rename -uid "AA5B9944-4955-4773-20B2-388DCB9373E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4564";
	rename -uid "C68FDAE8-4ACB-695B-5005-3E8E3DDC51BD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4570";
	rename -uid "993D0552-4053-8D64-6060-EF80C9E49810";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4576";
	rename -uid "A00CC04A-40F4-6FE7-7EE6-E29B79E3DD27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4582";
	rename -uid "28FCEAAC-4975-F74A-6B9F-A5A85584158E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4588";
	rename -uid "FA04041A-428D-8570-9162-9583F3E816AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4594";
	rename -uid "EF45D009-45C4-A46A-ACC5-D289C2A7D091";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4600";
	rename -uid "1889853A-4D44-5266-C1A8-03B404429E7E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4606";
	rename -uid "D5467A33-4513-E462-7290-969947FA647A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4612";
	rename -uid "D770B0CF-4230-A5A1-C690-4E97EB36D475";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4618";
	rename -uid "54E7B77D-4C37-54A7-36AC-9E97A841158D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4624";
	rename -uid "6D15ACB2-4863-16E1-1A5D-3EBF95A5743C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4630";
	rename -uid "36F36F33-4E80-D0FD-7209-F89148762E7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4636";
	rename -uid "B2349907-45B8-15B5-75AC-87A60897FF0A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4642";
	rename -uid "288B87D0-4F47-2AC4-D6DD-17AC9D85C53D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4648";
	rename -uid "93B6B1C2-44CF-D57F-84F3-F4B2B5061161";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4654";
	rename -uid "59C50D74-4376-883C-517E-77A75C66511B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4660";
	rename -uid "BBA94AB7-404B-E196-248F-12863A743994";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4666";
	rename -uid "5787CE36-4925-541C-6458-8E81D8FABB40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4672";
	rename -uid "838B77C2-4DE5-4C90-E14B-A99C11C717C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4678";
	rename -uid "0391CCB2-46C0-4E6C-C3F2-13B32DCAF5A4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4684";
	rename -uid "E7577D93-4FEE-B62C-2838-299E98109B3C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4690";
	rename -uid "D162DFEC-493A-3627-2CA6-07A05C3B57E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4696";
	rename -uid "AAEC6362-4D26-043D-C118-968CB1B1952E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4702";
	rename -uid "6236CC55-432C-E72D-E636-1F941975030F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4708";
	rename -uid "928857CE-4311-8DF8-4F96-7790B2CD7C92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4714";
	rename -uid "714F2447-4CA3-120C-9E4F-85B7EC080C6D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4720";
	rename -uid "DEA2B51C-48A3-84F7-A6B9-1E91F8B45BC1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4726";
	rename -uid "8AF868FF-4BCC-CEC0-87A0-8F8EB408C692";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4732";
	rename -uid "B55EC6B3-412A-3102-88C9-5C841394A807";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4738";
	rename -uid "1E0517E0-409D-7241-45C1-12BE10242086";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4744";
	rename -uid "31F78EEE-4D85-B307-F719-D6BDB420EAE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4750";
	rename -uid "12829BAA-423F-8CCC-9D41-ED9F460243CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4756";
	rename -uid "2B935DDC-465F-D549-D8C6-B193BBC33EEB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4762";
	rename -uid "D9728F05-4FAB-0B41-BED2-3B9854338EC5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4768";
	rename -uid "8F641EDE-405A-6B26-26BF-3588880D10C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4774";
	rename -uid "593E838A-4B10-6BFC-C638-E9B4CC588BF9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4780";
	rename -uid "2B9C1BBA-4E02-9AE5-348E-0FAB60704BD4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4786";
	rename -uid "556D419D-44EA-9251-2B16-888D23015D0C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4792";
	rename -uid "3456EDD6-491A-E529-14F6-15985AB5C6DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4798";
	rename -uid "EDC54956-4E46-659D-CE77-68AD05E32DA2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4804";
	rename -uid "087B4F3A-4086-CFE9-D0AC-3CA9EEEB7693";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4810";
	rename -uid "1A782707-45F2-A82F-1C27-63BE9C4B4E98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4816";
	rename -uid "D1A8AA49-4CD1-ACAE-E13D-8490F52BEB81";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4822";
	rename -uid "EC6C9010-4D88-EFB1-89D2-30B9D1044EA3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4828";
	rename -uid "F4A5DA55-4419-5428-CF01-2F8F23DD3604";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4834";
	rename -uid "57B8F3AE-46F5-7F1B-2625-55911A03ED0D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4840";
	rename -uid "EE877B41-4734-DF58-E8B4-05B2DF62996A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4846";
	rename -uid "0109349A-48D0-A5CF-FB1B-0ABA5C33BCB2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4852";
	rename -uid "473220CB-4D28-6053-228E-9F8E986E63E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4858";
	rename -uid "F6EAF808-4368-3E91-9335-6D8A4404DD91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4864";
	rename -uid "2CB8D60C-46E2-D985-40AE-F1BDCFEFFE6C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4870";
	rename -uid "95FE6A24-4A33-F816-1DF1-239922AC157E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4876";
	rename -uid "A314FB4F-4D2A-015E-88CE-6FB7B40DB14C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4882";
	rename -uid "ABB73F40-428A-4EA7-5042-72BAEE4C2BEA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4888";
	rename -uid "0BA34BA4-4C13-04F8-9101-289C847A0007";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4894";
	rename -uid "DADB80C4-4728-F890-29CA-24B70550B83E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4900";
	rename -uid "F2E39608-4056-FE6A-22E0-78AA0D66EC6B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4906";
	rename -uid "A9BA7E56-4893-F727-1A38-B59DEEBCF013";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4912";
	rename -uid "59C62910-414A-ADE6-961B-248B6FCE9B1A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4918";
	rename -uid "1FA412E5-4FDD-5F39-A457-468D256585E4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4924";
	rename -uid "706B69AC-4DE0-AFEF-CCC7-8BA930416C86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4930";
	rename -uid "2C589727-4185-66B9-EC2E-5CA5BAA92D95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4936";
	rename -uid "5D780F58-439B-F76A-9E25-D8B1B6C0A095";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4942";
	rename -uid "674A29BE-4A25-A293-19B6-C78351BECBB9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4948";
	rename -uid "4B9FE11A-4BC7-FE0D-2F64-31B2C017D208";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4954";
	rename -uid "BB382340-40D0-9CA5-2CDD-AEB28521748F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4960";
	rename -uid "0C1EDE54-482E-C930-CD9A-AA9FBE4635E0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4966";
	rename -uid "DBB8987B-45BD-CFC9-393A-E4ADC7FE9ECB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4972";
	rename -uid "79D8BFEB-4C06-C2BC-9950-849CE781DBD9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4978";
	rename -uid "DD3CED3B-41E9-239E-5A08-BEB7521B478D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4984";
	rename -uid "092185A0-4773-C466-450E-8BB0C9B24E27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4990";
	rename -uid "09BB517A-47A7-ED97-FE7B-E897C0E1E5A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4996";
	rename -uid "0B6182E7-40F0-054B-D235-4BB78714A169";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5002";
	rename -uid "8015F6E9-4C01-87E6-40A1-AE84E75DF523";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5008";
	rename -uid "BB434513-48B5-6DB4-0BE3-5EBC4FD5E3BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5014";
	rename -uid "C81D834B-450F-1597-12D9-62BF5674F253";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5020";
	rename -uid "C3B68AD3-4451-CBC5-831C-949F8AEBC162";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5026";
	rename -uid "D5068888-4F04-114D-3403-03B25D0D6956";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5032";
	rename -uid "C834F6C1-47C0-F4DB-2C9F-D999EB279D19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5038";
	rename -uid "73F24220-4AC6-C873-6D0C-1B951B44006C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5044";
	rename -uid "B030D727-46BD-83E0-4348-CFA931B558F4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5050";
	rename -uid "FBA0CA82-48EA-C94A-DCBF-1BA61722C58E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5056";
	rename -uid "450F5887-45E8-5803-18EB-B191118EDF3C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5062";
	rename -uid "C6FC63C9-47E0-B4E2-0732-A4B3D5DF7B50";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5068";
	rename -uid "294DF457-4B54-BBBA-A49E-ADA30F7B561F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5074";
	rename -uid "83BD7E69-4EAD-DEC2-ED0C-08AE8397FF18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5080";
	rename -uid "8499147D-4BD1-0BC3-E761-739AD1D33BC8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5086";
	rename -uid "6FCDA73D-4163-84FF-AE16-DD9439CAAE6D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5092";
	rename -uid "808F4269-4FE6-9FB7-AA2F-8683B8ADA782";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5098";
	rename -uid "A7D358E0-4179-50EF-EB7C-CF94E84717EC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5104";
	rename -uid "0DE8AF0D-4813-F535-4A8B-BB98C9F59967";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5110";
	rename -uid "564E03C4-4C48-D425-E1C6-2A8B696BAEEC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5116";
	rename -uid "482ABA07-4D7C-9206-F0E5-21BFA19A9A90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5122";
	rename -uid "39EFE351-4F6A-FDC3-9A3E-E3AF48BD479C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5128";
	rename -uid "AE22247C-4281-BC0C-32A1-2AAFEE778072";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5134";
	rename -uid "8A402E80-4F36-25B7-574B-3A8E2591CE75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5140";
	rename -uid "CF23CBB5-43F7-C559-0521-16BD01EF0D8F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5146";
	rename -uid "33378587-4F33-F63B-0136-E9AA8CE84D27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5152";
	rename -uid "2F679B5C-4711-287C-BB75-E5809F20969E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5158";
	rename -uid "C749463F-4DA3-C029-5F0E-A2A316A78D49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5164";
	rename -uid "7314922A-46D4-A744-39DC-F1B8F7017345";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5170";
	rename -uid "7DA97C7B-4615-4267-5E5C-208BA06AF2F1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5176";
	rename -uid "D08B35FD-4B76-B484-F284-DA96B7136A39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5182";
	rename -uid "B174C00B-4AFF-E4A0-D5B7-CB8BFF766AD8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5188";
	rename -uid "D6E3E450-4248-3A03-D0A5-CA9AC80B772D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5194";
	rename -uid "06701B8E-44A5-2C05-7AC5-87BAB7B103E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5200";
	rename -uid "9DC647E3-47A8-CA90-7834-0BA3CAAB5AC4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5206";
	rename -uid "1AFEF382-44F5-E7EB-BADF-608E5C27B327";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5212";
	rename -uid "9AF6A464-48E4-6177-A8EB-3D95E4596904";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5218";
	rename -uid "A20A01E2-4AF1-878A-5A4B-27A64A5B8F40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5224";
	rename -uid "65D9A7FC-49F8-78A7-1ECF-FBA1BFA6D3FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5230";
	rename -uid "1198C15D-4031-5112-BFCB-9AB025CAC8B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5236";
	rename -uid "0FB7FBDE-4B3E-33CF-4D50-2AAEC798EB83";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5242";
	rename -uid "DFF1C109-4C14-B218-6649-94B7ECDA0127";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5248";
	rename -uid "5686A00D-438D-D1B2-8299-0CA5C56054E8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5254";
	rename -uid "DD5BA687-4230-CEF6-E503-B2B5B1193EA5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5260";
	rename -uid "72A91388-4B89-348B-F63A-95B5B3C1C027";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5266";
	rename -uid "BCB7BCFB-4C98-934D-1850-A0A0AA99DFF0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5272";
	rename -uid "0EB2D0B4-4B59-E416-C2E0-139964401E63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5278";
	rename -uid "C8B00D4D-48D0-8128-6B52-21842719C44C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5284";
	rename -uid "B08E1AD9-4192-4FC5-8B92-2E915DF15864";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5290";
	rename -uid "6B832EE4-4E82-DA51-F4B5-7AAB4ABE1163";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5296";
	rename -uid "AB7BF463-41EF-17FF-6B8F-EABC840812BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5302";
	rename -uid "63913B5E-4716-030F-1E9D-27BF46FC8227";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5308";
	rename -uid "71A5813A-44D2-6EFA-918D-50B883B44BA8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5314";
	rename -uid "969410A5-4180-F8BF-9573-C09FFC63F0EB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5320";
	rename -uid "C856CFC7-4D5A-F043-9D19-088353DDED46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5326";
	rename -uid "D796F7C0-4C05-64BE-27A3-DE8798D0D18C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5332";
	rename -uid "D9185FCB-4EAE-A418-0977-53B774EF916A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5338";
	rename -uid "CAB9C70A-4BF1-4352-7A06-668343BE7155";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5344";
	rename -uid "6ABF4C17-499C-595F-4CB0-0A9F88D6ED42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5350";
	rename -uid "6F9B4849-4258-AEFA-DFD2-16ACEB0721B5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5356";
	rename -uid "31134CE1-4EC2-7E7B-AE7B-349EE8CE3200";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5362";
	rename -uid "5F0532C2-40B0-D938-BF41-BF859CA3136E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5368";
	rename -uid "FA388E5E-4A2E-B6C1-0890-58AEA2A9020A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5374";
	rename -uid "0FE7A95E-47AB-83DC-3FFF-2299FEE1046B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5380";
	rename -uid "133022A0-467F-A5C5-180E-9D91FE320A51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5386";
	rename -uid "A49DB996-443D-6764-93CA-DF93BB7EBBD7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5392";
	rename -uid "0A620BA9-473D-B9A8-74A0-8180F43AA4BD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5398";
	rename -uid "D39915C3-4D41-AAB2-A7EF-B390D0BB1630";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5404";
	rename -uid "5410A836-4B45-61BC-E4BE-D9A0B3F5F644";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5410";
	rename -uid "03DD09D1-4909-A0A1-767B-56B5FC359989";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5416";
	rename -uid "E5475AFE-4E20-216A-B479-EBBDE042033D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5422";
	rename -uid "0451EF95-4C1A-A6E4-F41D-E9AFC5865D8D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5428";
	rename -uid "4202247B-4766-F6EF-19F5-60B32CB3A04C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5434";
	rename -uid "11C0C3FC-46CD-9B79-FB99-04B09CE13298";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5440";
	rename -uid "94A699FB-46C7-9255-CD8B-17913AE4F814";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5446";
	rename -uid "0273AE36-456D-0D46-72F2-408A17FBE84D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5452";
	rename -uid "B104E5A9-4389-C51E-5851-408B340DCFAB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5458";
	rename -uid "89B55B0F-48D4-3A13-5517-619AC983BCF4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5464";
	rename -uid "05718B06-4578-4458-362A-6F83C3642406";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5470";
	rename -uid "337D93CF-4A88-53EF-BC09-EA945F22B927";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5476";
	rename -uid "DE0CC669-4634-48FA-5598-15ADA0B726A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5482";
	rename -uid "E0D3B232-4F7F-BF15-1081-AA887FA340E6";
	setAttr ".ihi" 0;
createNode lambert -n "Weather_MAT8";
	rename -uid "02FD887C-4172-9552-9D11-89BD989584CE";
createNode shadingEngine -n "Weather_SG8";
	rename -uid "8C00B912-49F9-534A-4D38-DF98C39BC5F2";
	addAttr -s false -ci true -sn "weatherTexture" -ln "weatherTexture" -at "message";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo104";
	rename -uid "1CABAAF4-4C1D-B277-F9C7-2C8082E7943F";
createNode file -n "Weather_PNG8";
	rename -uid "E272D3FE-4C65-5154-AAC1-8D9BC7926462";
	setAttr ".ftn" -type "string" "C:/Users/free/Downloads/Atmosphere/Autumn_Leaf.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "625C2625-4B88-D9F5-71BF-57BDEB1649E5";
createNode standardSurface -n "WeatherSurface86";
	rename -uid "B13DCA57-4753-F4CC-5EEF-E2830966F3BE";
	setAttr ".bc" -type "float3" 0.55000001 0.24000001 0.045000024 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.55000001 0.24000001 0.045000024 ;
createNode shadingEngine -n "WeatherSurfaceSG86";
	rename -uid "F25BFB20-4B33-150C-9D60-C79469C2C2EF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo105";
	rename -uid "BA98A784-4916-C7AC-B92C-0FA01AFC5CF8";
createNode groupId -n "groupId5488";
	rename -uid "F5CA0E08-49D6-5486-197C-08AA9B00AA7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5494";
	rename -uid "DDC96FB8-42ED-F82E-8974-69829070D6C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5500";
	rename -uid "8DA462AC-4E24-3967-3F32-E391A5731190";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5506";
	rename -uid "5EF6D0C6-4850-78D8-E8CD-5792E3F4D015";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5512";
	rename -uid "26ACF77E-47EE-E76A-7ADA-FF966FF364DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5518";
	rename -uid "DA7B9CFB-402C-FEF1-D121-F99F72E14C91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5524";
	rename -uid "6AA7164E-4AC8-C70C-0630-5FBD401F1D5F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5530";
	rename -uid "AF5BA18D-4CF3-5228-EA0D-F0BA97551C2F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5536";
	rename -uid "F5872930-4908-E0B6-7CDE-FBB8839CB83A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5542";
	rename -uid "55B9A067-45D2-9EB5-2367-13AF2BA0ADE7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5548";
	rename -uid "8F1B2436-4079-C598-65BF-CB8CC1F422AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5554";
	rename -uid "71B8C90D-4499-5563-4E73-64A729C34F0F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5560";
	rename -uid "457B8D9A-4BBE-BDF0-1FBE-38A98D25DD15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5566";
	rename -uid "B710E1CE-4BA3-7D7F-A468-1EAA615BC00B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5572";
	rename -uid "B2DD1800-4995-872D-8971-A6A295A7C7DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5578";
	rename -uid "D622F177-4985-BBB7-1CB6-FA9C46BFEE03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5584";
	rename -uid "81C1619C-4661-01F2-3E96-408E58EE8210";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5590";
	rename -uid "29F17A64-4E8A-9500-8252-BCA9BF8D748E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5596";
	rename -uid "75C55E72-4782-32E9-7CD0-DEB3666EAF97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5602";
	rename -uid "B5449746-4308-4575-8DC6-7A956DED6205";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5608";
	rename -uid "F7839485-4E59-6E1C-F881-D4AFEE6AA59E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5614";
	rename -uid "C8DC7E41-41AA-49F3-2DA7-249FD83F7C6B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5620";
	rename -uid "2E718E3D-4A0C-BA17-6A36-C9BF74940CF6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5626";
	rename -uid "411ED5A1-4D6E-596A-04B9-889D7AD4BA53";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5632";
	rename -uid "69BB81E7-4864-93CD-5DE3-7F83745DBBCC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5638";
	rename -uid "BD21056A-4A53-75F7-D01C-56B7DEF610B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5644";
	rename -uid "DF21571B-4787-4752-CCA9-AA97C11D423C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5650";
	rename -uid "24E22DAD-45E7-6E96-EC37-DA844B747413";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5656";
	rename -uid "DA3A3A73-4860-3844-F44A-18AF878AB38F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5662";
	rename -uid "4002E98D-41E1-A498-596B-86BF21A6C550";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5668";
	rename -uid "1F98B0AC-41D5-3FAE-1EC5-CA811D732C3E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5674";
	rename -uid "71474D11-48E6-338F-1A67-558FDABEE250";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5680";
	rename -uid "89E55E9B-489B-38EA-14CB-E4B9F56BFAF3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5686";
	rename -uid "921A8E40-48AC-3433-1B55-5AA9EE5732A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5692";
	rename -uid "18EC0990-45F9-22A7-3539-E4BFD3904A7E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5698";
	rename -uid "8889C895-4060-B2FA-98DD-E282267438B8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5704";
	rename -uid "91F85A69-4BBA-1EDB-B6EA-1B9ACC0941F0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5710";
	rename -uid "2440A208-48ED-B4E9-1DB2-CA95251DF79A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5716";
	rename -uid "C29C5C27-4870-4F96-6021-D1AA18C78910";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5722";
	rename -uid "B9EF8388-4DEC-03D9-BC2C-AFA7F94EAA02";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5728";
	rename -uid "FA7C57DD-4623-C3C8-6F11-0E8257A0D67F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5734";
	rename -uid "B86EB02F-4323-E0A9-5B60-2B8E78E752EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5740";
	rename -uid "683A8384-4432-31F0-AB85-2BABD2517B44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5746";
	rename -uid "A999B443-4A35-BB5E-D851-818F0EE49980";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5752";
	rename -uid "5C6B85EC-411B-3F5B-8C07-27A847F614A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5758";
	rename -uid "D3226EA7-447A-A22B-4111-93BAA0068F8B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5764";
	rename -uid "FBF20B57-4DD3-3576-7575-DAAA93F5DCB7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5770";
	rename -uid "C3DD4801-4875-D262-B782-AD93A0507138";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5776";
	rename -uid "8A450BEF-48D1-1ADB-DE69-528FC75E5433";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5782";
	rename -uid "3D96582D-40AB-FBB1-579A-29B2851FEED7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5788";
	rename -uid "25E23B1A-4B58-435C-F20A-A9B2ADF57223";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5794";
	rename -uid "75DB5939-4306-6FC2-8E0F-FCA6E7511D85";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5800";
	rename -uid "19810ABC-40DB-8DD4-AD3B-76A389CA972C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5806";
	rename -uid "BA9B766F-4CFE-8092-4848-C485AA39E991";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5812";
	rename -uid "9906A418-44E9-8056-FFBE-37B0810DD208";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5818";
	rename -uid "8ED91AD4-4B83-B6F1-4D70-C3A400AA15A0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5824";
	rename -uid "998A9EFB-4822-1890-DCAF-12BDC082AFDA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5830";
	rename -uid "3E67ED47-4E7E-A40D-43B3-1D9ED87824EF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5836";
	rename -uid "27A645F6-4CCD-A70D-B76D-6FB7BACC0A92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5842";
	rename -uid "23B2BB08-4E75-8F2C-7801-B78D4062C51C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5848";
	rename -uid "F2873A8C-4F44-A599-04C6-12A22B8595B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5854";
	rename -uid "55661FED-45D0-F154-6D4F-3CBB813387B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5860";
	rename -uid "42663865-48DC-E79B-6AD7-C4AD35E3223F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5866";
	rename -uid "124F887D-466C-AA67-9C7B-6996640D74D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5872";
	rename -uid "246BDF4F-4943-A1E2-AAED-00BB861056BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5878";
	rename -uid "84195BE4-4B39-D25A-46E2-E6B1EA1B69A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5884";
	rename -uid "2751D632-4E47-735D-FCE9-F38263791F85";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5890";
	rename -uid "FDE44E49-4E07-4E38-BC8E-4194F81F107B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5896";
	rename -uid "38845E32-4FA0-E819-0F20-4888C93A078B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5902";
	rename -uid "46779D96-4E16-56A1-60EB-A6B1CBE199EC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5908";
	rename -uid "EE54C73B-4BC9-45B8-E8E3-1A99E2D03CB7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5914";
	rename -uid "74E6634A-4CFE-57CD-080E-5290CB66306A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5920";
	rename -uid "6B5533B0-4B6D-AA4F-1E78-039583BAE6FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5926";
	rename -uid "9D7C0357-4250-0BFA-B92B-6B8300569DDB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5932";
	rename -uid "0F88E462-4A92-5751-D7B5-DC9D3CE68EBB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5938";
	rename -uid "AA38EBDE-4C19-F3DD-49E7-B5ABEEF0DEF5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5944";
	rename -uid "144C0E72-472A-B861-3E52-39B4D96F0617";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5950";
	rename -uid "9C334665-4C94-91E8-0D3E-7A926DE3EF52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5956";
	rename -uid "410F3313-4D78-296A-D116-628BA3AE0455";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5962";
	rename -uid "376B6B56-420F-A3E6-3A92-BAAB09908781";
	setAttr ".ihi" 0;
createNode lambert -n "Weather_MAT9";
	rename -uid "0B3EC22F-4AE4-FB5B-372F-AB99C690C869";
createNode shadingEngine -n "Weather_SG9";
	rename -uid "E7D67C68-4686-37E7-37CE-39A9FFD2407C";
	addAttr -s false -ci true -sn "weatherTexture" -ln "weatherTexture" -at "message";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo106";
	rename -uid "DCD60B43-46BB-CCBE-59E3-9283F240F822";
createNode file -n "Weather_PNG9";
	rename -uid "47B9EB9E-4F24-E0F1-F6D4-2C8D47C75B94";
	setAttr ".ftn" -type "string" "C:/Users/free/Downloads/Atmosphere/Autumn_Leaf.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "D464EFBB-4CE7-EBE4-107A-7FA22CAEDC97";
createNode standardSurface -n "WeatherSurface87";
	rename -uid "35E2030E-4C63-8A38-47DE-E28DAD09897C";
	setAttr ".bc" -type "float3" 0.55000001 0.24000001 0.045000024 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.55000001 0.24000001 0.045000024 ;
createNode shadingEngine -n "WeatherSurfaceSG87";
	rename -uid "7B4A4EBF-464B-4D90-168E-E38A67D6126C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo107";
	rename -uid "6651AF96-46EE-9A69-DF64-0BB23129A458";
createNode groupId -n "groupId5968";
	rename -uid "2610BD26-4F9C-9162-6758-E4A9E548E8CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5974";
	rename -uid "D83EC6CE-4F3A-24E0-FDEB-93AF91CA380F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5980";
	rename -uid "B5BB5761-47E8-3F1A-84FB-0D840DABDCB2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5986";
	rename -uid "16F5355B-4AB2-C021-FF97-EE88242F6546";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5992";
	rename -uid "73E230D7-4F83-872C-0810-78B70B861719";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5998";
	rename -uid "F7568FE3-4912-6176-8669-52B967B8F2C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6004";
	rename -uid "0FC33C9E-4213-7E47-1BD4-6BABDCBDF0C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6010";
	rename -uid "63B30D8A-4B89-C525-828C-E8A190813FD6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6016";
	rename -uid "B66C36E7-4AC9-ECE2-DF69-2FA9AC632A90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6022";
	rename -uid "117B9516-4BDC-435B-62A2-8E92D594105A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6028";
	rename -uid "56A1E6A3-41D6-1CC1-17D0-0984D8A692C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6034";
	rename -uid "FB1A94AC-49C6-9198-7ECE-BA84E72E5843";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6040";
	rename -uid "3E548DCF-4E73-B25A-76F9-269FF3B5848B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6046";
	rename -uid "64CA8AB4-4EF6-01AE-862B-E9BE740A6F34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6052";
	rename -uid "6DB7ECCD-449F-AF74-4412-419685D04DFC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6058";
	rename -uid "DC440A7F-4566-67B2-3B6F-ED94A2EA1E3C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6064";
	rename -uid "F953A15E-4A12-5901-460B-0197C8D691C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6070";
	rename -uid "F255A904-40C3-A44E-F0E9-A7BC385597FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6076";
	rename -uid "492BBF81-47E9-584E-6DCA-88AC83E3A3C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6082";
	rename -uid "790CFD90-47EF-4A35-D99D-F6A1E31676C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6088";
	rename -uid "0DDAF843-449E-9D76-956D-D4B2C7E96712";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6094";
	rename -uid "9DAC35F6-45EA-C759-FEA3-15821772D6F1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6100";
	rename -uid "A6508D3E-4BE3-9EA1-93D5-0389A8CF3A91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6106";
	rename -uid "884F4DA2-4823-9650-D4E6-219706AE750B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6112";
	rename -uid "8D4B54E1-4470-A79D-6BB0-B6A74936D21C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6118";
	rename -uid "E802D899-4BD0-1B01-F03F-9BAED2110B23";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6124";
	rename -uid "75BA4D7C-4D67-D0F6-C297-11803A8A1080";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6130";
	rename -uid "E6539186-4345-FE56-E0CE-13B0F55C1BEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6136";
	rename -uid "76559E15-432B-1A92-6739-B8A2AFAE0144";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6142";
	rename -uid "22915C58-4883-8B2F-BA55-ACB891EA339A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6148";
	rename -uid "6D97E186-4BDD-6500-7694-11BA4DBAF8E6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6154";
	rename -uid "F4BB68C8-4837-D7D2-3DB7-E38B20815D47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6160";
	rename -uid "4BE46543-45D7-4C1D-BA09-8F9507C8F74E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6166";
	rename -uid "1CD721A1-4C9A-7AEB-8C90-AB8DB80E8504";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6172";
	rename -uid "69F4C7D9-44FB-7ECB-1E4F-1DB6A81E3784";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6178";
	rename -uid "E2724150-4A01-62A2-B8D0-1FBF97F659A4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6184";
	rename -uid "0F995D56-42DA-B155-77A2-9F98191C9E22";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6190";
	rename -uid "7D135000-4476-AC14-928F-19995EFE4BF0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6196";
	rename -uid "0D75E238-495D-27D6-B1E0-50B240C8D520";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6202";
	rename -uid "B46FE623-41C1-9A53-DC6D-31A75FFB8591";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6208";
	rename -uid "8BCF844E-443B-4E0F-4D86-F3B03E55ADE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6214";
	rename -uid "1886E593-4E26-BC7E-2C0B-90BCB04A2B68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6220";
	rename -uid "D99F600F-4733-E31D-4E64-0281594726E0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6226";
	rename -uid "78E1DE1D-401E-D4C7-4727-F0AB133E638E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6232";
	rename -uid "A70CA8B5-48F3-0EB7-BBB6-D2A1D004B690";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6238";
	rename -uid "422C32C3-4223-77F8-96BE-3782AEB23D73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6244";
	rename -uid "E9BE0B93-4613-D491-271B-DFA984448F40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6250";
	rename -uid "9C347A6A-4EC8-CED2-4694-F4BD8FE134C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6256";
	rename -uid "069FBBC0-48BA-3264-D0AF-B39CD5E26E5A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6262";
	rename -uid "87C982C2-403C-B669-2716-C48BE16F68DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6268";
	rename -uid "387801C7-42D9-F137-26D4-13AFFC968D79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6274";
	rename -uid "4A3BB712-44F2-FF63-CCFB-1DBC65C52140";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6280";
	rename -uid "6C87523A-4328-F975-4F94-1A9C1E550793";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6286";
	rename -uid "96BF29A7-48E5-2DF6-0A6E-A2BB873C6664";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6292";
	rename -uid "0CB29516-4581-4003-A831-81B21BE6AE57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6298";
	rename -uid "3FB47150-4D9F-A120-6FE4-C28771BC328C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6304";
	rename -uid "963CE46B-4689-10A1-D43B-14806CA97836";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6310";
	rename -uid "E72780A0-4146-84A8-FB1D-BCA96D43BBE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6316";
	rename -uid "07910834-45FF-5B56-AE3D-B7ADFD9C1A59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6322";
	rename -uid "A88387F1-4142-D23D-B3E4-19AC36982022";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6328";
	rename -uid "66ADBB1E-4D55-E473-2906-C081C5A1D365";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6334";
	rename -uid "619F4B66-4E80-9B0F-AFDB-1EA940D1E926";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6340";
	rename -uid "9B5EFDD9-4DC7-32FE-C07E-39909873A703";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6346";
	rename -uid "F4968D6F-46AB-86C6-E312-20AD3ACE7534";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6352";
	rename -uid "85C3CF97-4490-E3ED-0DA8-139118A8D543";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6358";
	rename -uid "7897211D-44E1-D0C0-F326-66B8F0EDE89A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6364";
	rename -uid "696D59DA-4BCA-82AC-7440-B4952B13B9F0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6370";
	rename -uid "DC923B2C-451F-E83E-F688-0797716B204D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6376";
	rename -uid "D9408023-4FFF-C2C4-C70B-0FBBFF6CD283";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6382";
	rename -uid "1D207F09-44D3-EEF1-492C-71927AAA87CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6388";
	rename -uid "2D635C10-428C-53FD-3D15-68B046271DF5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6394";
	rename -uid "DF90F82A-4BD6-3E82-FE9D-D28AA97CC36E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6400";
	rename -uid "C81F28A9-43E5-9DB0-F16B-7B98C88C684F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6406";
	rename -uid "A3A1CB48-46C3-DD07-4410-A6879C32CD10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6412";
	rename -uid "6D7FE76A-4736-9C8C-6D3A-5E992AD04E46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6418";
	rename -uid "D768D98F-4A22-D2E2-F22D-BA9F699E5ACC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6424";
	rename -uid "9B5141A8-41DB-6FDC-34D5-F7AC9973C0C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6430";
	rename -uid "BF96273D-4647-1C40-1D81-B5913A138E21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6436";
	rename -uid "B1131330-447D-DD45-BDC9-A09F928D76D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6442";
	rename -uid "9DB8B6DD-4E65-A4F7-EB3D-F5B8C77829BD";
	setAttr ".ihi" 0;
createNode standardSurface -n "WeatherSurface88";
	rename -uid "9E8113D1-4A89-9C3B-AA03-ADAEA5BB14A7";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG88";
	rename -uid "E451406C-4704-BEDA-F73A-87B8C7B6C4F0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo108";
	rename -uid "8389BE9D-4567-5631-EDEF-7F8F4C7912C7";
createNode standardSurface -n "WeatherSurface89";
	rename -uid "E8F94D92-4174-44BA-1FD2-9EBAF174564A";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG89";
	rename -uid "5AF0E65C-4DE0-12D8-A1B9-1EBB38779F60";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo109";
	rename -uid "A6F2B999-4A01-E2B2-C5E2-C4AC0CDA40FB";
createNode standardSurface -n "WeatherSurface90";
	rename -uid "764BD2BC-48A5-F1DF-E2B5-939DE4159C12";
	setAttr ".bc" -type "float3" 0.90249997 0.93099999 0.94999999 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.90249997 0.93099999 0.94999999 ;
createNode shadingEngine -n "WeatherSurfaceSG90";
	rename -uid "54C30649-4988-580E-17A5-FC8B49A47825";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo110";
	rename -uid "3C5BCCF9-4409-B956-E767-65B4C200432B";
createNode standardSurface -n "WeatherSurface91";
	rename -uid "7FB7CEB2-47CD-25B6-C499-F3839DAA4959";
	setAttr ".bc" -type "float3" 0.93432498 0.96382999 0.9835 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.93432498 0.96382999 0.9835 ;
createNode shadingEngine -n "WeatherSurfaceSG91";
	rename -uid "35FD50F6-400A-8935-5093-0FBEA6AD4EFB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo111";
	rename -uid "BBC8CECA-4470-92FD-BD38-D6A49BBA27B0";
createNode standardSurface -n "WeatherSurface92";
	rename -uid "AA3126F2-4932-7AC0-24D1-14885BB467FD";
	setAttr ".bc" -type "float3" 0.965675 0.99617004 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.965675 0.99617004 1 ;
createNode shadingEngine -n "WeatherSurfaceSG92";
	rename -uid "95824348-40CA-4E80-EDA3-26912B0C28A6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo112";
	rename -uid "EDC737F7-461E-163C-E1E3-C7BD6E776A99";
createNode standardSurface -n "WeatherSurface93";
	rename -uid "4A9D7FF2-4050-3A6C-9136-5699D019FB49";
	setAttr ".bc" -type "float3" 0.9975 1 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.9975 1 1 ;
createNode shadingEngine -n "WeatherSurfaceSG93";
	rename -uid "3D785A4F-4A8B-E20A-590C-75A12990C967";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo113";
	rename -uid "D245DA74-48D2-7E35-EFD5-A1980770AC51";
createNode lambert -n "Weather_MAT10";
	rename -uid "0E81125C-40CF-8B08-8EC1-CBBA7AD2C7FB";
createNode shadingEngine -n "Weather_SG10";
	rename -uid "E56E620A-438F-385B-A4A3-5787A1164421";
	addAttr -s false -ci true -sn "weatherTexture" -ln "weatherTexture" -at "message";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo114";
	rename -uid "80CF3FAA-4493-1B2E-CADF-05997B553622";
createNode file -n "Weather_PNG10";
	rename -uid "5FA4D462-4188-5642-B541-E29953AE98F7";
	setAttr ".ftn" -type "string" "C:/Users/free/Downloads/Atmosphere/Snow.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "D0523177-4DA5-C859-F28F-A5A6CF9A4CD6";
createNode standardSurface -n "WeatherSurface94";
	rename -uid "BA16502A-47B7-CF5E-4738-F1872EBB5061";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG94";
	rename -uid "AED9CBD5-40F3-85F7-5AD7-22AFD6B2116F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo115";
	rename -uid "700F7EC3-451D-FB59-9332-61BB3409B547";
createNode groupId -n "groupId6448";
	rename -uid "1200829C-489A-51CC-D641-86A1D01B8D6A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6454";
	rename -uid "9CF5E7CF-4447-3FA5-E5DD-F5B693C791AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6460";
	rename -uid "33782B9B-4DE6-3F94-FB94-23852D49BDE5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6466";
	rename -uid "2039B0CD-4D39-E760-2D41-7BB0F538CA82";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6472";
	rename -uid "153B4FAC-4793-5263-69F1-44B14E8602A7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6478";
	rename -uid "939C5CDE-4403-F80C-3EE6-9A86638EF6D9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6484";
	rename -uid "502C4BDB-4535-047B-6081-98A9F78995FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6490";
	rename -uid "41D09AB7-489E-B41C-F8A9-999FB3F9CE30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6496";
	rename -uid "71134FAE-49A5-E1C4-ADE7-B2B9B235439F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6502";
	rename -uid "0F6B20CD-43AA-B070-38FB-2995ECEAE111";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6508";
	rename -uid "2C6ACFF5-4496-3D9B-131F-5480BD3CC01D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6514";
	rename -uid "DC849DBC-4133-5FF7-4B18-B3A2B8890BF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6520";
	rename -uid "7638F966-4B1C-9E1C-CBD3-F0BFFB3A77C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6526";
	rename -uid "211210B4-4356-8F48-63DF-55863C15CF5C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6532";
	rename -uid "1F22B8F7-4D64-1487-9030-78AAFE760F7A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6538";
	rename -uid "284CDB0C-48C6-A0AD-802D-51A5AEB18D1A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6544";
	rename -uid "7B20DEC9-484A-D146-1403-20BFACBB2BE8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6550";
	rename -uid "ED384259-444E-5877-AF32-40A0C4A58346";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6556";
	rename -uid "3EC9F438-427D-2775-B16A-4EA13DF6F786";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6562";
	rename -uid "0393190C-4BE1-686C-89C5-058F0604BB3B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6568";
	rename -uid "DBDDD2A4-4C3D-CF9D-2713-238ED454E73E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6574";
	rename -uid "1DE4A00F-4DAC-6BD8-6881-9093531BF62F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6580";
	rename -uid "BF339D30-440E-41D4-3C89-8CAFD70034F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6586";
	rename -uid "6E8EB5C0-4DC1-3709-639B-4FAD4667722D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6592";
	rename -uid "11E7EC8E-48C4-340C-E520-769B15CBCA46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6598";
	rename -uid "DE9DBF7C-47DB-CD94-419E-64A470FEC54B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6604";
	rename -uid "85709B5C-44E0-E6C2-12F1-A7BF03BAC6DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6610";
	rename -uid "F48C67CA-4F03-B141-74BA-AFADA2B2FD19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6616";
	rename -uid "5250F87C-4B00-E47D-5B62-598BC5113A34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6622";
	rename -uid "64625E84-4ABD-AC4A-AADF-E9B1F884EBD1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6628";
	rename -uid "6E771A7A-4A3F-B715-A262-DCB74C44DD43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6634";
	rename -uid "190D577E-429A-1B4B-F7D5-1DA6F7704974";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6640";
	rename -uid "22094F53-49DA-0E74-AD64-C7BEACCC57F7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6646";
	rename -uid "C91BE5AE-4FDE-CB87-3282-4EA8F632D45C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6652";
	rename -uid "FD322197-447D-3C59-7B7B-14B5981C295C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6658";
	rename -uid "BDCD45F4-4DF2-4086-C8B6-5DBAC91D68F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6664";
	rename -uid "A135FCC9-422D-0707-ACD8-0982F696B16D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6670";
	rename -uid "472BDCA4-4C32-D226-643C-01AEF55332B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6676";
	rename -uid "A95D3AE3-434A-FF68-2F01-19A105B8C5A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6682";
	rename -uid "82B78183-4A02-5EAA-2B85-949E349FDF05";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6688";
	rename -uid "DF57F4B3-4736-E783-D91D-A4A5B73E6ACC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6694";
	rename -uid "70AFFEE7-409A-4FA0-D91D-3BA108795AFE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6700";
	rename -uid "68B9E1C7-4B02-5B18-0388-0CAFD528934B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6706";
	rename -uid "D403C3CE-4154-184F-A716-F68735F8BA4B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6712";
	rename -uid "A64D5E7B-4D81-8135-8661-EE86FAADF28C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6718";
	rename -uid "D8427E1E-44F1-0180-8BD2-F49F63DD32FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6724";
	rename -uid "799CCCA9-45D6-28B0-A41D-3E87EF8817EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6730";
	rename -uid "4042049B-4F6C-A514-B5C8-158B745E5CD8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6736";
	rename -uid "5D854D5F-43E8-5A60-EA25-8A96714100F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6742";
	rename -uid "D2FD0683-4210-4C82-B121-C790C1ECF758";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6748";
	rename -uid "F55B2BD2-414C-2ACA-2B16-8D8372BC82BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6754";
	rename -uid "75126C11-49B3-868A-4F84-FB8A2255484B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6760";
	rename -uid "9DB45910-4D11-6A71-87E0-8B91D9EB28CB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6766";
	rename -uid "BC4DB888-42E2-CBB6-0CFE-43885EA3D00E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6772";
	rename -uid "027BABBF-414F-5CCA-0075-D6BE31C0C739";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6778";
	rename -uid "2AA195CD-4EB8-E2F9-9BF0-43BAD29300A5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6784";
	rename -uid "FC7EBF51-44AC-16A9-CDEA-C385F3EA7255";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6790";
	rename -uid "BA15B413-40DB-9AF8-7A26-BEB980533F72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6796";
	rename -uid "CF7551C3-4B7A-F0A0-A523-DFA139979A58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6802";
	rename -uid "04D64324-48A0-C91A-54A7-F693C0C15383";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6808";
	rename -uid "78E41106-41BC-EE32-EDF5-ADA2F6426EFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6814";
	rename -uid "28EF9572-451D-96E4-AC18-679F2669B206";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6820";
	rename -uid "64E1E2C7-49BC-5B73-F882-DF88C03F9181";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6826";
	rename -uid "A4F37719-4939-DD1F-17D2-609977D46633";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6832";
	rename -uid "ECF09BBC-4E62-6C4E-CFDC-C1A78C0CE7BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6838";
	rename -uid "30AE80CD-4E30-FEF1-FBB1-60BEA485E129";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6844";
	rename -uid "32EC45C3-479B-B5E6-2B23-63AC700A736F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6850";
	rename -uid "5F97D124-4213-DF41-CC99-EBB02C3FBB66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6856";
	rename -uid "383FBA73-4BCA-1776-0747-34928AA98A70";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6862";
	rename -uid "6C73648F-4CAA-7021-FFC4-0DA5ABB1A254";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6868";
	rename -uid "4751B155-4E85-B63E-B292-479144D5BB20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6874";
	rename -uid "5E13310E-4F84-E89D-74D7-E9B79CBDB1B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6880";
	rename -uid "8A7EC0E2-4A95-C87B-69C5-6DAD471F9903";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6886";
	rename -uid "8DD7CF17-4A3E-3895-3C3A-9DB03DEE9EC5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6892";
	rename -uid "EC39691B-47D5-A463-338F-2F973F6E430B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6898";
	rename -uid "55E096E0-4DEE-1C28-AB78-CC8A59B961BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6904";
	rename -uid "2CF3F49A-4A85-5EA2-1127-928DF31C8EFB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6910";
	rename -uid "BC98012B-4207-4A90-FF41-09A36B9B8CFB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6916";
	rename -uid "69A57F51-4022-5ADC-4D1E-0193935C99F8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6922";
	rename -uid "11AB80B5-4068-3FB4-2E57-5686F2D5B10F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6928";
	rename -uid "B45260F5-452B-D283-36EE-B49BCCAE0994";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6934";
	rename -uid "89882A03-4A1C-3A50-E874-868DE4C8CF6F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6940";
	rename -uid "E7F3A4B3-49FE-82CC-11E3-50ACAE76B503";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6946";
	rename -uid "F86839EE-4C41-2A96-5146-0694C5146A68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6952";
	rename -uid "35A7C0B1-4A86-358C-BDEB-038A99734B48";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6958";
	rename -uid "C9136B9E-4204-A041-B0A6-548AAD220E28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6964";
	rename -uid "D315B215-4BC1-D980-042B-6FA728427E71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6970";
	rename -uid "5566E15F-4522-FE02-E3CA-2DB58C0667FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6976";
	rename -uid "B95BA4F9-47AC-139E-CF41-CB86ECF04E72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6982";
	rename -uid "741B9CF9-4BD1-D7A0-1457-99BD327A57FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6988";
	rename -uid "D5ECC2B3-47E8-965D-3A1F-FC82A46EFAB7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6994";
	rename -uid "5091E9C2-4D90-7694-0305-0CBFA38D14C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7000";
	rename -uid "C27F50AD-41C9-A585-1095-4EB19EFF7A92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7006";
	rename -uid "1E8B260D-454F-34E4-4673-4AB120C41BC9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7012";
	rename -uid "69CD39CD-41BF-618E-C2CA-588BD1537C53";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7018";
	rename -uid "A19E660F-4FC1-3A92-3EFA-D1B2FD901B13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7024";
	rename -uid "BBBD4958-4F55-2C38-9647-D49ADDE9C8FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7030";
	rename -uid "A37CFECF-49DE-7E85-E82C-E0A75CECFE24";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7036";
	rename -uid "22B4D3E4-4C02-DC9F-86FE-10B230E4FF43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7042";
	rename -uid "7C819199-4619-B295-2A2D-30899B9EBCDB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7048";
	rename -uid "B56A42B5-45D4-EE2D-CE46-B49C577AFCD3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7054";
	rename -uid "F7A9CD5D-4B75-D8D3-58D5-65B3FD3D6AF0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7060";
	rename -uid "41A046F7-4B8E-042C-C959-878C24A16446";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7066";
	rename -uid "E20C0200-42B4-0E7F-4048-828C1B634B54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7072";
	rename -uid "0235FD00-4988-15CF-C90B-079DEF2920B8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7078";
	rename -uid "AC0FC3AB-4931-FCCB-A78D-B5827313AD30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7084";
	rename -uid "221FA53F-455E-AEEB-C5E5-FE87C9ECD802";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7090";
	rename -uid "749E7BB3-4A39-CEF0-0B61-B0BCF5960667";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7096";
	rename -uid "B7476A29-4AD6-A496-EF41-E9A0D2235D93";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7102";
	rename -uid "DA65ACCB-4F5C-838E-0A37-09851F7D9401";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7108";
	rename -uid "2F6CE036-47E4-293A-3253-23A5979747D6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7114";
	rename -uid "C1D8F885-4E38-2DEE-6FA2-DE82607E8EFF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7120";
	rename -uid "46DC2502-418B-BF4E-90C1-148FD87EB0AA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7126";
	rename -uid "30F71234-4ED7-5F5D-B924-96B6CFC50800";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7132";
	rename -uid "5252F37B-4CB5-B002-CA08-FE805ECB863E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7138";
	rename -uid "BD31B0ED-4284-EFD4-078F-39B379E6C0EC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7144";
	rename -uid "A98F88FE-4FD8-8A03-F5EE-2EAC7BDD7612";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7150";
	rename -uid "94676051-4C0D-E3EA-5AFC-8A8D095338CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7156";
	rename -uid "49E136DB-438E-612F-083B-6580BD9B6382";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7162";
	rename -uid "A7C6D37C-4986-46E9-D87F-6491806BB444";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7168";
	rename -uid "4ABE1826-4088-AB20-37D2-BA91D405FC35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7174";
	rename -uid "F66ADFCE-4F27-2BCF-7C54-6FAFA3220A9E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7180";
	rename -uid "34F2AA04-4268-EFB8-3F5F-908994455CC3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7186";
	rename -uid "6F41D792-421A-0147-3CB1-278AAE668495";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7192";
	rename -uid "2434DE05-47F2-6928-1CF7-339A52FEA8DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7198";
	rename -uid "AF7A6728-41AD-B982-9B11-00BE7CAF7CA7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7204";
	rename -uid "4D826BB3-4B53-DB6C-1F6F-53A33B70D0EF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7210";
	rename -uid "5DE58DE2-4C96-9D20-B7E9-9ABC740ABB03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7216";
	rename -uid "BC9E7B0A-4796-10FB-942E-D1A692751DA5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7222";
	rename -uid "59B9AA7F-4704-750A-7AE4-498739BF91B7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7228";
	rename -uid "D5918021-4284-9402-AC25-F6AADD38D966";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7234";
	rename -uid "0E003E4C-4DCD-094F-03F3-1B978CC89B55";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7240";
	rename -uid "14A42AEF-45B8-7AD5-72C1-97BA9802FEC5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7246";
	rename -uid "0C905039-4100-4F84-3909-828CDF6F18AA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7252";
	rename -uid "7FB5D123-4ACF-7A0B-1086-BDB0F104CD93";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7258";
	rename -uid "1C738AAE-4CCC-4047-D220-2E82BFBF3649";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7264";
	rename -uid "95677B9F-4CBE-887A-1E94-FA8A5A1B43DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7270";
	rename -uid "D294E75F-473B-D8E4-9B61-36A2AA10716D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7276";
	rename -uid "588849FF-49F4-AEC4-6904-038071580AE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7282";
	rename -uid "A8C17647-4D6E-DBEF-7D20-5ABE147C17F9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7288";
	rename -uid "6712D837-45E8-D105-5301-F08922E56029";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7294";
	rename -uid "69B8ABB2-4583-D67E-4F3D-868E09081B6D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7300";
	rename -uid "97631F09-40D1-0529-E3B7-1E827BCFA1E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7306";
	rename -uid "B5C26156-4FC1-28AD-B5CC-0986DF042685";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7312";
	rename -uid "7A78E4A9-472B-477C-561A-34A22D4113B7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7318";
	rename -uid "321080F0-49DE-7947-1F75-E9AFCC475B00";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7324";
	rename -uid "4C0CD0C9-4523-680E-C4C8-6AB1AE416FAC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7330";
	rename -uid "70910A84-4BD9-3BFF-946A-46A00BC386E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7336";
	rename -uid "FDE954AD-4554-EE4C-3C77-9EBEF60FF543";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7342";
	rename -uid "FF73C453-4C67-6551-11D6-6AB3CD7089CB";
	setAttr ".ihi" 0;
createNode standardSurface -n "WeatherSurface95";
	rename -uid "95078377-422F-9CB8-C119-ED9BACB0EAEF";
	setAttr ".bc" -type "float3" 0.55000001 0.24000001 0.045000024 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.55000001 0.24000001 0.045000024 ;
createNode shadingEngine -n "WeatherSurfaceSG95";
	rename -uid "B5F03E3A-4A78-5579-6619-BC9D5869DA43";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo116";
	rename -uid "F2121F69-4005-04FB-161B-8CBC8CA19E80";
createNode standardSurface -n "WeatherSurface96";
	rename -uid "07A6822E-4813-D7F9-AD88-259F5AFE3355";
	setAttr ".bc" -type "float3" 0.55000001 0.24000001 0.045000024 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.55000001 0.24000001 0.045000024 ;
createNode shadingEngine -n "WeatherSurfaceSG96";
	rename -uid "01ADD6EF-4367-0AF8-7A74-878AFF2DE7D4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo117";
	rename -uid "EC02436D-497A-F6FE-8243-B0B947971CDF";
createNode standardSurface -n "WeatherSurface97";
	rename -uid "D493AFE3-42E3-C159-5535-D382ABA9B92C";
	setAttr ".bc" -type "float3" 0.41250002 0.18000001 0.03375002 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.41250002 0.18000001 0.03375002 ;
createNode shadingEngine -n "WeatherSurfaceSG97";
	rename -uid "27A4FBB1-4916-DCC3-188F-8D8A588CFE00";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo118";
	rename -uid "1969C510-485F-0E10-F809-E78665FEF184";
createNode standardSurface -n "WeatherSurface98";
	rename -uid "CCAEFB48-41F4-6749-6FA6-F2B37D6364AF";
	setAttr ".bc" -type "float3" 0.50462502 0.2202 0.041287523 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.50462502 0.2202 0.041287523 ;
createNode shadingEngine -n "WeatherSurfaceSG98";
	rename -uid "93BF60BD-4088-8E9F-7F05-19A99FC4821D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo119";
	rename -uid "4738C950-4D75-CB71-05DE-0C92657A9E54";
createNode standardSurface -n "WeatherSurface99";
	rename -uid "60536EC7-4CA3-D8DB-7153-A5A222FBC484";
	setAttr ".bc" -type "float3" 0.595375 0.25980002 0.048712526 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.595375 0.25980002 0.048712526 ;
createNode shadingEngine -n "WeatherSurfaceSG99";
	rename -uid "5582B35F-42B5-079B-E6F5-44B0E42DD07B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo120";
	rename -uid "BF1784C0-45E7-B6B8-A825-A18C8BA83B3E";
createNode standardSurface -n "WeatherSurface100";
	rename -uid "2FA0613C-4922-BDE0-4847-78BD3B62FA90";
	setAttr ".bc" -type "float3" 0.6875 0.30000001 0.056250028 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.6875 0.30000001 0.056250028 ;
createNode shadingEngine -n "WeatherSurfaceSG100";
	rename -uid "8CD8DA44-477B-68BB-8491-47B12511CA06";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo121";
	rename -uid "1ED45A95-41EE-B59E-69B4-A0A78DDC5961";
createNode standardSurface -n "WeatherSurface101";
	rename -uid "04304ED3-4E57-5D0D-1BC7-B3B73CA9E639";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG101";
	rename -uid "ACE2E888-4250-D698-3453-FF80E1B0B0AC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo122";
	rename -uid "25E0DF80-4A67-9852-2D4D-94817725F203";
createNode standardSurface -n "WeatherSurface102";
	rename -uid "CEB31A25-421B-FD97-ECB1-B98AA4F1D1AD";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG102";
	rename -uid "B4047D98-4A67-E78D-67BF-0190A9BD80A6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo123";
	rename -uid "9E0E57A4-4ECB-AE81-C825-74B503FE4B7F";
createNode standardSurface -n "WeatherSurface103";
	rename -uid "1FA842AB-42AD-879B-D97D-F49C4088B59B";
	setAttr ".bc" -type "float3" 0.90249997 0.93099999 0.94999999 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.90249997 0.93099999 0.94999999 ;
createNode shadingEngine -n "WeatherSurfaceSG103";
	rename -uid "4F0C5731-4285-00DC-4DEE-4F959DAAFCBD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo124";
	rename -uid "E313CD52-4ABF-2494-07F5-1DADD5516576";
createNode standardSurface -n "WeatherSurface104";
	rename -uid "78E2CA20-4EE6-14D3-EE05-FF871E3E6230";
	setAttr ".bc" -type "float3" 0.93432498 0.96382999 0.9835 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.93432498 0.96382999 0.9835 ;
createNode shadingEngine -n "WeatherSurfaceSG104";
	rename -uid "A160810C-4A75-E41B-3FDB-9CAC8177A404";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo125";
	rename -uid "1AAAC4AF-4150-00FE-E092-02AE0C70BF94";
createNode standardSurface -n "WeatherSurface105";
	rename -uid "BC09E38F-4CB4-BE94-230B-A4B0EB739F74";
	setAttr ".bc" -type "float3" 0.965675 0.99617004 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.965675 0.99617004 1 ;
createNode shadingEngine -n "WeatherSurfaceSG105";
	rename -uid "8D0386DA-440F-1BD3-EA7C-73A218D7F52F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo126";
	rename -uid "B9DA4377-4635-03D6-9C92-9DA488CA08F5";
createNode standardSurface -n "WeatherSurface106";
	rename -uid "F9BD5E93-450E-57F1-6884-2C9A587A6FD3";
	setAttr ".bc" -type "float3" 0.9975 1 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.9975 1 1 ;
createNode shadingEngine -n "WeatherSurfaceSG106";
	rename -uid "AF7D846C-4664-D96C-EA02-ADA881896A68";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo127";
	rename -uid "A217D398-42C3-0D64-0BB0-3FB4AC8F35C1";
createNode standardSurface -n "WeatherSurface107";
	rename -uid "CCCE2E31-42F2-D5B2-75F8-7E84FD6B6606";
	setAttr ".bc" -type "float3" 0 0.56300002 0.064960852 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0 0.56300002 0.064960852 ;
createNode shadingEngine -n "WeatherSurfaceSG107";
	rename -uid "807DB11C-4A7F-155E-707E-22A159F28892";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo128";
	rename -uid "04165F69-4643-2E28-F1FD-E0953FBFD64B";
createNode standardSurface -n "WeatherSurface108";
	rename -uid "893BE9B5-4420-86ED-787A-0D814ED4EF09";
	setAttr ".bc" -type "float3" 0 0.56300002 0.064960852 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0 0.56300002 0.064960852 ;
createNode shadingEngine -n "WeatherSurfaceSG108";
	rename -uid "C9AB8F95-44D7-15B5-8EC0-60A99A70465D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo129";
	rename -uid "FE198910-4A83-C238-D5BE-758A92586B85";
createNode standardSurface -n "WeatherSurface109";
	rename -uid "BA3B62CD-42D2-C66D-1F5A-3393DB4BF49E";
	setAttr ".bc" -type "float3" 0.001 0.53485 0.061712809 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.001 0.53485 0.061712809 ;
createNode shadingEngine -n "WeatherSurfaceSG109";
	rename -uid "941C883C-4AF7-9502-417C-E583AD64AAF4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo130";
	rename -uid "AFB5415B-4B4D-6C25-325D-0D96B7475940";
createNode standardSurface -n "WeatherSurface110";
	rename -uid "4DD58BB7-4E09-7FCA-68BC-5192C9D525B1";
	setAttr ".bc" -type "float3" 0.001 0.55371052 0.063888997 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.001 0.55371052 0.063888997 ;
createNode shadingEngine -n "WeatherSurfaceSG110";
	rename -uid "8D11030F-43B0-8ECF-0699-C8BEF0AC5C7A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo131";
	rename -uid "A58F428F-4048-5D60-BC6E-67A715B76C0B";
createNode standardSurface -n "WeatherSurface111";
	rename -uid "DC73F3E4-4E9D-3C52-FCC7-6EB74B0B840A";
	setAttr ".bc" -type "float3" 0.001 0.57228953 0.066032708 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.001 0.57228953 0.066032708 ;
createNode shadingEngine -n "WeatherSurfaceSG111";
	rename -uid "8734123D-4916-8138-C195-61B8B65DB768";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo132";
	rename -uid "1D4FB968-4E2E-273B-A4E1-428B8BDEF2CD";
createNode standardSurface -n "WeatherSurface112";
	rename -uid "690F2E33-4B62-A841-1D3D-D892C6EE8226";
	setAttr ".bc" -type "float3" 0.001 0.59115005 0.068208896 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.001 0.59115005 0.068208896 ;
createNode shadingEngine -n "WeatherSurfaceSG112";
	rename -uid "53B27053-47A7-4C38-B35B-28B07453F54F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo133";
	rename -uid "94A69C46-49C6-CB8B-0929-61B49D21BFBE";
createNode standardSurface -n "PuddleWater3";
	rename -uid "1D8882BD-4E80-70A6-5192-DCB9FCE75A80";
	setAttr ".b" 0.15000000596046448;
	setAttr ".bc" -type "float3" 0.62900001 0 0.3386957 ;
	setAttr ".sr" 0.079999998211860657;
	setAttr ".sior" 1.3329999446868896;
	setAttr ".t" 0.75;
	setAttr ".trc" -type "float3" 0.62900001 0 0.3386957 ;
createNode shadingEngine -n "PuddleWaterSG3";
	rename -uid "BD8F3782-44D0-A014-8118-319BB79DD89E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo134";
	rename -uid "229138A9-4789-F338-317B-7684ACEEA047";
createNode standardSurface -n "LightningEmission1";
	rename -uid "4372D6C4-4036-1E75-FDAB-EDA1CEA62A6A";
	setAttr ".b" 0;
	setAttr ".e" 8;
	setAttr ".ec" -type "float3" 0.64999998 0.77999997 1 ;
createNode shadingEngine -n "set1";
	rename -uid "F276B3B0-43F5-0C16-84CF-C8A9ECBA9ADA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo135";
	rename -uid "EB28EF10-4E03-1954-CEBC-26A951B22FAB";
createNode standardSurface -n "WeatherSurface113";
	rename -uid "6B0F12BF-48AF-C195-F57F-5CBE181A4866";
	setAttr ".bc" -type "float3" 0.23999999 0.22 0.2 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.23999999 0.22 0.2 ;
createNode shadingEngine -n "WeatherSurfaceSG113";
	rename -uid "6135CF47-4994-C68F-ED9B-5FBB03CFCF85";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo136";
	rename -uid "6F4E1652-4B11-8F93-2E3E-7E86B5E9C632";
createNode standardSurface -n "WeatherSurface114";
	rename -uid "F46E67E9-4097-74A5-6801-E6A009A3B074";
	setAttr ".bc" -type "float3" 0.23999999 0.22 0.2 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.23999999 0.22 0.2 ;
createNode shadingEngine -n "WeatherSurfaceSG114";
	rename -uid "3B6263A9-4692-B182-9EDB-6A91F4135FDC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo137";
	rename -uid "37EABA10-4FC6-177A-BBB3-BE849E64D279";
createNode standardSurface -n "WeatherSurface115";
	rename -uid "D388A11F-4C78-34E9-0850-588B129A11E1";
	setAttr ".bc" -type "float3" 0.17999999 0.16499999 0.15000001 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.17999999 0.16499999 0.15000001 ;
createNode shadingEngine -n "WeatherSurfaceSG115";
	rename -uid "6ED0CAFB-48D2-F747-8166-5DBCCF5FEF53";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo138";
	rename -uid "CD328EBB-4310-289A-E36D-D994EA972F41";
createNode standardSurface -n "WeatherSurface116";
	rename -uid "74DCD726-48BC-4011-AB33-3D969588737F";
	setAttr ".bc" -type "float3" 0.2202 0.20185 0.18350001 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.2202 0.20185 0.18350001 ;
createNode shadingEngine -n "WeatherSurfaceSG116";
	rename -uid "BB3D4D1F-420D-4B90-9B58-D193599C971E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo139";
	rename -uid "DC2E689E-4833-D552-CC8A-B9968B333F76";
createNode standardSurface -n "WeatherSurface117";
	rename -uid "16072583-4BEF-FA68-1171-58B76D982965";
	setAttr ".bc" -type "float3" 0.25979999 0.23815 0.2165 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.25979999 0.23815 0.2165 ;
createNode shadingEngine -n "WeatherSurfaceSG117";
	rename -uid "D790D61A-4BEE-EADC-0BBD-CAB650BC3855";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo140";
	rename -uid "D6242419-4280-C8C0-2903-A78FCFE11FCA";
createNode standardSurface -n "WeatherSurface118";
	rename -uid "DC3BC239-4EC5-76B6-0993-CA8194E02D54";
	setAttr ".bc" -type "float3" 0.29999998 0.27500001 0.25 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.29999998 0.27500001 0.25 ;
createNode shadingEngine -n "WeatherSurfaceSG118";
	rename -uid "EE88F1C1-4464-8ABD-DF43-C8907F95D457";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo141";
	rename -uid "8986DFE7-4E0B-174B-5FD9-8990BF1811DA";
createNode lambert -n "AirPreview1";
	rename -uid "2C385670-4908-601A-2937-F194D8FD9A87";
	setAttr ".c" -type "float3" 0.31999999 0.28999999 0.27000001 ;
createNode shadingEngine -n "set2";
	rename -uid "7F58BCCE-45B8-5770-8090-BAB108133371";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo142";
	rename -uid "0A332E0B-4B99-B060-7B36-598F42B87365";
createNode ramp -n "SoftAirEdge1";
	rename -uid "53D5BCF2-4BAD-6A5F-F8B6-FF950B540220";
	setAttr ".t" 4;
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0.88 0.88 0.88 ;
	setAttr ".cel[1].ep" 0.60000002384185791;
	setAttr ".cel[1].ec" -type "float3" 0.97000003 0.97000003 0.97000003 ;
	setAttr ".cel[2].ep" 1;
	setAttr ".cel[2].ec" -type "float3" 1 1 1 ;
createNode standardSurface -n "WeatherSurface119";
	rename -uid "CD93C559-497F-9117-C6FF-78BB8336D71B";
	setAttr ".bc" -type "float3" 0.55000001 0.42000002 0.25 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.55000001 0.42000002 0.25 ;
createNode shadingEngine -n "WeatherSurfaceSG119";
	rename -uid "E7735EC6-43BA-EFCF-4D71-CF8AA1939C1A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo143";
	rename -uid "01884835-45B8-2BD0-EB08-ACA36063DECE";
createNode standardSurface -n "WeatherSurface120";
	rename -uid "FE6E7F7D-41E2-496B-1419-199B428952C1";
	setAttr ".bc" -type "float3" 0.55000001 0.42000002 0.25 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.55000001 0.42000002 0.25 ;
createNode shadingEngine -n "WeatherSurfaceSG120";
	rename -uid "7ABEDC7F-4B01-C2CB-881C-0B816DC2B306";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo144";
	rename -uid "A02F17DF-420F-CA65-E364-B7BE7D72FBEF";
createNode standardSurface -n "WeatherSurface121";
	rename -uid "B3758AFF-416F-A119-2F34-AF93B43DE87C";
	setAttr ".bc" -type "float3" 0.41250002 0.315 0.1875 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.41250002 0.315 0.1875 ;
createNode shadingEngine -n "WeatherSurfaceSG121";
	rename -uid "AE87FA0B-40E9-5079-F009-67B6D1E730CC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo145";
	rename -uid "65D3EDDA-4788-8A5B-6F6A-84A7896C4D90";
createNode standardSurface -n "WeatherSurface122";
	rename -uid "E65471AC-4DBB-7F45-4B39-91BEB0D04914";
	setAttr ".bc" -type "float3" 0.50462502 0.38535002 0.229375 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.50462502 0.38535002 0.229375 ;
createNode shadingEngine -n "WeatherSurfaceSG122";
	rename -uid "132400EE-43CF-E80E-62DD-639D6E18C2AE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo146";
	rename -uid "337BC445-49D6-AC39-38DE-A98307B41DC6";
createNode standardSurface -n "WeatherSurface123";
	rename -uid "3631C099-44BD-674C-1888-4A97E8AFE53B";
	setAttr ".bc" -type "float3" 0.595375 0.45465001 0.270625 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.595375 0.45465001 0.270625 ;
createNode shadingEngine -n "WeatherSurfaceSG123";
	rename -uid "5038229B-42A8-11F5-D246-B8AA7BAA9B6D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo147";
	rename -uid "600F8248-42F4-7BB4-0466-DC92E813E965";
createNode standardSurface -n "WeatherSurface124";
	rename -uid "C2D4F689-4AAE-36C8-2186-8598744D9442";
	setAttr ".bc" -type "float3" 0.6875 0.52500004 0.3125 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.6875 0.52500004 0.3125 ;
createNode shadingEngine -n "WeatherSurfaceSG124";
	rename -uid "59C0B0C0-4845-0380-736A-079E8783DBD2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo148";
	rename -uid "BBA15D4E-4B9B-0240-69AF-E283F1A93525";
createNode lambert -n "AirPreview2";
	rename -uid "8765683B-44A7-13DE-36F2-40873433A6FE";
	setAttr ".c" -type "float3" 0.62 0.46000001 0.28 ;
createNode shadingEngine -n "set3";
	rename -uid "01859205-48AA-2A72-EC49-D3A19DB65A36";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo149";
	rename -uid "FFA499E8-44A7-1321-8630-8BBC50340936";
createNode ramp -n "SoftAirEdge2";
	rename -uid "7B5CEF92-4B5F-FB56-DA3D-73AEB9986A90";
	setAttr ".t" 4;
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0.88 0.88 0.88 ;
	setAttr ".cel[1].ep" 0.60000002384185791;
	setAttr ".cel[1].ec" -type "float3" 0.97000003 0.97000003 0.97000003 ;
	setAttr ".cel[2].ep" 1;
	setAttr ".cel[2].ec" -type "float3" 1 1 1 ;
createNode lambert -n "Weather_MAT11";
	rename -uid "A2A9591B-4B6F-CC92-0C37-C8A125A05F46";
createNode shadingEngine -n "Weather_SG11";
	rename -uid "2A97D6EB-48DF-F4CA-6F11-7398B967019B";
	addAttr -s false -ci true -sn "weatherTexture" -ln "weatherTexture" -at "message";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo150";
	rename -uid "7C889842-4B01-5C07-40A8-5AB1E3A895F8";
createNode file -n "Weather_PNG11";
	rename -uid "C0D0901C-42AA-CC8C-FFA1-6281402630A8";
	setAttr ".ftn" -type "string" "C:/Users/free/Downloads/Atmosphere/Autumn_Leaf.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture11";
	rename -uid "33BF48B1-43B6-B4CA-043C-EDA091E2507A";
createNode standardSurface -n "WeatherSurface125";
	rename -uid "48840FCB-4BDD-3B0E-00D9-93A2B51B856E";
	setAttr ".bc" -type "float3" 0.55000001 0.24000001 0.045000024 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.55000001 0.24000001 0.045000024 ;
createNode shadingEngine -n "WeatherSurfaceSG125";
	rename -uid "A076F951-4DFB-9826-2901-198FD8825DFD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo151";
	rename -uid "2B6F1B1F-454B-2773-0F9D-DAB0FD69C916";
createNode groupId -n "groupId7348";
	rename -uid "9F3CAB20-4A89-61D5-8E3A-1AA4D1ACE6BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7354";
	rename -uid "BF2DE6E4-4BBD-4048-B95F-83AC882811BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7360";
	rename -uid "F06EDFEA-4E02-1A83-27DE-7398D658DBB2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7366";
	rename -uid "1E224479-4F32-ED93-7D98-D5A4BB72F3AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7372";
	rename -uid "71A40C72-4A38-3646-B80B-13ABC92133F0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7378";
	rename -uid "E428723C-467D-57CA-D81B-41B646FA89DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7384";
	rename -uid "D0CC0FE4-4F0B-C15A-E0FD-14B3EB575D64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7390";
	rename -uid "AF8BB29F-4492-EAA7-D448-71A6CB8FA872";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7396";
	rename -uid "3324831E-47DB-8F3A-C1FE-D79EB1F70178";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7402";
	rename -uid "A0C953FE-45D8-B42C-8867-9EB26C79D6E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7408";
	rename -uid "6B112379-4998-35D3-A29B-3398E9ACA504";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7414";
	rename -uid "03410717-4ADB-6813-BC90-5F95F56AC1DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7420";
	rename -uid "D25D4986-447E-45EB-7A23-188012251F78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7426";
	rename -uid "CCD51037-4A50-3022-33DF-E49F1477C395";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7432";
	rename -uid "774396AB-4352-E066-BB95-5699B4FEC67C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7438";
	rename -uid "FBFAE0A4-4B3F-7E92-B01C-B9B33A24AE0F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7444";
	rename -uid "DDA7581B-4D20-8EF1-90BC-8F940167C49E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7450";
	rename -uid "5374FC8A-4CCA-4FD8-782A-F5A50F8FBF48";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7456";
	rename -uid "0FF16D4C-413D-ED48-4497-4D82889ED463";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7462";
	rename -uid "C8FBC757-48F4-5E92-ACE7-DA99801DC7C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7468";
	rename -uid "13F7D903-4E03-D381-5B58-4FA8AD040BF5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7474";
	rename -uid "59918381-4E8C-E261-4363-D39AC0789401";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7480";
	rename -uid "6C33AC8C-4090-F416-95A6-9DB531C6703D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7486";
	rename -uid "0385B687-4886-0DA7-DC1F-02BF3D681D44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7492";
	rename -uid "073814C3-453C-7B72-7B69-829B83B2DB34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7498";
	rename -uid "B8F724D0-442D-2693-5857-22A2D2E93641";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7504";
	rename -uid "E349D5A8-4F6E-E553-EEBB-FFB2CF4526B3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7510";
	rename -uid "C093F393-42F5-A7B3-D16E-A0AEA432FD6D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7516";
	rename -uid "FF97D0A3-4750-CAF5-BE36-01990E6C1F07";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7522";
	rename -uid "731148EB-4CF4-7CF1-16E3-369FCC0ADA98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7528";
	rename -uid "76AC3FF0-485E-14A6-0C28-3EAF843EA254";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7534";
	rename -uid "6D9656D3-4B8F-8BBA-385E-44B29C6C9405";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7540";
	rename -uid "EAD25319-46C2-C031-8B71-FDB3F06AA144";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7546";
	rename -uid "0895CA23-48F1-ED70-B52A-5D9AE19FBEF0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7552";
	rename -uid "0E50A03B-4E24-CB6D-7AAD-50AC94A4356C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7558";
	rename -uid "DC0AA575-4CDF-B1A0-F8C8-C0878A2D14D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7564";
	rename -uid "A9131890-4B8C-A068-67F9-44BB862AF163";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7570";
	rename -uid "723172C5-4CCD-A810-636F-729FB17EC6B8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7576";
	rename -uid "72753509-4317-D342-F211-E6A13CF1BD4A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7582";
	rename -uid "6B40F96D-42E7-B4B1-7656-4F8018BECAA2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7588";
	rename -uid "D08E319A-4172-64CC-ADB0-A4BEBC4957E7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7594";
	rename -uid "0D32B919-4AE5-4F6F-E4A5-D8A891F25D4A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7600";
	rename -uid "8B2252C1-4ABD-4999-B706-2E926475E4DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7606";
	rename -uid "261C26A9-4033-596C-9499-5687B4D04E0E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7612";
	rename -uid "E210C8AD-4219-FD8A-D1B3-87BF777BBA2C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7618";
	rename -uid "C2AD0E3D-43A8-B204-0C0A-22809152D91B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7624";
	rename -uid "0455B01E-437D-4BBF-F8EE-8CA0945B6087";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7630";
	rename -uid "E423C970-4AA6-C4B4-9F99-6B93D76AC338";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7636";
	rename -uid "BCA8A0E4-4EAD-4D1C-4FB8-B6A6929EF2C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7642";
	rename -uid "152580F4-4A78-C1C3-A18B-0EAC17E5EE12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7648";
	rename -uid "E991F9EF-4245-43C5-8E73-A7A0798C8EC7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7654";
	rename -uid "2EC6C575-4E59-EC76-539C-F6AB52952A90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7660";
	rename -uid "07CA2A65-41D6-1CF6-1B77-5E86252DC087";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7666";
	rename -uid "E188820C-4D93-E487-600C-3ABD07CD94C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7672";
	rename -uid "C052C8B7-45BA-6710-9CE9-CEB63ED125A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7678";
	rename -uid "44FD4358-482B-B2CF-4148-9BA31E763053";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7684";
	rename -uid "939DA757-40CC-D6E3-46E1-709FBA7FF2F9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7690";
	rename -uid "745DC4F6-4DC8-45E6-6C51-5B8CBE7D4F05";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7696";
	rename -uid "E746E62A-4445-A007-1833-80A6126ACD43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7702";
	rename -uid "0FA3B470-4F4A-F00B-0198-41A5C48F6173";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7708";
	rename -uid "B44E8BFF-4F10-33F0-CFEC-CFBBF3D571C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7714";
	rename -uid "2A168446-4D93-C2C0-6630-AEB294E2166A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7720";
	rename -uid "256D7705-4E2B-FC58-9EDA-02A5437ED73C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7726";
	rename -uid "2CA6256D-4EAB-E41D-1717-1D8C875E4096";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7732";
	rename -uid "B234BEBA-4A01-773D-3018-E98C0CB4DE2D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7738";
	rename -uid "CB157974-4086-1824-AE82-E0B03FCDC1BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7744";
	rename -uid "58FDD891-4B33-79FE-9E1F-1B8AEF30313E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7750";
	rename -uid "4115B5FA-4B7C-FDD9-0B67-7F91006B8F68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7756";
	rename -uid "99C34781-44DF-8D74-2DCA-75919FDAC7FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7762";
	rename -uid "8764CC93-4F7F-1074-BC2D-C69121A1BE41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7768";
	rename -uid "2BBCA833-451A-F71F-1E47-EB833EF11641";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7774";
	rename -uid "781BE5F3-4903-2846-7256-B5BA674583F4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7780";
	rename -uid "03EE14B0-4313-BED4-5BB7-D785F4CAF64E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7786";
	rename -uid "7228B6A3-4D68-A302-C316-53B185F8E8E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7792";
	rename -uid "46F04B26-4986-E264-B1B8-2AB2D07350A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7798";
	rename -uid "A82F58F0-457C-4265-CED9-7B96809BACAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7804";
	rename -uid "E9153440-4FC2-AD23-BE67-D3858988324D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7810";
	rename -uid "7DF314C9-4884-3458-5011-0D911A60B06A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7816";
	rename -uid "9F74E97E-44FD-66F0-6EE4-588FD420E16F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7822";
	rename -uid "7E67B74F-419C-7885-4367-7180846D1AE8";
	setAttr ".ihi" 0;
createNode standardSurface -n "WeatherSurface126";
	rename -uid "E20C91C5-45FB-0565-C87A-F98586A06119";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG126";
	rename -uid "CC38CE70-441B-72FE-3B34-BF92C0ED0FAD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo152";
	rename -uid "16A7850C-4148-3E2A-1102-B0AE57883A69";
createNode standardSurface -n "WeatherSurface127";
	rename -uid "FF66F597-441D-2EE7-17BC-FFAD2E4E146E";
	setAttr ".bc" -type "float3" 0.94999999 0.98000002 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.94999999 0.98000002 1 ;
createNode shadingEngine -n "WeatherSurfaceSG127";
	rename -uid "7AA1A398-4301-E473-E7C6-23B2D25E49D3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo153";
	rename -uid "FD0D4218-40A5-2093-0BE9-1AA48FF631E3";
createNode standardSurface -n "WeatherSurface128";
	rename -uid "28B78ACE-42A8-911E-80C8-2FB6D13F6D5D";
	setAttr ".bc" -type "float3" 0.90249997 0.93099999 0.94999999 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.90249997 0.93099999 0.94999999 ;
createNode shadingEngine -n "WeatherSurfaceSG128";
	rename -uid "47FFB9E0-49F8-F5EF-B04A-4D80FAD2691C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo154";
	rename -uid "89CB4C1F-414A-DB95-6241-13B1C245676A";
createNode standardSurface -n "WeatherSurface129";
	rename -uid "7C353F85-4DAC-EEC6-0AC6-E2BF7E639F3E";
	setAttr ".bc" -type "float3" 0.93432498 0.96382999 0.9835 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.93432498 0.96382999 0.9835 ;
createNode shadingEngine -n "WeatherSurfaceSG129";
	rename -uid "41B307A4-4BDB-67A9-BC97-C384DA59792C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo155";
	rename -uid "A5760ECB-4E85-BAAC-A4A0-49A87CECF769";
createNode standardSurface -n "WeatherSurface130";
	rename -uid "83176D4D-4DAE-9E86-8B84-04A227C1F7F3";
	setAttr ".bc" -type "float3" 0.965675 0.99617004 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.965675 0.99617004 1 ;
createNode shadingEngine -n "WeatherSurfaceSG130";
	rename -uid "2FF3F314-4EE5-AADC-73E9-C7BDA09BD3A1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo156";
	rename -uid "445716BE-448B-E492-734D-E9ACD0D37D86";
createNode standardSurface -n "WeatherSurface131";
	rename -uid "B72EF7E2-44E4-1FFB-A06D-BD905CB2F21E";
	setAttr ".bc" -type "float3" 0.9975 1 1 ;
	setAttr ".sr" 0.64999997615814209;
	setAttr ".ec" -type "float3" 0.9975 1 1 ;
createNode shadingEngine -n "WeatherSurfaceSG131";
	rename -uid "779FA53B-404E-0E85-BAA7-FE9DD311EFF5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo157";
	rename -uid "9932C746-4593-85F8-9437-3BB69A3C0379";
createNode standardSurface -n "WeatherSurface132";
	rename -uid "B1165EBD-4006-E461-DE69-A8ABE1D91A8B";
	setAttr ".bc" -type "float3" 0.5 0.62 0.73000002 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.5 0.62 0.73000002 ;
createNode shadingEngine -n "WeatherSurfaceSG132";
	rename -uid "C9F2BC13-42AC-79B4-416C-90B39F28AC1E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo158";
	rename -uid "FB557808-4EA5-0262-9BA1-D596096C9B2F";
createNode standardSurface -n "WeatherSurface133";
	rename -uid "8067FD05-4084-538D-9D5F-ED97BE1542DC";
	setAttr ".bc" -type "float3" 0.5 0.62 0.73000002 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.5 0.62 0.73000002 ;
createNode shadingEngine -n "WeatherSurfaceSG133";
	rename -uid "9CD1CA54-4893-2BCE-0C96-B692CD5FC374";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo159";
	rename -uid "8C5078B5-4511-A1F5-6336-E887D893195B";
createNode standardSurface -n "WeatherSurface134";
	rename -uid "64218126-4386-62FA-02B2-96A8968A9AA3";
	setAttr ".bc" -type "float3" 0.47499999 0.58899999 0.69350004 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.47499999 0.58899999 0.69350004 ;
createNode shadingEngine -n "WeatherSurfaceSG134";
	rename -uid "BB433751-4956-E095-9657-98AF9FF979C0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo160";
	rename -uid "DE613A19-4C7F-15F6-AF10-E992C50ADF0A";
createNode standardSurface -n "WeatherSurface135";
	rename -uid "387177E3-424D-CC18-2867-3AA65581721B";
	setAttr ".bc" -type "float3" 0.49175 0.60977 0.71795499 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.49175 0.60977 0.71795499 ;
createNode shadingEngine -n "WeatherSurfaceSG135";
	rename -uid "D14E2676-4C3B-E12B-2B81-93B753399BCD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo161";
	rename -uid "F6401E99-42EA-26E7-7D30-1B966C53C9A8";
createNode standardSurface -n "WeatherSurface136";
	rename -uid "0B777C01-41F8-136A-E7F8-8594D6401E5A";
	setAttr ".bc" -type "float3" 0.50825 0.63023001 0.74204504 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.50825 0.63023001 0.74204504 ;
createNode shadingEngine -n "WeatherSurfaceSG136";
	rename -uid "1E5160CC-49E8-F539-8E02-D99B08BED088";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo162";
	rename -uid "6A90C602-4401-90EC-2D83-518C645733BC";
createNode standardSurface -n "WeatherSurface137";
	rename -uid "82005BAA-436B-7D95-D7D7-69ABC18D40B7";
	setAttr ".bc" -type "float3" 0.52499998 0.65100002 0.7665 ;
	setAttr ".sr" 0.11999999731779099;
	setAttr ".t" 0.69999998807907104;
	setAttr ".ec" -type "float3" 0.52499998 0.65100002 0.7665 ;
createNode shadingEngine -n "WeatherSurfaceSG137";
	rename -uid "FE7C082C-4683-1AD3-9C0C-E9911EAEEB99";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo163";
	rename -uid "18AAE91B-4BF6-9B5B-C9AB-A08C972432CE";
createNode standardSurface -n "PuddleWater4";
	rename -uid "DA606401-4CA4-A14C-D730-EBB61FE561AC";
	setAttr ".b" 0.15000000596046448;
	setAttr ".bc" -type "float3" 0.64999998 0.80000001 0.89999998 ;
	setAttr ".sr" 0.079999998211860657;
	setAttr ".sior" 1.3329999446868896;
	setAttr ".t" 0.75;
	setAttr ".trc" -type "float3" 0.64999998 0.80000001 0.89999998 ;
createNode shadingEngine -n "PuddleWaterSG4";
	rename -uid "35430520-4498-8908-FC5D-E7BFEE00AAF2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo164";
	rename -uid "C304A84B-4516-6281-B28E-EB9A1FC49F52";
createNode standardSurface -n "LightningEmission2";
	rename -uid "0E223A60-45C8-49B4-47DD-589B8DE9B58F";
	setAttr ".b" 0;
	setAttr ".e" 8;
	setAttr ".ec" -type "float3" 0.64999998 0.77999997 1 ;
createNode shadingEngine -n "set4";
	rename -uid "0F5D3567-4080-EF14-565D-0FAAE636F80A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo165";
	rename -uid "77619870-49D1-78DE-A460-9E80DBB14664";
select -ne :time1;
	setAttr ".o" 39;
	setAttr ".unw" 39;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
	setAttr ".dli" 1;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 123 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 127 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 10 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 10 ".tx";
select -ne :standardSurface1;
	setAttr ".b" 0.80000001192092896;
	setAttr ".bc" -type "float3" 1 1 1 ;
	setAttr ".s" 0.20000000298023224;
select -ne :initialShadingGroup;
	setAttr -s 117 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".w" 2048;
	setAttr ".h" 2048;
	setAttr ".pa" 1;
	setAttr ".dar" 1;
select -ne :defaultLightSet;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya-legacy/config.ocio";
	setAttr ".vtn" -type "string" "sRGB gamma (legacy)";
	setAttr ".vn" -type "string" "sRGB gamma";
	setAttr ".dn" -type "string" "legacy";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "sRGB gamma (legacy)";
	setAttr ".potn" -type "string" "sRGB gamma (legacy)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId18.id" "pCubeShape2.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId19.id" "pCubeShape2.iog.og[1].gid";
connectAttr "lambert6SG.mwc" "pCubeShape2.iog.og[1].gco";
connectAttr "groupId10.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId20.id" "pCubeShape23.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape23.iog.og[0].gco";
connectAttr "groupId21.id" "pCubeShape23.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape23.iog.og[1].gco";
connectAttr "groupId7.id" "pCubeShape23.ciog.cog[0].cgid";
connectAttr "groupId22.id" "pCube40Shape.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "pCube40Shape.iog.og[0].gco";
connectAttr "groupId17.id" "pCube40Shape.ciog.cog[0].cgid";
connectAttr "lambert4SG.msg" "materialInfo4.sg";
connectAttr "lambert4.msg" "materialInfo4.m";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "|group7|group2|pCube39|pCubeShape39.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape38.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape37.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape36.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape35.iog" "lambert4SG.dsm" -na;
connectAttr "pPipeShape8.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape34.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape33.iog" "lambert4SG.dsm" -na;
connectAttr "|group7|group2|pPipe7|pPipeShape7.iog" "lambert4SG.dsm" -na;
connectAttr "|group7|group2|pCube32|pCubeShape32.iog" "lambert4SG.dsm" -na;
connectAttr "|group7|group2|pCube31|pCubeShape31.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape30.iog" "lambert4SG.dsm" -na;
connectAttr "pPipeShape6.iog" "lambert4SG.dsm" -na;
connectAttr "|group7|group4|pPipe5|pPipeShape5.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape29.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape28.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape27.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape26.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape25.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape24.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape22.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape21.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape20.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape19.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape18.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape17.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape16.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape15.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape14.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape13.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape12.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape11.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape10.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape9.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape8.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape7.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape6.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape5.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape4.iog" "lambert4SG.dsm" -na;
connectAttr "pPipeShape4.iog" "lambert4SG.dsm" -na;
connectAttr "pPipeShape3.iog" "lambert4SG.dsm" -na;
connectAttr "pPipeShape2.iog" "lambert4SG.dsm" -na;
connectAttr "pPipeShape1.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" "lambert4SG.dsm" -na;
connectAttr "pCubeShape3.iog" "lambert4SG.dsm" -na;
connectAttr "|group7|group3|pCube39|pCubeShape39.iog" "lambert4SG.dsm" -na;
connectAttr "|group7|group3|pPipe7|pPipeShape7.iog" "lambert4SG.dsm" -na;
connectAttr "|group7|group3|pCube32|pCubeShape32.iog" "lambert4SG.dsm" -na;
connectAttr "|group7|group3|pCube31|pCubeShape31.iog" "lambert4SG.dsm" -na;
connectAttr "|group7|group5|pPipe5|pPipeShape5.iog" "lambert4SG.dsm" -na;
connectAttr "|group7|group6|pPipe5|pPipeShape5.iog" "lambert4SG.dsm" -na;
connectAttr "pPipeShape9.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape41.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape42.iog" "lambert4SG.dsm" -na;
connectAttr "pPipeShape10.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape43.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape44.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape45.iog" "lambert4SG.dsm" -na;
connectAttr "pPipeShape11.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape46.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "groupId10.msg" "lambert4SG.gn" -na;
connectAttr "groupId18.msg" "lambert4SG.gn" -na;
connectAttr "lambert6.oc" "lambert6SG.ss";
connectAttr "groupId19.msg" "lambert6SG.gn" -na;
connectAttr "pCubeShape2.iog.og[1]" "lambert6SG.dsm" -na;
connectAttr "lambert6SG.msg" "materialInfo6.sg";
connectAttr "lambert6.msg" "materialInfo6.m";
connectAttr "lambert7SG.msg" "materialInfo7.sg";
connectAttr "lambert7.msg" "materialInfo7.m";
connectAttr "lambert7.oc" "lambert7SG.ss";
connectAttr "pPlaneShape1.iog" "lambert7SG.dsm" -na;
connectAttr "Cream.oc" "lambert2SG.ss";
connectAttr "pCubeShape23.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "pCube40Shape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCube40Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape170.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape23.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId7.msg" "lambert2SG.gn" -na;
connectAttr "groupId20.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "Cream.msg" "materialInfo2.m";
connectAttr "lambert5SG.msg" "materialInfo5.sg";
connectAttr "lambert5.msg" "materialInfo5.m";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "pPlaneShape2.iog" "lambert5SG.dsm" -na;
connectAttr "pPlaneShape3.iog" "lambert5SG.dsm" -na;
connectAttr "pPlaneShape4.iog" "lambert5SG.dsm" -na;
connectAttr "|group7|group2|pPlane5|pPlaneShape5.iog" "lambert5SG.dsm" -na;
connectAttr "pPlaneShape6.iog" "lambert5SG.dsm" -na;
connectAttr "|group7|group4|pPlane7|pPlaneShape7.iog" "lambert5SG.dsm" -na;
connectAttr "pPlaneShape8.iog" "lambert5SG.dsm" -na;
connectAttr "|group7|group3|pPlane5|pPlaneShape5.iog" "lambert5SG.dsm" -na;
connectAttr "|group7|group5|pPlane7|pPlaneShape7.iog" "lambert5SG.dsm" -na;
connectAttr "|group7|group6|pPlane7|pPlaneShape7.iog" "lambert5SG.dsm" -na;
connectAttr "pPlaneShape9.iog" "lambert5SG.dsm" -na;
connectAttr "pPlaneShape10.iog" "lambert5SG.dsm" -na;
connectAttr "pPlaneShape11.iog" "lambert5SG.dsm" -na;
connectAttr "Red.oc" "lambert3SG.ss";
connectAttr "groupId22.msg" "lambert3SG.gn" -na;
connectAttr "pCube40Shape.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo3.sg";
connectAttr "Red.msg" "materialInfo3.m";
connectAttr "lambert8SG.msg" "materialInfo8.sg";
connectAttr "lambert8.msg" "materialInfo8.m";
connectAttr "lambert8.oc" "lambert8SG.ss";
connectAttr "pCylinderShape1.iog" "lambert8SG.dsm" -na;
connectAttr "lambert9SG.msg" "materialInfo9.sg";
connectAttr "lambert9.msg" "materialInfo9.m";
connectAttr "lambert9.oc" "lambert9SG.ss";
connectAttr "pSphereShape12.iog" "lambert9SG.dsm" -na;
connectAttr "pSphereShape9.iog" "lambert9SG.dsm" -na;
connectAttr "pSphereShape10.iog" "lambert9SG.dsm" -na;
connectAttr "pSphereShape7.iog" "lambert9SG.dsm" -na;
connectAttr "pSphereShape6.iog" "lambert9SG.dsm" -na;
connectAttr "pSphereShape8.iog" "lambert9SG.dsm" -na;
connectAttr "pSphereShape11.iog" "lambert9SG.dsm" -na;
connectAttr "mia_physicalsky1.S00" "mia_physicalsun1.S00";
connectAttr "mia_physicalsky1.S01" "mia_physicalsun1.S01";
connectAttr "mia_physicalsky1.S02" "mia_physicalsun1.S02";
connectAttr "mia_physicalsky1.S03" "mia_physicalsun1.S03";
connectAttr "mia_physicalsky1.S04" "mia_physicalsun1.S04";
connectAttr "mia_physicalsky1.S05" "mia_physicalsun1.S05";
connectAttr "mia_physicalsky1.S06" "mia_physicalsun1.S06";
connectAttr "mia_physicalsky1.S18" "mia_physicalsun1.S12";
connectAttr "sunDirection.msg" "mia_physicalsky1.S11";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Weather_SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Weather_SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Weather_SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG36.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG37.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Weather_SG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG11.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG38.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG39.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG40.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG41.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG42.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG43.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG44.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG45.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG46.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG47.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG48.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG49.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG50.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG51.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG52.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG53.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG72.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG73.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG74.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG75.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG76.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG77.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG60.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG61.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG62.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG63.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG64.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG65.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG78.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG79.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG80.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG81.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG82.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG83.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Weather_SG8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "PuddleWaterSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG86.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Weather_SG9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG87.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG88.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG89.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG90.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG91.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG92.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG93.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Weather_SG10.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG94.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG95.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG96.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG97.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG98.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG99.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG100.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG101.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG102.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG103.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG104.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG105.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG106.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG107.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG108.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG109.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG110.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG111.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG112.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "PuddleWaterSG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG113.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG114.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG115.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG116.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG117.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG118.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG119.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG120.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG121.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG122.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG123.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG124.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Weather_SG11.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG125.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG126.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG127.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG128.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG129.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG130.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG131.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG132.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG133.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG134.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG135.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG136.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "WeatherSurfaceSG137.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "PuddleWaterSG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Weather_SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Weather_SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Weather_SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG36.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG37.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Weather_SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG11.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG38.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG39.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG40.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG41.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG42.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG43.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG44.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG45.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG46.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG47.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG48.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG49.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG50.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG51.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG52.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG53.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG72.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG73.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG74.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG75.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG76.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG77.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG60.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG61.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG62.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG63.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG64.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG65.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG78.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG79.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG80.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG81.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG82.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG83.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Weather_SG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "PuddleWaterSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG86.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Weather_SG9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG87.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG88.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG89.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG90.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG91.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG92.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG93.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Weather_SG10.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG94.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG95.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG96.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG97.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG98.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG99.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG100.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG101.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG102.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG103.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG104.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG105.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG106.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG107.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG108.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG109.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG110.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG111.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG112.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "PuddleWaterSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG113.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG114.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG115.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG116.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG117.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG118.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG119.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG120.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG121.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG122.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG123.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG124.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Weather_SG11.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG125.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG126.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG127.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG128.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG129.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG130.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG131.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG132.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG133.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG134.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG135.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG136.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "WeatherSurfaceSG137.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "PuddleWaterSG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set4.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "WeatherSurface1.oc" "WeatherSurfaceSG1.ss";
connectAttr "WeatherSurfaceSG1.msg" "materialInfo10.sg";
connectAttr "WeatherSurface1.msg" "materialInfo10.m";
connectAttr "WeatherSurface2.oc" "WeatherSurfaceSG2.ss";
connectAttr "WeatherSurfaceSG2.msg" "materialInfo11.sg";
connectAttr "WeatherSurface2.msg" "materialInfo11.m";
connectAttr "WeatherSurface3.oc" "WeatherSurfaceSG3.ss";
connectAttr "WeatherSurfaceSG3.msg" "materialInfo12.sg";
connectAttr "WeatherSurface3.msg" "materialInfo12.m";
connectAttr "WeatherSurface4.oc" "WeatherSurfaceSG4.ss";
connectAttr "WeatherSurfaceSG4.msg" "materialInfo13.sg";
connectAttr "WeatherSurface4.msg" "materialInfo13.m";
connectAttr "WeatherSurface5.oc" "WeatherSurfaceSG5.ss";
connectAttr "WeatherSurfaceSG5.msg" "materialInfo14.sg";
connectAttr "WeatherSurface5.msg" "materialInfo14.m";
connectAttr "WeatherSurface6.oc" "WeatherSurfaceSG6.ss";
connectAttr "WeatherSurfaceSG6.msg" "materialInfo15.sg";
connectAttr "WeatherSurface6.msg" "materialInfo15.m";
connectAttr ":defaultArnoldDenoiser.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "Weather_PNG1.oc" "Weather_MAT1.c";
connectAttr "Weather_PNG1.ot" "Weather_MAT1.it";
connectAttr "Weather_MAT1.oc" "Weather_SG1.ss";
connectAttr "Weather_PNG1.msg" "Weather_SG1.weatherTexture";
connectAttr "Weather_SG1.msg" "materialInfo16.sg";
connectAttr "Weather_MAT1.msg" "materialInfo16.m";
connectAttr "Weather_PNG1.msg" "materialInfo16.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "Weather_PNG1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Weather_PNG1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Weather_PNG1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Weather_PNG1.ws";
connectAttr "place2dTexture1.o" "Weather_PNG1.uv";
connectAttr "place2dTexture1.ofs" "Weather_PNG1.fs";
connectAttr "WeatherSurface7.oc" "WeatherSurfaceSG7.ss";
connectAttr "WeatherSurfaceSG7.msg" "materialInfo17.sg";
connectAttr "WeatherSurface7.msg" "materialInfo17.m";
connectAttr "Weather_PNG2.oc" "Weather_MAT2.c";
connectAttr "Weather_PNG2.ot" "Weather_MAT2.it";
connectAttr "Weather_MAT2.oc" "Weather_SG2.ss";
connectAttr "Weather_PNG2.msg" "Weather_SG2.weatherTexture";
connectAttr "Weather_SG2.msg" "materialInfo18.sg";
connectAttr "Weather_MAT2.msg" "materialInfo18.m";
connectAttr "Weather_PNG2.msg" "materialInfo18.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "Weather_PNG2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Weather_PNG2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Weather_PNG2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Weather_PNG2.ws";
connectAttr "place2dTexture2.o" "Weather_PNG2.uv";
connectAttr "place2dTexture2.ofs" "Weather_PNG2.fs";
connectAttr "WeatherSurface8.oc" "WeatherSurfaceSG8.ss";
connectAttr "WeatherSurfaceSG8.msg" "materialInfo19.sg";
connectAttr "WeatherSurface8.msg" "materialInfo19.m";
connectAttr "Weather_PNG3.oc" "Weather_MAT3.c";
connectAttr "Weather_PNG3.ot" "Weather_MAT3.it";
connectAttr "Weather_MAT3.oc" "Weather_SG3.ss";
connectAttr "Weather_PNG3.msg" "Weather_SG3.weatherTexture";
connectAttr "Weather_SG3.msg" "materialInfo20.sg";
connectAttr "Weather_MAT3.msg" "materialInfo20.m";
connectAttr "Weather_PNG3.msg" "materialInfo20.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "Weather_PNG3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Weather_PNG3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Weather_PNG3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Weather_PNG3.ws";
connectAttr "place2dTexture3.o" "Weather_PNG3.uv";
connectAttr "place2dTexture3.ofs" "Weather_PNG3.fs";
connectAttr "WeatherSurface9.oc" "WeatherSurfaceSG9.ss";
connectAttr "WeatherSurfaceSG9.msg" "materialInfo21.sg";
connectAttr "WeatherSurface9.msg" "materialInfo21.m";
connectAttr "Weather_PNG5.oc" "Weather_MAT5.c";
connectAttr "Weather_PNG5.ot" "Weather_MAT5.it";
connectAttr "Weather_MAT5.oc" "Weather_SG5.ss";
connectAttr "Weather_PNG5.msg" "Weather_SG5.weatherTexture";
connectAttr "Weather_SG5.msg" "materialInfo24.sg";
connectAttr ":defaultColorMgtGlobals.cme" "Weather_PNG5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Weather_PNG5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Weather_PNG5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Weather_PNG5.ws";
connectAttr "place2dTexture5.o" "Weather_PNG5.uv";
connectAttr "place2dTexture5.ofs" "Weather_PNG5.fs";
connectAttr "WeatherSurface11.oc" "WeatherSurfaceSG11.ss";
connectAttr "WeatherSurfaceSG11.msg" "materialInfo25.sg";
connectAttr "WeatherSurface36.oc" "WeatherSurfaceSG36.ss";
connectAttr "WeatherSurfaceSG36.msg" "materialInfo50.sg";
connectAttr "WeatherSurface36.msg" "materialInfo50.m";
connectAttr "WeatherSurface37.oc" "WeatherSurfaceSG37.ss";
connectAttr "WeatherSurfaceSG37.msg" "materialInfo51.sg";
connectAttr "WeatherSurface37.msg" "materialInfo51.m";
connectAttr "WeatherSurface38.oc" "WeatherSurfaceSG38.ss";
connectAttr "WeatherSurfaceSG38.msg" "materialInfo52.sg";
connectAttr "WeatherSurface38.msg" "materialInfo52.m";
connectAttr "WeatherSurface39.oc" "WeatherSurfaceSG39.ss";
connectAttr "WeatherSurfaceSG39.msg" "materialInfo53.sg";
connectAttr "WeatherSurface39.msg" "materialInfo53.m";
connectAttr "WeatherSurface40.oc" "WeatherSurfaceSG40.ss";
connectAttr "WeatherSurfaceSG40.msg" "materialInfo54.sg";
connectAttr "WeatherSurface40.msg" "materialInfo54.m";
connectAttr "WeatherSurface41.oc" "WeatherSurfaceSG41.ss";
connectAttr "WeatherSurfaceSG41.msg" "materialInfo55.sg";
connectAttr "WeatherSurface41.msg" "materialInfo55.m";
connectAttr "WeatherSurface42.oc" "WeatherSurfaceSG42.ss";
connectAttr "WeatherSurfaceSG42.msg" "materialInfo56.sg";
connectAttr "WeatherSurface42.msg" "materialInfo56.m";
connectAttr "WeatherSurface43.oc" "WeatherSurfaceSG43.ss";
connectAttr "WeatherSurfaceSG43.msg" "materialInfo57.sg";
connectAttr "WeatherSurface43.msg" "materialInfo57.m";
connectAttr "WeatherSurface44.oc" "WeatherSurfaceSG44.ss";
connectAttr "WeatherSurfaceSG44.msg" "materialInfo58.sg";
connectAttr "WeatherSurface44.msg" "materialInfo58.m";
connectAttr "WeatherSurface45.oc" "WeatherSurfaceSG45.ss";
connectAttr "WeatherSurfaceSG45.msg" "materialInfo59.sg";
connectAttr "WeatherSurface45.msg" "materialInfo59.m";
connectAttr "WeatherSurface46.oc" "WeatherSurfaceSG46.ss";
connectAttr "WeatherSurfaceSG46.msg" "materialInfo60.sg";
connectAttr "WeatherSurface46.msg" "materialInfo60.m";
connectAttr "WeatherSurface47.oc" "WeatherSurfaceSG47.ss";
connectAttr "WeatherSurfaceSG47.msg" "materialInfo61.sg";
connectAttr "WeatherSurface47.msg" "materialInfo61.m";
connectAttr "WeatherSurface48.oc" "WeatherSurfaceSG48.ss";
connectAttr "WeatherSurfaceSG48.msg" "materialInfo62.sg";
connectAttr "WeatherSurface48.msg" "materialInfo62.m";
connectAttr "WeatherSurface49.oc" "WeatherSurfaceSG49.ss";
connectAttr "WeatherSurfaceSG49.msg" "materialInfo63.sg";
connectAttr "WeatherSurface49.msg" "materialInfo63.m";
connectAttr "WeatherSurface50.oc" "WeatherSurfaceSG50.ss";
connectAttr "WeatherSurfaceSG50.msg" "materialInfo64.sg";
connectAttr "WeatherSurface50.msg" "materialInfo64.m";
connectAttr "WeatherSurface51.oc" "WeatherSurfaceSG51.ss";
connectAttr "WeatherSurfaceSG51.msg" "materialInfo65.sg";
connectAttr "WeatherSurface51.msg" "materialInfo65.m";
connectAttr "WeatherSurface52.oc" "WeatherSurfaceSG52.ss";
connectAttr "WeatherSurfaceSG52.msg" "materialInfo66.sg";
connectAttr "WeatherSurface52.msg" "materialInfo66.m";
connectAttr "WeatherSurface53.oc" "WeatherSurfaceSG53.ss";
connectAttr "WeatherSurfaceSG53.msg" "materialInfo67.sg";
connectAttr "WeatherSurface53.msg" "materialInfo67.m";
connectAttr "WeatherSurface60.oc" "WeatherSurfaceSG60.ss";
connectAttr "WeatherSurfaceSG60.msg" "materialInfo74.sg";
connectAttr "WeatherSurface60.msg" "materialInfo74.m";
connectAttr "WeatherSurface61.oc" "WeatherSurfaceSG61.ss";
connectAttr "WeatherSurfaceSG61.msg" "materialInfo75.sg";
connectAttr "WeatherSurface61.msg" "materialInfo75.m";
connectAttr "WeatherSurface62.oc" "WeatherSurfaceSG62.ss";
connectAttr "WeatherSurfaceSG62.msg" "materialInfo76.sg";
connectAttr "WeatherSurface62.msg" "materialInfo76.m";
connectAttr "WeatherSurface63.oc" "WeatherSurfaceSG63.ss";
connectAttr "WeatherSurfaceSG63.msg" "materialInfo77.sg";
connectAttr "WeatherSurface63.msg" "materialInfo77.m";
connectAttr "WeatherSurface64.oc" "WeatherSurfaceSG64.ss";
connectAttr "WeatherSurfaceSG64.msg" "materialInfo78.sg";
connectAttr "WeatherSurface64.msg" "materialInfo78.m";
connectAttr "WeatherSurface65.oc" "WeatherSurfaceSG65.ss";
connectAttr "WeatherSurfaceSG65.msg" "materialInfo79.sg";
connectAttr "WeatherSurface65.msg" "materialInfo79.m";
connectAttr "WeatherSurface72.oc" "WeatherSurfaceSG72.ss";
connectAttr "WeatherSurfaceSG72.msg" "materialInfo87.sg";
connectAttr "WeatherSurface72.msg" "materialInfo87.m";
connectAttr "WeatherSurface73.oc" "WeatherSurfaceSG73.ss";
connectAttr "WeatherSurfaceSG73.msg" "materialInfo88.sg";
connectAttr "WeatherSurface73.msg" "materialInfo88.m";
connectAttr "WeatherSurface74.oc" "WeatherSurfaceSG74.ss";
connectAttr "WeatherSurfaceSG74.msg" "materialInfo89.sg";
connectAttr "WeatherSurface74.msg" "materialInfo89.m";
connectAttr "WeatherSurface75.oc" "WeatherSurfaceSG75.ss";
connectAttr "WeatherSurfaceSG75.msg" "materialInfo90.sg";
connectAttr "WeatherSurface75.msg" "materialInfo90.m";
connectAttr "WeatherSurface76.oc" "WeatherSurfaceSG76.ss";
connectAttr "WeatherSurfaceSG76.msg" "materialInfo91.sg";
connectAttr "WeatherSurface76.msg" "materialInfo91.m";
connectAttr "WeatherSurface77.oc" "WeatherSurfaceSG77.ss";
connectAttr "WeatherSurfaceSG77.msg" "materialInfo92.sg";
connectAttr "WeatherSurface77.msg" "materialInfo92.m";
connectAttr "PuddleWater2.oc" "PuddleWaterSG2.ss";
connectAttr "PuddleWaterSG2.msg" "materialInfo93.sg";
connectAttr "PuddleWater2.msg" "materialInfo93.m";
connectAttr "WeatherSurface78.oc" "WeatherSurfaceSG78.ss";
connectAttr "WeatherSurfaceSG78.msg" "materialInfo94.sg";
connectAttr "WeatherSurface78.msg" "materialInfo94.m";
connectAttr "WeatherSurface79.oc" "WeatherSurfaceSG79.ss";
connectAttr "WeatherSurfaceSG79.msg" "materialInfo95.sg";
connectAttr "WeatherSurface79.msg" "materialInfo95.m";
connectAttr "WeatherSurface80.oc" "WeatherSurfaceSG80.ss";
connectAttr "WeatherSurfaceSG80.msg" "materialInfo96.sg";
connectAttr "WeatherSurface80.msg" "materialInfo96.m";
connectAttr "WeatherSurface81.oc" "WeatherSurfaceSG81.ss";
connectAttr "WeatherSurfaceSG81.msg" "materialInfo97.sg";
connectAttr "WeatherSurface81.msg" "materialInfo97.m";
connectAttr "WeatherSurface82.oc" "WeatherSurfaceSG82.ss";
connectAttr "WeatherSurfaceSG82.msg" "materialInfo98.sg";
connectAttr "WeatherSurface82.msg" "materialInfo98.m";
connectAttr "WeatherSurface83.oc" "WeatherSurfaceSG83.ss";
connectAttr "WeatherSurfaceSG83.msg" "materialInfo99.sg";
connectAttr "WeatherSurface83.msg" "materialInfo99.m";
connectAttr "Weather_PNG8.oc" "Weather_MAT8.c";
connectAttr "Weather_PNG8.ot" "Weather_MAT8.it";
connectAttr "Weather_MAT8.oc" "Weather_SG8.ss";
connectAttr "Weather_PNG8.msg" "Weather_SG8.weatherTexture";
connectAttr "Weather_SG8.msg" "materialInfo104.sg";
connectAttr "Weather_MAT8.msg" "materialInfo104.m";
connectAttr "Weather_PNG8.msg" "materialInfo104.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "Weather_PNG8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Weather_PNG8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Weather_PNG8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Weather_PNG8.ws";
connectAttr "place2dTexture8.o" "Weather_PNG8.uv";
connectAttr "place2dTexture8.ofs" "Weather_PNG8.fs";
connectAttr "WeatherSurface86.oc" "WeatherSurfaceSG86.ss";
connectAttr "WeatherSurfaceSG86.msg" "materialInfo105.sg";
connectAttr "WeatherSurface86.msg" "materialInfo105.m";
connectAttr "Weather_PNG9.oc" "Weather_MAT9.c";
connectAttr "Weather_PNG9.ot" "Weather_MAT9.it";
connectAttr "Weather_MAT9.oc" "Weather_SG9.ss";
connectAttr "Weather_PNG9.msg" "Weather_SG9.weatherTexture";
connectAttr "Weather_SG9.msg" "materialInfo106.sg";
connectAttr "Weather_MAT9.msg" "materialInfo106.m";
connectAttr "Weather_PNG9.msg" "materialInfo106.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "Weather_PNG9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Weather_PNG9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Weather_PNG9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Weather_PNG9.ws";
connectAttr "place2dTexture9.o" "Weather_PNG9.uv";
connectAttr "place2dTexture9.ofs" "Weather_PNG9.fs";
connectAttr "WeatherSurface87.oc" "WeatherSurfaceSG87.ss";
connectAttr "WeatherSurfaceSG87.msg" "materialInfo107.sg";
connectAttr "WeatherSurface87.msg" "materialInfo107.m";
connectAttr "WeatherSurface88.oc" "WeatherSurfaceSG88.ss";
connectAttr "WeatherSurfaceSG88.msg" "materialInfo108.sg";
connectAttr "WeatherSurface88.msg" "materialInfo108.m";
connectAttr "WeatherSurface89.oc" "WeatherSurfaceSG89.ss";
connectAttr "WeatherSurfaceSG89.msg" "materialInfo109.sg";
connectAttr "WeatherSurface89.msg" "materialInfo109.m";
connectAttr "WeatherSurface90.oc" "WeatherSurfaceSG90.ss";
connectAttr "WeatherSurfaceSG90.msg" "materialInfo110.sg";
connectAttr "WeatherSurface90.msg" "materialInfo110.m";
connectAttr "WeatherSurface91.oc" "WeatherSurfaceSG91.ss";
connectAttr "WeatherSurfaceSG91.msg" "materialInfo111.sg";
connectAttr "WeatherSurface91.msg" "materialInfo111.m";
connectAttr "WeatherSurface92.oc" "WeatherSurfaceSG92.ss";
connectAttr "WeatherSurfaceSG92.msg" "materialInfo112.sg";
connectAttr "WeatherSurface92.msg" "materialInfo112.m";
connectAttr "WeatherSurface93.oc" "WeatherSurfaceSG93.ss";
connectAttr "WeatherSurfaceSG93.msg" "materialInfo113.sg";
connectAttr "WeatherSurface93.msg" "materialInfo113.m";
connectAttr "Weather_PNG10.oc" "Weather_MAT10.c";
connectAttr "Weather_PNG10.ot" "Weather_MAT10.it";
connectAttr "Weather_MAT10.oc" "Weather_SG10.ss";
connectAttr "Weather_PNG10.msg" "Weather_SG10.weatherTexture";
connectAttr "Weather_SG10.msg" "materialInfo114.sg";
connectAttr "Weather_MAT10.msg" "materialInfo114.m";
connectAttr "Weather_PNG10.msg" "materialInfo114.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "Weather_PNG10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Weather_PNG10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Weather_PNG10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Weather_PNG10.ws";
connectAttr "place2dTexture10.o" "Weather_PNG10.uv";
connectAttr "place2dTexture10.ofs" "Weather_PNG10.fs";
connectAttr "WeatherSurface94.oc" "WeatherSurfaceSG94.ss";
connectAttr "WeatherSurfaceSG94.msg" "materialInfo115.sg";
connectAttr "WeatherSurface94.msg" "materialInfo115.m";
connectAttr "WeatherSurface95.oc" "WeatherSurfaceSG95.ss";
connectAttr "WeatherSurfaceSG95.msg" "materialInfo116.sg";
connectAttr "WeatherSurface95.msg" "materialInfo116.m";
connectAttr "WeatherSurface96.oc" "WeatherSurfaceSG96.ss";
connectAttr "WeatherSurfaceSG96.msg" "materialInfo117.sg";
connectAttr "WeatherSurface96.msg" "materialInfo117.m";
connectAttr "WeatherSurface97.oc" "WeatherSurfaceSG97.ss";
connectAttr "WeatherSurfaceSG97.msg" "materialInfo118.sg";
connectAttr "WeatherSurface97.msg" "materialInfo118.m";
connectAttr "WeatherSurface98.oc" "WeatherSurfaceSG98.ss";
connectAttr "WeatherSurfaceSG98.msg" "materialInfo119.sg";
connectAttr "WeatherSurface98.msg" "materialInfo119.m";
connectAttr "WeatherSurface99.oc" "WeatherSurfaceSG99.ss";
connectAttr "WeatherSurfaceSG99.msg" "materialInfo120.sg";
connectAttr "WeatherSurface99.msg" "materialInfo120.m";
connectAttr "WeatherSurface100.oc" "WeatherSurfaceSG100.ss";
connectAttr "WeatherSurfaceSG100.msg" "materialInfo121.sg";
connectAttr "WeatherSurface100.msg" "materialInfo121.m";
connectAttr "WeatherSurface101.oc" "WeatherSurfaceSG101.ss";
connectAttr "WeatherSurfaceSG101.msg" "materialInfo122.sg";
connectAttr "WeatherSurface101.msg" "materialInfo122.m";
connectAttr "WeatherSurface102.oc" "WeatherSurfaceSG102.ss";
connectAttr "WeatherSurfaceSG102.msg" "materialInfo123.sg";
connectAttr "WeatherSurface102.msg" "materialInfo123.m";
connectAttr "WeatherSurface103.oc" "WeatherSurfaceSG103.ss";
connectAttr "WeatherSurfaceSG103.msg" "materialInfo124.sg";
connectAttr "WeatherSurface103.msg" "materialInfo124.m";
connectAttr "WeatherSurface104.oc" "WeatherSurfaceSG104.ss";
connectAttr "WeatherSurfaceSG104.msg" "materialInfo125.sg";
connectAttr "WeatherSurface104.msg" "materialInfo125.m";
connectAttr "WeatherSurface105.oc" "WeatherSurfaceSG105.ss";
connectAttr "WeatherSurfaceSG105.msg" "materialInfo126.sg";
connectAttr "WeatherSurface105.msg" "materialInfo126.m";
connectAttr "WeatherSurface106.oc" "WeatherSurfaceSG106.ss";
connectAttr "WeatherSurfaceSG106.msg" "materialInfo127.sg";
connectAttr "WeatherSurface106.msg" "materialInfo127.m";
connectAttr "WeatherSurface107.oc" "WeatherSurfaceSG107.ss";
connectAttr "WeatherSurfaceSG107.msg" "materialInfo128.sg";
connectAttr "WeatherSurface107.msg" "materialInfo128.m";
connectAttr "WeatherSurface108.oc" "WeatherSurfaceSG108.ss";
connectAttr "WeatherSurfaceSG108.msg" "materialInfo129.sg";
connectAttr "WeatherSurface108.msg" "materialInfo129.m";
connectAttr "WeatherSurface109.oc" "WeatherSurfaceSG109.ss";
connectAttr "WeatherSurfaceSG109.msg" "materialInfo130.sg";
connectAttr "WeatherSurface109.msg" "materialInfo130.m";
connectAttr "WeatherSurface110.oc" "WeatherSurfaceSG110.ss";
connectAttr "WeatherSurfaceSG110.msg" "materialInfo131.sg";
connectAttr "WeatherSurface110.msg" "materialInfo131.m";
connectAttr "WeatherSurface111.oc" "WeatherSurfaceSG111.ss";
connectAttr "WeatherSurfaceSG111.msg" "materialInfo132.sg";
connectAttr "WeatherSurface111.msg" "materialInfo132.m";
connectAttr "WeatherSurface112.oc" "WeatherSurfaceSG112.ss";
connectAttr "WeatherSurfaceSG112.msg" "materialInfo133.sg";
connectAttr "WeatherSurface112.msg" "materialInfo133.m";
connectAttr "PuddleWater3.oc" "PuddleWaterSG3.ss";
connectAttr "PuddleWaterSG3.msg" "materialInfo134.sg";
connectAttr "PuddleWater3.msg" "materialInfo134.m";
connectAttr "LightningEmission1.oc" "set1.ss";
connectAttr "set1.msg" "materialInfo135.sg";
connectAttr "LightningEmission1.msg" "materialInfo135.m";
connectAttr "WeatherSurface113.oc" "WeatherSurfaceSG113.ss";
connectAttr "WeatherSurfaceSG113.msg" "materialInfo136.sg";
connectAttr "WeatherSurface113.msg" "materialInfo136.m";
connectAttr "WeatherSurface114.oc" "WeatherSurfaceSG114.ss";
connectAttr "WeatherSurfaceSG114.msg" "materialInfo137.sg";
connectAttr "WeatherSurface114.msg" "materialInfo137.m";
connectAttr "WeatherSurface115.oc" "WeatherSurfaceSG115.ss";
connectAttr "WeatherSurfaceSG115.msg" "materialInfo138.sg";
connectAttr "WeatherSurface115.msg" "materialInfo138.m";
connectAttr "WeatherSurface116.oc" "WeatherSurfaceSG116.ss";
connectAttr "WeatherSurfaceSG116.msg" "materialInfo139.sg";
connectAttr "WeatherSurface116.msg" "materialInfo139.m";
connectAttr "WeatherSurface117.oc" "WeatherSurfaceSG117.ss";
connectAttr "WeatherSurfaceSG117.msg" "materialInfo140.sg";
connectAttr "WeatherSurface117.msg" "materialInfo140.m";
connectAttr "WeatherSurface118.oc" "WeatherSurfaceSG118.ss";
connectAttr "WeatherSurfaceSG118.msg" "materialInfo141.sg";
connectAttr "WeatherSurface118.msg" "materialInfo141.m";
connectAttr "SoftAirEdge1.oc" "AirPreview1.it";
connectAttr "AirPreview1.oc" "set2.ss";
connectAttr "set2.msg" "materialInfo142.sg";
connectAttr "AirPreview1.msg" "materialInfo142.m";
connectAttr "WeatherSurface119.oc" "WeatherSurfaceSG119.ss";
connectAttr "WeatherSurfaceSG119.msg" "materialInfo143.sg";
connectAttr "WeatherSurface120.oc" "WeatherSurfaceSG120.ss";
connectAttr "WeatherSurfaceSG120.msg" "materialInfo144.sg";
connectAttr "WeatherSurface121.oc" "WeatherSurfaceSG121.ss";
connectAttr "WeatherSurfaceSG121.msg" "materialInfo145.sg";
connectAttr "WeatherSurface122.oc" "WeatherSurfaceSG122.ss";
connectAttr "WeatherSurfaceSG122.msg" "materialInfo146.sg";
connectAttr "WeatherSurface123.oc" "WeatherSurfaceSG123.ss";
connectAttr "WeatherSurfaceSG123.msg" "materialInfo147.sg";
connectAttr "WeatherSurface124.oc" "WeatherSurfaceSG124.ss";
connectAttr "WeatherSurfaceSG124.msg" "materialInfo148.sg";
connectAttr "SoftAirEdge2.oc" "AirPreview2.it";
connectAttr "AirPreview2.oc" "set3.ss";
connectAttr "set3.msg" "materialInfo149.sg";
connectAttr "Weather_PNG11.oc" "Weather_MAT11.c";
connectAttr "Weather_PNG11.ot" "Weather_MAT11.it";
connectAttr "Weather_MAT11.oc" "Weather_SG11.ss";
connectAttr "Weather_PNG11.msg" "Weather_SG11.weatherTexture";
connectAttr "Weather_SG11.msg" "materialInfo150.sg";
connectAttr "Weather_MAT11.msg" "materialInfo150.m";
connectAttr "Weather_PNG11.msg" "materialInfo150.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "Weather_PNG11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Weather_PNG11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Weather_PNG11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Weather_PNG11.ws";
connectAttr "place2dTexture11.o" "Weather_PNG11.uv";
connectAttr "place2dTexture11.ofs" "Weather_PNG11.fs";
connectAttr "WeatherSurface125.oc" "WeatherSurfaceSG125.ss";
connectAttr "WeatherSurfaceSG125.msg" "materialInfo151.sg";
connectAttr "WeatherSurface125.msg" "materialInfo151.m";
connectAttr "WeatherSurface126.oc" "WeatherSurfaceSG126.ss";
connectAttr "WeatherSurfaceSG126.msg" "materialInfo152.sg";
connectAttr "WeatherSurface126.msg" "materialInfo152.m";
connectAttr "WeatherSurface127.oc" "WeatherSurfaceSG127.ss";
connectAttr "WeatherSurfaceSG127.msg" "materialInfo153.sg";
connectAttr "WeatherSurface127.msg" "materialInfo153.m";
connectAttr "WeatherSurface128.oc" "WeatherSurfaceSG128.ss";
connectAttr "WeatherSurfaceSG128.msg" "materialInfo154.sg";
connectAttr "WeatherSurface128.msg" "materialInfo154.m";
connectAttr "WeatherSurface129.oc" "WeatherSurfaceSG129.ss";
connectAttr "WeatherSurfaceSG129.msg" "materialInfo155.sg";
connectAttr "WeatherSurface129.msg" "materialInfo155.m";
connectAttr "WeatherSurface130.oc" "WeatherSurfaceSG130.ss";
connectAttr "WeatherSurfaceSG130.msg" "materialInfo156.sg";
connectAttr "WeatherSurface130.msg" "materialInfo156.m";
connectAttr "WeatherSurface131.oc" "WeatherSurfaceSG131.ss";
connectAttr "WeatherSurfaceSG131.msg" "materialInfo157.sg";
connectAttr "WeatherSurface131.msg" "materialInfo157.m";
connectAttr "WeatherSurface132.oc" "WeatherSurfaceSG132.ss";
connectAttr "WeatherSurfaceSG132.msg" "materialInfo158.sg";
connectAttr "WeatherSurface132.msg" "materialInfo158.m";
connectAttr "WeatherSurface133.oc" "WeatherSurfaceSG133.ss";
connectAttr "WeatherSurfaceSG133.msg" "materialInfo159.sg";
connectAttr "WeatherSurface133.msg" "materialInfo159.m";
connectAttr "WeatherSurface134.oc" "WeatherSurfaceSG134.ss";
connectAttr "WeatherSurfaceSG134.msg" "materialInfo160.sg";
connectAttr "WeatherSurface134.msg" "materialInfo160.m";
connectAttr "WeatherSurface135.oc" "WeatherSurfaceSG135.ss";
connectAttr "WeatherSurfaceSG135.msg" "materialInfo161.sg";
connectAttr "WeatherSurface135.msg" "materialInfo161.m";
connectAttr "WeatherSurface136.oc" "WeatherSurfaceSG136.ss";
connectAttr "WeatherSurfaceSG136.msg" "materialInfo162.sg";
connectAttr "WeatherSurface136.msg" "materialInfo162.m";
connectAttr "WeatherSurface137.oc" "WeatherSurfaceSG137.ss";
connectAttr "WeatherSurfaceSG137.msg" "materialInfo163.sg";
connectAttr "WeatherSurface137.msg" "materialInfo163.m";
connectAttr "PuddleWater4.oc" "PuddleWaterSG4.ss";
connectAttr "PuddleWaterSG4.msg" "materialInfo164.sg";
connectAttr "PuddleWater4.msg" "materialInfo164.m";
connectAttr "LightningEmission2.oc" "set4.ss";
connectAttr "set4.msg" "materialInfo165.sg";
connectAttr "LightningEmission2.msg" "materialInfo165.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG1.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG2.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG3.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG4.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG5.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG6.pa" ":renderPartition.st" -na;
connectAttr "Weather_SG1.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG7.pa" ":renderPartition.st" -na;
connectAttr "Weather_SG2.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG8.pa" ":renderPartition.st" -na;
connectAttr "Weather_SG3.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG9.pa" ":renderPartition.st" -na;
connectAttr "Weather_SG5.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG11.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG36.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG37.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG38.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG39.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG40.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG41.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG42.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG43.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG44.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG45.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG46.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG47.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG48.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG49.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG50.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG51.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG52.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG53.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG60.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG61.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG62.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG63.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG64.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG65.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG72.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG73.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG74.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG75.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG76.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG77.pa" ":renderPartition.st" -na;
connectAttr "PuddleWaterSG2.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG78.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG79.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG80.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG81.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG82.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG83.pa" ":renderPartition.st" -na;
connectAttr "Weather_SG8.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG86.pa" ":renderPartition.st" -na;
connectAttr "Weather_SG9.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG87.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG88.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG89.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG90.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG91.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG92.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG93.pa" ":renderPartition.st" -na;
connectAttr "Weather_SG10.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG94.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG95.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG96.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG97.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG98.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG99.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG100.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG101.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG102.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG103.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG104.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG105.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG106.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG107.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG108.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG109.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG110.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG111.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG112.pa" ":renderPartition.st" -na;
connectAttr "PuddleWaterSG3.pa" ":renderPartition.st" -na;
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG113.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG114.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG115.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG116.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG117.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG118.pa" ":renderPartition.st" -na;
connectAttr "set2.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG119.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG120.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG121.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG122.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG123.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG124.pa" ":renderPartition.st" -na;
connectAttr "set3.pa" ":renderPartition.st" -na;
connectAttr "Weather_SG11.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG125.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG126.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG127.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG128.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG129.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG130.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG131.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG132.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG133.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG134.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG135.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG136.pa" ":renderPartition.st" -na;
connectAttr "WeatherSurfaceSG137.pa" ":renderPartition.st" -na;
connectAttr "PuddleWaterSG4.pa" ":renderPartition.st" -na;
connectAttr "set4.pa" ":renderPartition.st" -na;
connectAttr "Cream.msg" ":defaultShaderList1.s" -na;
connectAttr "Red.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert7.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert8.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert9.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface4.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface5.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface6.msg" ":defaultShaderList1.s" -na;
connectAttr "Weather_MAT1.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface7.msg" ":defaultShaderList1.s" -na;
connectAttr "Weather_MAT2.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface8.msg" ":defaultShaderList1.s" -na;
connectAttr "Weather_MAT3.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface9.msg" ":defaultShaderList1.s" -na;
connectAttr "Weather_MAT5.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface11.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface36.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface37.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface38.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface39.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface40.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface41.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface42.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface43.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface44.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface45.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface46.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface47.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface48.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface49.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface50.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface51.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface52.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface53.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface60.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface61.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface62.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface63.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface64.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface65.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface72.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface73.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface74.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface75.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface76.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface77.msg" ":defaultShaderList1.s" -na;
connectAttr "PuddleWater2.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface78.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface79.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface80.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface81.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface82.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface83.msg" ":defaultShaderList1.s" -na;
connectAttr "Weather_MAT8.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface86.msg" ":defaultShaderList1.s" -na;
connectAttr "Weather_MAT9.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface87.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface88.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface89.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface90.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface91.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface92.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface93.msg" ":defaultShaderList1.s" -na;
connectAttr "Weather_MAT10.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface94.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface95.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface96.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface97.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface98.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface99.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface100.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface101.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface102.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface103.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface104.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface105.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface106.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface107.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface108.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface109.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface110.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface111.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface112.msg" ":defaultShaderList1.s" -na;
connectAttr "PuddleWater3.msg" ":defaultShaderList1.s" -na;
connectAttr "LightningEmission1.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface113.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface114.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface115.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface116.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface117.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface118.msg" ":defaultShaderList1.s" -na;
connectAttr "AirPreview1.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface119.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface120.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface121.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface122.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface123.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface124.msg" ":defaultShaderList1.s" -na;
connectAttr "AirPreview2.msg" ":defaultShaderList1.s" -na;
connectAttr "Weather_MAT11.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface125.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface126.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface127.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface128.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface129.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface130.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface131.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface132.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface133.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface134.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface135.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface136.msg" ":defaultShaderList1.s" -na;
connectAttr "WeatherSurface137.msg" ":defaultShaderList1.s" -na;
connectAttr "PuddleWater4.msg" ":defaultShaderList1.s" -na;
connectAttr "LightningEmission2.msg" ":defaultShaderList1.s" -na;
connectAttr "mia_physicalsun1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mia_physicalsky1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "sunShape.ltd" ":lightList1.l" -na;
connectAttr "Weather_PNG1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Weather_PNG2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Weather_PNG3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Weather_PNG5.msg" ":defaultTextureList1.tx" -na;
connectAttr "Weather_PNG8.msg" ":defaultTextureList1.tx" -na;
connectAttr "Weather_PNG9.msg" ":defaultTextureList1.tx" -na;
connectAttr "Weather_PNG10.msg" ":defaultTextureList1.tx" -na;
connectAttr "SoftAirEdge1.msg" ":defaultTextureList1.tx" -na;
connectAttr "SoftAirEdge2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Weather_PNG11.msg" ":defaultTextureList1.tx" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube47|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube48|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube49|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube50|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube51|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube52|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube53|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube54|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube55|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube56|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube57|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube60|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube61|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube62|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube63|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube64|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube65|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube66|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube67|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube68|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube69|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube70|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube71|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube72|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube73|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube74|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube75|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube78|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube79|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube80|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube81|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube82|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube83|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube84|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube85|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube86|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube87|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube88|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube89|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube90|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube91|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube92|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube93|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube94|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube95|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube96|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube97|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube98|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube99|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube100|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube101|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube102|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube103|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube104|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube105|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube108|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube109|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube110|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube111|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube112|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube113|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube114|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube115|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube116|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube117|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube118|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube119|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube120|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube121|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube122|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube123|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube124|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube125|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube126|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube127|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube128|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube129|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube130|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube131|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube132|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube133|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube134|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube135|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube138|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube139|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube140|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube141|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube142|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube143|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube144|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube145|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube146|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube147|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube148|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube149|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube150|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube151|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube152|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube153|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube154|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube155|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube156|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube157|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube158|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube159|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube160|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube161|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube162|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube163|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube164|pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape48.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape166.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape167.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape168.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape169.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "sunDirection.iog" ":defaultLightSet.dsm" -na;
// End of 1.ma
