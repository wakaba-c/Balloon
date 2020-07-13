xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 130;
 -0.92718;1.52049;2.84889;,
 -1.64859;1.74222;2.70249;,
 -1.35153;0.15429;2.89566;,
 -0.24531;2.01126;-1.33860;,
 -0.77628;2.14218;-1.59381;,
 -0.65367;2.45898;-0.05433;,
 -0.13671;2.35257;-0.04176;,
 -1.04610;-0.17205;3.01206;,
 -0.42177;1.31994;2.74014;,
 -2.88402;1.88082;-2.50995;,
 -1.69575;1.72638;-2.67309;,
 -1.40811;0.15429;-3.07470;,
 -4.35048;0.91458;2.56863;,
 -2.80386;-0.85947;2.98905;,
 -2.79912;0.52650;2.87403;,
 -2.86986;-0.86343;-2.71248;,
 -2.85573;0.52650;-2.97429;,
 -4.21371;1.97190;-1.98285;,
 -4.39290;0.91062;-2.59362;,
 -4.18542;1.97586;1.94529;,
 -2.84157;1.88478;2.35947;,
 -0.99789;1.47294;-2.58525;,
 -0.51675;1.34622;-2.49741;,
 -1.14111;-0.16329;-2.98686;,
 -0.97431;-2.94054;0.10419;,
 -1.94865;-2.24601;0.15903;,
 -1.70436;-1.51968;-2.62290;,
 -0.54051;-1.80414;-3.12579;,
 -2.58696;-2.06730;0.21759;,
 -2.78970;-1.23177;2.98278;,
 -4.30803;-1.06938;2.45058;,
 -1.67691;2.82729;-0.09198;,
 -1.73349;2.47485;-1.63143;,
 -4.35990;-1.06938;-2.59485;,
 -2.85102;-1.23570;-2.68566;,
 -2.58696;-2.06730;0.21759;,
 -2.86515;2.71242;-1.53942;,
 -0.56880;-2.15310;2.96637;,
 -1.04610;-0.17205;3.01206;,
 -1.62969;-1.55028;2.84889;,
 -4.08642;2.66094;-1.21311;,
 -4.33065;2.36034;-1.64277;,
 -4.35303;2.77911;-0.09858;,
 -1.94865;-2.24601;0.15903;,
 -2.78970;-1.23177;2.98278;,
 -9.14592;-1.19586;-3.03150;,
 -9.10347;1.16178;-2.74173;,
 -6.38277;1.35510;-2.82873;,
 -6.38748;-1.19118;-2.88531;,
 -9.08463;2.66595;-0.10800;,
 -6.25074;2.61408;-0.08916;,
 -5.11434;1.38336;-2.76912;,
 -5.09076;-1.22889;-3.03432;,
 -5.12940;2.75805;-0.10800;,
 -6.20829;1.37868;2.73309;,
 -5.20392;1.39284;2.94369;,
 -4.56753;0.81756;2.58441;,
 -4.38981;2.21799;1.56120;,
 -4.74882;2.03184;1.71210;,
 -4.51554;0.81756;-2.72613;,
 -4.19364;1.95669;-1.86999;,
 -4.19364;1.95669;-1.86999;,
 -4.51554;0.81756;-2.72613;,
 -4.73073;1.18983;-2.58393;,
 -4.74882;2.03184;1.71210;,
 -4.71966;2.76972;-0.10329;,
 -4.85499;1.28907;2.78718;,
 -4.06284;2.59050;1.13373;,
 -5.33214;-1.24305;2.97987;,
 -4.84557;-1.06857;2.98521;,
 0.30354;2.30757;-0.03729;,
 0.13848;1.36452;-2.62125;,
 -0.24531;2.01126;-1.33860;,
 -0.13671;2.35257;-0.04176;,
 0.15264;1.23720;3.08424;,
 -0.19104;2.01564;1.42659;,
 -0.19104;2.01564;1.42659;,
 -0.73854;2.15802;1.66083;,
 -1.71462;2.54214;1.61064;,
 -2.84157;2.98566;-0.08361;,
 -2.84157;2.72037;1.37637;,
 -4.05813;2.83914;-0.06270;,
 -1.14111;-0.16329;-2.98686;,
 -0.51675;1.34622;-2.49741;,
 -11.79591;1.72761;-0.17874;,
 -11.82891;0.69024;1.69794;,
 -11.57901;0.81756;1.97142;,
 -11.54130;2.02938;-0.17874;,
 -11.80062;-0.87525;1.73094;,
 -11.55072;-1.00728;2.00916;,
 -11.79120;-1.80414;-0.20703;,
 -11.53185;-2.06349;-0.21174;,
 -11.79120;-1.80414;-0.20703;,
 -12.01281;-0.88935;-2.08842;,
 -11.65467;-1.02612;-2.29860;,
 -11.53185;-2.06349;-0.21174;,
 -12.04110;0.69969;-2.02242;,
 -11.79591;0.82698;-2.31948;,
 -9.07518;-1.23828;2.83905;,
 -9.11292;1.17591;2.74944;,
 -9.01860;-2.31813;0.08532;,
 -9.01860;-2.31813;0.08532;,
 -3.81381;-0.73674;2.78616;,
 -4.56753;0.81756;2.58441;,
 -0.97431;-2.94054;0.10419;,
 -0.42177;1.31994;2.74014;,
 -6.20829;-1.21473;2.80605;,
 -6.28845;-2.34171;0.17019;,
 -5.12379;-2.40300;0.15606;,
 -6.28845;-2.34171;0.17019;,
 -5.12379;-2.40300;0.15606;,
 -4.73712;-1.13964;-2.88060;,
 -4.69941;-2.31342;0.14190;,
 -4.69941;-2.31342;0.14190;,
 -11.99868;-1.83243;-0.24474;,
 -13.24350;-1.81359;-0.29661;,
 -12.98889;-0.97896;-2.05542;,
 -12.10713;-0.83751;1.79226;,
 -11.99868;-1.83243;-0.24474;,
 -13.62072;-1.00728;1.67436;,
 -13.24350;-1.81359;-0.29661;,
 -11.98923;1.84548;-0.21645;,
 -12.09768;0.77040;1.80168;,
 -13.26708;1.82193;-0.26832;,
 -13.63488;0.93543;1.69323;,
 -12.97944;0.83640;-2.07429;,
 -4.16187;-0.74469;-2.69400;,
 -2.85102;-1.23570;-2.68566;,
 -4.35990;-1.06938;-2.59485;,
 -4.30803;-1.06938;2.45058;;
 
 196;
 3;0,1,2;,
 3;3,4,5;,
 3;6,3,5;,
 3;0,2,7;,
 3;8,0,7;,
 3;9,10,11;,
 3;12,13,14;,
 3;11,15,16;,
 3;17,9,18;,
 3;19,12,20;,
 3;21,22,23;,
 3;11,21,23;,
 3;10,21,11;,
 3;24,25,26;,
 3;27,24,26;,
 3;22,21,4;,
 3;3,22,4;,
 3;28,29,30;,
 3;31,5,4;,
 3;32,31,4;,
 3;33,34,35;,
 3;32,10,9;,
 3;36,32,9;,
 3;37,38,39;,
 3;40,36,9;,
 3;17,40,9;,
 3;41,42,40;,
 3;43,39,29;,
 3;28,43,29;,
 3;2,13,44;,
 3;7,2,44;,
 3;45,46,47;,
 3;48,45,47;,
 3;49,50,47;,
 3;46,49,47;,
 3;48,47,51;,
 3;52,48,51;,
 3;47,50,53;,
 3;51,47,53;,
 3;50,54,55;,
 3;53,50,55;,
 3;56,12,57;,
 3;58,56,57;,
 3;18,59,60;,
 3;41,18,60;,
 3;61,62,63;,
 3;64,65,66;,
 3;57,12,19;,
 3;19,67,57;,
 3;68,69,66;,
 3;55,68,66;,
 3;70,71,72;,
 3;70,72,73;,
 3;74,70,75;,
 3;70,73,75;,
 3;0,8,76;,
 3;77,0,76;,
 3;77,78,1;,
 3;0,77,1;,
 3;31,79,80;,
 3;78,31,80;,
 3;79,81,67;,
 3;80,79,67;,
 3;67,42,57;,
 3;71,27,82;,
 3;83,71,82;,
 3;84,85,86;,
 3;87,84,86;,
 3;85,88,89;,
 3;86,85,89;,
 3;88,90,91;,
 3;89,88,91;,
 3;92,93,94;,
 3;95,92,94;,
 3;93,96,97;,
 3;94,93,97;,
 3;96,84,87;,
 3;97,96,87;,
 3;98,99,86;,
 3;89,98,86;,
 3;99,49,87;,
 3;86,99,87;,
 3;100,98,89;,
 3;91,100,89;,
 3;45,101,95;,
 3;94,45,95;,
 3;46,45,94;,
 3;97,46,94;,
 3;49,46,97;,
 3;87,49,97;,
 3;5,31,78;,
 3;77,5,78;,
 3;21,10,32;,
 3;4,21,32;,
 3;67,19,20;,
 3;80,67,20;,
 3;36,40,81;,
 3;79,36,81;,
 3;65,42,41;,
 3;60,65,41;,
 3;17,18,41;,
 3;67,81,42;,
 3;2,1,20;,
 3;42,65,58;,
 3;57,42,58;,
 3;79,31,32;,
 3;36,79,32;,
 3;5,77,76;,
 3;6,5,76;,
 3;42,81,40;,
 3;20,1,78;,
 3;80,20,78;,
 3;12,56,102;,
 3;82,26,34;,
 3;103,66,69;,
 3;2,20,14;,
 3;37,39,43;,
 3;104,37,43;,
 3;25,35,34;,
 3;26,25,34;,
 3;26,82,27;,
 3;75,105,74;,
 3;72,71,83;,
 3;54,106,68;,
 3;55,54,68;,
 3;106,107,108;,
 3;68,106,108;,
 3;109,48,52;,
 3;110,109,52;,
 3;63,111,52;,
 3;51,63,52;,
 3;41,40,17;,
 3;111,63,62;,
 3;66,103,64;,
 3;51,53,65;,
 3;63,51,65;,
 3;55,66,65;,
 3;53,55,65;,
 3;98,106,54;,
 3;99,98,54;,
 3;99,54,50;,
 3;49,99,50;,
 3;98,100,107;,
 3;106,98,107;,
 3;52,111,112;,
 3;110,52,112;,
 3;74,105,38;,
 3;37,74,38;,
 3;101,45,48;,
 3;109,101,48;,
 3;108,113,69;,
 3;68,108,69;,
 3;63,65,61;,
 3;114,115,116;,
 3;88,117,118;,
 3;90,88,118;,
 3;119,120,118;,
 3;117,119,118;,
 3;85,84,121;,
 3;122,85,121;,
 3;121,123,124;,
 3;122,121,124;,
 3;121,84,96;,
 3;85,122,117;,
 3;88,85,117;,
 3;119,117,122;,
 3;124,119,122;,
 3;114,116,93;,
 3;93,92,114;,
 3;121,96,125;,
 3;125,123,121;,
 3;125,96,93;,
 3;116,125,93;,
 3;18,9,16;,
 3;126,59,18;,
 3;127,128,126;,
 3;15,127,126;,
 3;129,44,13;,
 3;102,129,13;,
 3;18,15,126;,
 3;59,126,128;,
 3;129,102,56;,
 3;102,13,12;,
 3;29,39,38;,
 3;15,11,23;,
 3;127,15,23;,
 3;112,111,33;,
 3;30,69,113;,
 3;113,28,30;,
 3;33,35,112;,
 3;62,33,111;,
 3;69,30,103;,
 3;14,13,2;,
 3;14,20,12;,
 3;16,9,11;,
 3;16,15,18;;
 
 MeshMaterialList {
  9;
  196;
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.800000;0.677600;0.627200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.536800;0.690400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.254400;0.254400;0.254400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.065600;0.037600;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.775200;0.612000;0.489600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.112800;0.455200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.467200;0.078400;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.034400;0.034400;0.034400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  136;
  0.252800;0.967368;-0.017079;,
  0.014642;0.775456;-0.631232;,
  -0.441920;-0.534625;-0.720335;,
  -0.057556;0.619578;0.782822;,
  -0.083938;-0.043184;0.995535;,
  -0.516551;-0.849244;-0.109363;,
  -0.098110;0.130390;0.986597;,
  -0.016020;0.587326;0.809192;,
  0.154545;0.517513;0.841603;,
  0.301467;0.953447;0.007489;,
  0.343544;0.851211;-0.396759;,
  0.220141;0.908183;-0.356008;,
  0.152125;0.988177;-0.019076;,
  -0.103029;0.074190;0.991908;,
  0.018535;0.605806;0.795396;,
  0.082477;0.092444;-0.992296;,
  0.131622;0.563010;-0.815902;,
  -0.103945;0.581832;-0.806639;,
  -0.046861;0.220652;0.974226;,
  -0.145301;-0.053772;0.987925;,
  -0.224741;0.331652;0.916242;,
  -0.136878;0.073891;-0.987828;,
  -0.097876;-0.124893;-0.987331;,
  -0.003640;0.289369;-0.957211;,
  -0.164793;0.642857;-0.748049;,
  -0.122117;0.580049;0.805376;,
  -0.291178;0.671472;0.681426;,
  0.010205;0.024368;-0.999651;,
  0.146463;0.644070;-0.750815;,
  0.331224;0.521763;-0.786164;,
  -0.365785;-0.677006;-0.638642;,
  -0.386987;-0.920665;0.051152;,
  -0.103427;-0.756689;0.645542;,
  -0.219704;-0.937979;0.268190;,
  -0.112631;-0.993492;0.016947;,
  0.235543;0.971495;-0.026785;,
  0.207495;0.874449;-0.438502;,
  -0.207681;-0.943950;-0.256568;,
  0.140452;-0.929491;-0.341055;,
  -0.023097;0.926129;-0.376499;,
  -0.034506;-0.103079;0.994075;,
  -0.164123;0.882883;-0.439980;,
  -0.292756;0.953274;0.074587;,
  -0.207541;0.823827;-0.527481;,
  -0.026901;0.544383;-0.838405;,
  -0.163232;0.438470;-0.883798;,
  -0.087000;0.089929;-0.992141;,
  -0.003824;0.048031;-0.998839;,
  -0.065094;0.986167;0.152435;,
  -0.125567;0.976217;-0.176727;,
  0.186970;0.526816;-0.829161;,
  0.252217;0.106623;-0.961778;,
  -0.062051;0.991575;-0.113707;,
  0.049099;0.905792;0.420868;,
  -0.079182;0.912764;0.400740;,
  -0.329269;0.733557;0.594539;,
  0.271267;0.292629;0.916942;,
  -0.116753;0.846009;0.520228;,
  0.146186;0.632115;-0.760960;,
  0.266498;0.208086;-0.941105;,
  0.179149;0.450257;-0.874742;,
  -0.955661;0.277832;0.097576;,
  -0.998583;0.029091;-0.044553;,
  -0.224381;0.893158;0.389771;,
  0.467972;0.070270;0.880945;,
  -0.008413;0.032866;0.999424;,
  0.251410;0.903903;0.346052;,
  0.310494;0.869710;0.383663;,
  0.172527;0.899795;0.400754;,
  -0.021744;0.926233;0.376323;,
  0.013373;0.999892;-0.006042;,
  -0.145449;0.989236;-0.015996;,
  -0.579711;0.405797;0.706586;,
  -0.770983;0.226003;0.595406;,
  -0.747693;0.647912;0.145482;,
  -0.540708;0.839904;0.046866;,
  -0.561964;-0.485449;0.669728;,
  -0.479414;-0.721777;0.499199;,
  -0.455407;-0.890282;-0.001764;,
  -0.377045;-0.923100;-0.075653;,
  -0.456883;-0.457338;-0.762955;,
  -0.268813;-0.460210;-0.846136;,
  -0.500818;0.458758;-0.733977;,
  -0.783793;0.460928;-0.416191;,
  -0.163625;0.682161;0.712659;,
  -0.153769;0.028000;0.987710;,
  -0.071272;-0.997245;0.020563;,
  -0.237377;-0.112954;0.964828;,
  0.052420;0.500703;-0.864030;,
  0.035184;-0.896434;-0.441778;,
  -0.091682;0.028003;0.995394;,
  0.088811;-0.983822;0.155583;,
  -0.030258;-0.999369;0.018608;,
  0.213665;0.084337;-0.973260;,
  0.273654;-0.961496;-0.025263;,
  -0.013884;-0.999459;-0.029814;,
  0.052062;-0.997067;0.056105;,
  0.021515;-0.897889;0.439696;,
  0.018272;-0.912830;0.407931;,
  0.252174;0.966436;0.049081;,
  0.160407;0.389622;0.906898;,
  0.013932;0.897933;0.439912;,
  -0.016777;0.999048;-0.040279;,
  0.051915;-0.045404;-0.997619;,
  -0.366003;-0.889524;0.273475;,
  -0.084517;0.005079;0.996409;,
  0.019402;0.908118;-0.418264;,
  -0.200156;-0.531321;0.823186;,
  0.529661;0.302624;0.792387;,
  0.106162;0.008484;0.994313;,
  0.126359;0.129523;-0.983492;,
  -0.070694;-0.925471;0.372163;,
  -0.074023;-0.926113;-0.369912;,
  0.075425;0.994490;-0.072808;,
  -0.957709;-0.222092;-0.182944;,
  -0.060741;-0.163045;-0.984747;,
  -0.521211;-0.805199;0.282831;,
  -0.096735;0.029227;0.994881;,
  -0.045041;-0.921202;0.386469;,
  0.104732;-0.917173;0.384479;,
  -0.014977;-0.937582;-0.347442;,
  0.109165;-0.930646;-0.349259;,
  0.860059;0.376078;0.344767;,
  0.389057;-0.857084;-0.337700;,
  0.298876;-0.870544;0.390929;,
  0.388795;0.458631;0.799059;,
  0.521985;0.852895;-0.010069;,
  0.277640;0.597792;-0.752037;,
  0.162740;0.003826;0.986661;,
  0.198983;0.024248;0.979703;,
  -0.074260;-0.007799;0.997208;,
  -0.071462;-0.010209;0.997391;,
  -0.032851;-0.010217;-0.999408;,
  0.072607;-0.124672;-0.989538;,
  -0.333368;-0.028550;0.942364;,
  0.704453;0.046649;0.708216;;
  196;
  3;8,7,6;,
  3;11,10,9;,
  3;12,11,9;,
  3;8,6,13;,
  3;14,8,13;,
  3;17,16,15;,
  3;20,19,18;,
  3;15,22,21;,
  3;24,17,23;,
  3;26,20,25;,
  3;29,28,27;,
  3;15,29,27;,
  3;16,29,15;,
  3;5,31,30;,
  3;2,5,30;,
  3;28,29,10;,
  3;11,28,10;,
  3;34,33,32;,
  3;35,9,10;,
  3;36,35,10;,
  3;38,37,34;,
  3;36,16,17;,
  3;39,36,17;,
  3;4,13,40;,
  3;41,39,17;,
  3;24,41,17;,
  3;43,42,41;,
  3;31,104,33;,
  3;34,31,33;,
  3;6,19,105;,
  3;13,6,105;,
  3;46,45,44;,
  3;47,46,44;,
  3;49,48,106;,
  3;45,49,44;,
  3;47,44,50;,
  3;51,47,50;,
  3;44,48,52;,
  3;50,44,52;,
  3;48,54,53;,
  3;52,48,53;,
  3;56,20,55;,
  3;57,56,55;,
  3;23,59,58;,
  3;107,107,107;,
  3;58,59,60;,
  3;61,62,61;,
  3;55,20,26;,
  3;26,63,55;,
  3;65,64,108;,
  3;109,65,108;,
  3;0,1,11;,
  3;0,11,12;,
  3;3,0,66;,
  3;0,12,66;,
  3;8,14,66;,
  3;67,8,66;,
  3;67,68,7;,
  3;8,67,7;,
  3;35,70,69;,
  3;68,35,69;,
  3;70,71,63;,
  3;69,70,63;,
  3;63,42,55;,
  3;110,110,27;,
  3;28,1,27;,
  3;74,73,72;,
  3;75,74,72;,
  3;73,77,76;,
  3;72,73,76;,
  3;77,79,78;,
  3;76,77,78;,
  3;79,81,80;,
  3;78,79,80;,
  3;81,83,82;,
  3;80,81,82;,
  3;83,74,75;,
  3;82,83,75;,
  3;85,84,72;,
  3;76,85,72;,
  3;84,49,75;,
  3;72,84,75;,
  3;86,111,76;,
  3;78,86,76;,
  3;112,86,78;,
  3;80,112,78;,
  3;45,46,80;,
  3;82,45,80;,
  3;49,45,82;,
  3;75,49,82;,
  3;9,35,68;,
  3;67,9,68;,
  3;29,16,36;,
  3;10,29,36;,
  3;63,26,25;,
  3;69,63,25;,
  3;39,41,71;,
  3;70,39,71;,
  3;113,42,43;,
  3;114,62,114;,
  3;24,23,43;,
  3;63,71,42;,
  3;6,7,25;,
  3;42,113,57;,
  3;55,42,57;,
  3;70,35,36;,
  3;39,70,36;,
  3;9,67,66;,
  3;12,9,66;,
  3;42,71,41;,
  3;25,7,68;,
  3;69,25,68;,
  3;20,56,87;,
  3;27,30,115;,
  3;56,108,64;,
  3;6,25,18;,
  3;116,104,31;,
  3;5,116,31;,
  3;31,34,37;,
  3;30,31,37;,
  3;30,27,2;,
  3;66,14,3;,
  3;11,1,28;,
  3;117,90,65;,
  3;109,117,65;,
  3;118,92,91;,
  3;119,118,91;,
  3;92,120,121;,
  3;91,92,121;,
  3;60,93,51;,
  3;50,60,51;,
  3;43,41,24;,
  3;93,60,59;,
  3;108,56,122;,
  3;50,52,113;,
  3;60,50,113;,
  3;53,108,113;,
  3;52,53,113;,
  3;85,90,117;,
  3;84,85,117;,
  3;84,54,48;,
  3;49,84,48;,
  3;111,86,92;,
  3;118,111,92;,
  3;121,123,94;,
  3;91,121,94;,
  3;3,14,13;,
  3;4,3,13;,
  3;86,112,120;,
  3;92,86,120;,
  3;91,94,124;,
  3;119,91,124;,
  3;60,113,58;,
  3;96,95,89;,
  3;77,97,96;,
  3;79,77,96;,
  3;98,95,96;,
  3;97,98,96;,
  3;125,126,99;,
  3;100,125,99;,
  3;99,102,101;,
  3;100,99,101;,
  3;99,126,127;,
  3;125,100,128;,
  3;129,125,128;,
  3;130,128,100;,
  3;131,130,100;,
  3;96,89,81;,
  3;81,79,96;,
  3;99,127,88;,
  3;88,102,99;,
  3;88,127,81;,
  3;132,88,81;,
  3;23,17,21;,
  3;103,59,23;,
  3;115,133,103;,
  3;22,115,103;,
  3;134,105,19;,
  3;87,32,19;,
  3;23,22,103;,
  3;59,103,133;,
  3;32,87,56;,
  3;87,19,20;,
  3;105,40,13;,
  3;22,15,27;,
  3;115,22,27;,
  3;94,123,38;,
  3;32,124,94;,
  3;94,34,32;,
  3;38,34,94;,
  3;59,133,93;,
  3;64,135,56;,
  3;18,19,6;,
  3;18,25,20;,
  3;21,17,15;,
  3;21,22,23;;
 }
 MeshTextureCoords {
  130;
  0.035200;0.869600;,
  0.049600;0.866000;,
  0.047400;0.895000;,
  0.023100;0.771200;,
  0.029800;0.772500;,
  0.027300;0.800800;,
  0.019500;0.800800;,
  0.043000;0.898900;,
  0.028300;0.874500;,
  0.079600;0.748500;,
  0.048800;0.744800;,
  0.052900;0.715000;,
  0.127000;0.883300;,
  0.078800;0.908900;,
  0.079600;0.892800;,
  0.077400;0.696600;,
  0.078500;0.717700;,
  0.114500;0.755700;,
  0.126600;0.726100;,
  0.115200;0.853400;,
  0.080400;0.860200;,
  0.034800;0.741300;,
  0.027100;0.737100;,
  0.045400;0.709400;,
  0.027300;0.636700;,
  0.046900;0.636700;,
  0.047100;0.673000;,
  0.019300;0.673000;,
  0.078100;0.992200;,
  0.078400;0.927500;,
  0.123100;0.929200;,
  0.058600;0.800800;,
  0.054300;0.772400;,
  0.125700;0.680100;,
  0.078000;0.680100;,
  0.078100;0.636700;,
  0.083500;0.776000;,
  0.023700;0.954100;,
  0.039200;0.904900;,
  0.045100;0.946200;,
  0.119400;0.776600;,
  0.133400;0.758400;,
  0.141100;0.801300;,
  0.050800;0.992200;,
  0.078500;0.915800;,
  0.238300;0.687500;,
  0.238100;0.742200;,
  0.179700;0.742200;,
  0.179700;0.687500;,
  0.238300;0.800800;,
  0.179700;0.800800;,
  0.156300;0.742200;,
  0.156300;0.687500;,
  0.156300;0.800800;,
  0.179700;0.863300;,
  0.156300;0.863300;,
  0.131800;0.889200;,
  0.134800;0.841300;,
  0.140600;0.847700;,
  0.133200;0.723900;,
  0.138200;0.754900;,
  0.144300;0.751800;,
  0.138800;0.722900;,
  0.144400;0.742000;,
  0.147000;0.850400;,
  0.148400;0.800800;,
  0.148400;0.863300;,
  0.119700;0.823800;,
  0.156300;0.925800;,
  0.148400;0.925800;,
  0.003900;0.800800;,
  0.004700;0.745700;,
  0.017300;0.769100;,
  0.013300;0.800500;,
  0.006200;0.881400;,
  0.017900;0.841800;,
  0.023700;0.839700;,
  0.030400;0.838500;,
  0.054700;0.837000;,
  0.086700;0.800000;,
  0.083900;0.831600;,
  0.120300;0.801600;,
  0.037600;0.703400;,
  0.021700;0.732900;,
  0.312500;0.800800;,
  0.304700;0.863300;,
  0.293000;0.863300;,
  0.300800;0.800800;,
  0.304700;0.925800;,
  0.293000;0.925800;,
  0.304700;0.992200;,
  0.293000;0.992200;,
  0.304700;0.636700;,
  0.312500;0.687500;,
  0.300800;0.687500;,
  0.293000;0.636700;,
  0.316400;0.742200;,
  0.304700;0.742200;,
  0.238300;0.925800;,
  0.238300;0.863300;,
  0.238300;0.992200;,
  0.238300;0.636700;,
  0.113700;0.909000;,
  0.137300;0.894500;,
  0.027300;0.992200;,
  0.023000;0.878900;,
  0.179700;0.925800;,
  0.179700;0.992200;,
  0.156300;0.992200;,
  0.179700;0.636700;,
  0.156300;0.636700;,
  0.144500;0.687500;,
  0.144500;0.636700;,
  0.148400;0.992200;,
  0.343800;0.636700;,
  0.375000;0.636700;,
  0.367200;0.687500;,
  0.343800;0.925800;,
  0.343800;0.992200;,
  0.382800;0.925800;,
  0.375000;0.992200;,
  0.343800;0.800800;,
  0.343800;0.863300;,
  0.375000;0.800800;,
  0.382800;0.863300;,
  0.365300;0.742700;,
  0.116200;0.696200;,
  0.078100;0.687400;,
  0.121300;0.687400;,
  0.117200;0.916300;;
 }
}
