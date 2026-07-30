// Made with Amplify Shader Editor v1.9.9.8
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Reallusion/Amplify/RL5_SkinShader_Variants_3D"
{
	Properties
	{
		_DiffuseMap( "Diffuse Map", 2D ) = "white" {}
		_DiffuseColor( "Diffuse Color", Color ) = ( 1, 1, 1, 0 )
		_MaskMap( "Mask Map", 2D ) = "gray" {}
		_AOStrength( "AO Strength", Range( 0, 1 ) ) = 0
		_SmoothnessContrast( "SmoothnessContrast", Range( 0, 2 ) ) = 1
		_SmoothnessMin( "SmoothnessMin", Range( 0, 1 ) ) = 0
		_SmoothnessMax( "SmoothnessMax", Range( 0, 1 ) ) = 0
		_CavityMap( "CavityMap", 2D ) = "white" {}
		[ToggleUI] _UseBlend( "Use Blend", Float ) = 1
		[ToggleUI] _UseCavity( "Use Cavity", Float ) = 1
		_CavityStrength( "Cavity Strength", Range( 0, 1 ) ) = 1
		[Normal] _NormalMap( "Normal Map", 2D ) = "bump" {}
		_NormalStrength( "Normal Strength", Range( 0, 2 ) ) = 1
		[KeywordEnum( NONE,BUMP,DISPLACEMENT,DISPACEMENT_BUMP )] ENUM_DISPLACEMENT_MODE( "Use Displacement", Float ) = 0
		_DisplacementMap( "Displacement Map", 2D ) = "white" {}
		_DisplacementLevel( "Displacement Level", Range( 0, 1 ) ) = 0.5
		_DisplacementStrength( "Displacement Strength", Range( 0, 1 ) ) = 1
		_BumpStrength( "Bump Strength", Range( 0, 1 ) ) = 1
		_WrinkleDisplacementStrength( "Wrinkle Displacement Strength", Range( 0, 5 ) ) = 0
		[Normal] _MicroNormalMap( "Micro Normal Map", 2D ) = "bump" {}
		_MicroNormalStrength( "Micro Normal Strength", Range( 0, 1 ) ) = 0.5
		_MicroNormalTiling( "Micro Normal Tiling", Range( 0, 50 ) ) = 25
		[Toggle( BOOLEAN_USE_SSS_ON )] BOOLEAN_USE_SSS( "Use SSS", Float ) = 1
		_SSSThicknessPack( "Subsurface Thickness Pack", 2D ) = "white" {}
		_SubsurfaceBlurMap( "Subsurface Blur Map", 2D ) = "white" {}
		_SubsurfaceScale( "Subsurface Scale", Range( 0, 2 ) ) = 1
		_ThicknessScaleMin( "Thickness Min", Range( 0, 1 ) ) = 0.4
		_ThicknessScale( "Thickness Max", Range( 0, 1 ) ) = 0.9
		_SubsurfaceFalloff( "Subsurface Falloff", Color ) = ( 0.990566, 0.3446065, 0.2850213, 0 )
		_SSSTransmission( "SSS Transmission", Range( 0, 100 ) ) = 50
		_SSSNormalDistortion( "SSS Normal Distortion", Range( 0, 1 ) ) = 0.5
		_SSSBlurStrength( "SSS Blur Strength", Range( 0, 1 ) ) = 0.5
		_EmissionMap( "Emission Map", 2D ) = "white" {}
		[HDR] _EmissiveColor( "Emissive Color", Color ) = ( 0, 0, 0, 0 )
		_RGBAMask( "RGBAMask", 2D ) = "black" {}
		_MicroSmoothnessMod( "Micro Smoothness Mod", Range( -1.5, 1.5 ) ) = 0
		_RSmoothnessMod( "Nose/R Smoothness Mod", Range( -1.5, 1.5 ) ) = 0
		_GSmoothnessMod( "Mouth/G Smoothness Mod", Range( -1.5, 1.5 ) ) = 0
		_BSmoothnessMod( "Upper Lid/B Smoothness Mod", Range( -1.5, 1.5 ) ) = 0
		_ASmoothnessMod( "Inner Lid/A Smoothness Mod", Range( -1.5, 1.5 ) ) = 0
		_UnmaskedSmoothnessMod( "Unmasked Smoothness Mod", Range( -1.5, 1.5 ) ) = 0
		_RScatterScale( "Nose/R Scatter Scale", Range( 0, 2 ) ) = 1
		_GScatterScale( "Mouth/G Scatter Scale", Range( 0, 2 ) ) = 1
		_BScatterScale( "Upper Lid/B Scatter Scale", Range( 0, 2 ) ) = 1
		_AScatterScale( "Inner Lid/A Scatter Scale", Range( 0, 2 ) ) = 1
		_UnmaskedScatterScale( "Unmasked Scatter Scale", Range( 0, 2 ) ) = 1
		[Toggle( BOOLEAN_IS_HEAD_ON )] BOOLEAN_IS_HEAD( "Is Head", Float ) = 1
		_ColorBlendMap( "Color Blend Map (Head)", 2D ) = "gray" {}
		_ColorBlendStrength( "Color Blend Strength", Range( 0, 1 ) ) = 0
		[Normal] _NormalBlendMap( "Normal Blend Map (Head)", 2D ) = "bump" {}
		_NormalBlendStrength( "Normal Blend Strength (Head)", Range( 0, 2 ) ) = 0
		_MNAOMap( "Cavity AO Map", 2D ) = "white" {}
		_MouthCavityAO( "Mouth Cavity AO", Range( 0, 5 ) ) = 2.5
		_NostrilCavityAO( "Nostril Cavity AO", Range( 0, 5 ) ) = 2.5
		_LipsCavityAO( "Lips Cavity AO", Range( 0, 5 ) ) = 2.5
		_CFULCMask( "CFULCMask", 2D ) = "black" {}
		_WrinkleMaskSetArray( "Wrinkle Mask Set Array", 2DArray ) = "black" {}
		_CheekSmoothnessMod( "Cheek Smoothness Mod", Range( -1.5, 1.5 ) ) = 0
		_ForeheadSmoothnessMod( "Forehead Smoothness Mod", Range( -1.5, 1.5 ) ) = 0
		_UpperLipSmoothnessMod( "Upper Lip Smoothness Mod", Range( -1.5, 1.5 ) ) = 0
		_ChinSmoothnessMod( "Chin Smoothness Mod", Range( -1.5, 1.5 ) ) = 0
		_CheekScatterScale( "Cheek Scatter Scale", Range( 0, 2 ) ) = 1
		_ForeheadScatterScale( "Forehead Scatter Scale", Range( 0, 2 ) ) = 1
		_UpperLipScatterScale( "Upper Lip Scatter Scale", Range( 0, 2 ) ) = 1
		_ChinScatterScale( "Chin Scatter Scale", Range( 0, 2 ) ) = 1
		_EarNeckMask( "EarNeckMask", 2D ) = "black" {}
		_EarSmoothnessMod( "Ear Smoothness Mod", Range( -1.5, 1.5 ) ) = 0
		_NeckSmoothnessMod( "Neck Smoothness Mod", Range( -1.5, 1.5 ) ) = 0
		_EarScatterScale( "Ear Scatter Scale", Range( 0, 2 ) ) = 1
		_NeckScatterScale( "Neck Scatter Scale", Range( 0, 2 ) ) = 1
		[KeywordEnum( NONE,WRINKLE,WRINKLE_DISPLACEMENT )] ENUM_WRINKLE_MODE( "Wrinkle Mode", Float ) = 0
		_WrinkleDiffuseArray( "Wrinkle Diffuse Array", 2DArray ) = "white" {}
		_WrinkleRoughnessPack( "Wrinkle Roughness Pack", 2D ) = "gray" {}
		[Normal] _WrinkleNormalArray( "Wrinkle Normal Array", 2DArray ) = "bump" {}
		_WrinkleFlowPack( "Wrinkle Flow Pack", 2D ) = "white" {}
		_WrinkleDisplacementPack( "Wrinkle Displacement Pack", 2D ) = "linearGrey" {}
		_WrinkleValueSet1AL( "Wrinkle Value Set 1A Left", Vector ) = ( 0, 0, 0, 0 )
		_WrinkleValueSet1BL( "Wrinkle Value Set 1B Left", Vector ) = ( 0, 0, 0, 0 )
		_WrinkleValueSet2L( "Wrinkle Value Set 2 Left", Vector ) = ( 0, 0, 0, 0 )
		_WrinkleValueSet3L( "Wrinkle Value Set 3 Left", Vector ) = ( 0, 0, 0, 0 )
		_WrinkleValueSet12CL( "Wrinkle Value Set 12C Left", Vector ) = ( 0, 0, 0, 0 )
		_WrinkleValueSet1AR( "Wrinkle Value Set 1A Right", Vector ) = ( 0, 0, 0, 0 )
		_WrinkleValueSet1BR( "Wrinkle Value Set 1B Right", Vector ) = ( 0, 0, 0, 0 )
		_WrinkleValueSet2R( "Wrinkle Value Set 2 Right", Vector ) = ( 0, 0, 0, 0 )
		_WrinkleValueSet3R( "Wrinkle Value Set 3 Right", Vector ) = ( 0, 0, 0, 0 )
		_WrinkleValueSet12CR( "Wrinkle Value Set 12C Right", Vector ) = ( 0, 0, 0, 0 )
		_WrinkleValueSet3DB( "Wrinkle Value Set 3D Both", Vector ) = ( 0, 0, 0, 0 )
		_WrinkleValueSetBCCB( "Wrinkle Value Set BCC Both", Vector ) = ( 0, 0, 0, 0 )


		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5

		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		[ToggleOff] _SpecularHighlights("Specular Highlights", Float) = 1.0
		[ToggleOff] _GlossyReflections("Reflections", Float) = 1.0

		//_InstancedTerrainNormals("Specular Highlights", Float) = 1.0
	}

	SubShader
	{
		

		

		Tags { "RenderType"="Opaque" "Queue"="Geometry" "DisableBatching"="False" }

	LOD 0

		Cull Back
		AlphaToMask Off
		ZWrite On
		ZTest LEqual
		ColorMask RGBA

		

		Blend Off
		

		CGINCLUDE
			#pragma target 3.5
			// ensure rendering platforms toggle list is visible

			float4 FixedTess( float tessValue )
			{
				return tessValue;
			}

			float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
			{
				float3 wpos = mul(o2w,vertex).xyz;
				float dist = distance (wpos, cameraPos);
				float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
				return f;
			}

			float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
			{
				float4 tess;
				tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
				tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
				tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
				tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
				return tess;
			}

			float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
			{
				float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
				float len = distance(wpos0, wpos1);
				float f = max(len * scParams.y / (edgeLen * dist), 1.0);
				return f;
			}

			float DistanceFromPlane (float3 pos, float4 plane)
			{
				float d = dot (float4(pos,1.0f), plane);
				return d;
			}

			bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
			{
				float4 planeTest;
				planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							  (( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							  (( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
				planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							  (( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							  (( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
				planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							  (( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							  (( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
				planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							  (( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							  (( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
				return !all (planeTest);
			}

			float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
			{
				float3 f;
				f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
				f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
				f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

				return CalcTriEdgeTessFactors (f);
			}

			float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
			{
				float3 pos0 = mul(o2w,v0).xyz;
				float3 pos1 = mul(o2w,v1).xyz;
				float3 pos2 = mul(o2w,v2).xyz;
				float4 tess;
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
				return tess;
			}

			float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
			{
				float3 pos0 = mul(o2w,v0).xyz;
				float3 pos1 = mul(o2w,v1).xyz;
				float3 pos2 = mul(o2w,v2).xyz;
				float4 tess;

				if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
				{
					tess = 0.0f;
				}
				else
				{
					tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
					tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
					tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
					tess.w = (tess.x + tess.y + tess.z) / 3.0f;
				}
				return tess;
			}

			float4 ComputeClipSpacePosition( float2 screenPosNorm, float deviceDepth )
			{
				float4 positionCS = float4( screenPosNorm * 2.0 - 1.0, deviceDepth, 1.0 );
			#if UNITY_UV_STARTS_AT_TOP
				positionCS.y = -positionCS.y;
			#endif
				return positionCS;
			}
		ENDCG

		
		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			Blend One Zero

			CGPROGRAM
				#define ASE_GEOMETRY
				#define ASE_FRAGMENT_NORMAL 0
				#define ASE_RECEIVE_SHADOWS
				#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
				#pragma shader_feature_local_fragment _GLOSSYREFLECTIONS_OFF
				#pragma multi_compile_instancing
				#pragma multi_compile _ LOD_FADE_CROSSFADE
				#pragma multi_compile_fog
				#define ASE_FOG
				#define ASE_VERSION 19908
				#define ASE_USING_SAMPLING_MACROS 1

				#pragma vertex vert
				#pragma fragment frag
				#pragma multi_compile_fwdbase
				#ifndef UNITY_PASS_FORWARDBASE
					#define UNITY_PASS_FORWARDBASE
				#endif
				#include "HLSLSupport.cginc"
				#if defined( ASE_GEOMETRY ) || defined( ASE_IMPOSTOR )
					#ifndef UNITY_INSTANCED_LOD_FADE
						#define UNITY_INSTANCED_LOD_FADE
					#endif
					#ifndef UNITY_INSTANCED_SH
						#define UNITY_INSTANCED_SH
					#endif
					#ifndef UNITY_INSTANCED_LIGHTMAPSTS
						#define UNITY_INSTANCED_LIGHTMAPSTS
					#endif
				#endif
				#include "UnityShaderVariables.cginc"
				#include "UnityCG.cginc"
				#include "Lighting.cginc"
				#include "UnityPBSLighting.cginc"
				#include "AutoLight.cginc"

				#if defined( UNITY_INSTANCING_ENABLED ) && defined( ASE_INSTANCED_TERRAIN ) && ( defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL) || defined(_INSTANCEDTERRAINNORMALS_PIXEL) )
					#define ENABLE_TERRAIN_PERPIXEL_NORMAL
				#endif

				#include "UnityStandardUtils.cginc"
				#include "UnityStandardBRDF.cginc"
				#define ASE_NEEDS_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_NORMAL
				#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
				#define ASE_NEEDS_WORLD_POSITION
				#define ASE_NEEDS_FRAG_WORLD_POSITION
				#define ASE_NEEDS_WORLD_NORMAL
				#define ASE_NEEDS_FRAG_WORLD_NORMAL
				#define ASE_NEEDS_WORLD_TANGENT
				#define ASE_NEEDS_FRAG_WORLD_TANGENT
				#define ASE_NEEDS_FRAG_WORLD_BITANGENT
				#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
				#pragma shader_feature_local ENUM_DISPLACEMENT_MODE_NONE ENUM_DISPLACEMENT_MODE_BUMP ENUM_DISPLACEMENT_MODE_DISPLACEMENT ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP
				#pragma shader_feature_local BOOLEAN_IS_HEAD_ON
				#pragma shader_feature_local ENUM_WRINKLE_MODE_NONE ENUM_WRINKLE_MODE_WRINKLE ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT
				#pragma shader_feature_local BOOLEAN_USE_SSS_ON
				#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#else//ASE Sampling Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY(tex,samplertex,coord) tex2DArray(tex,coord)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
				#endif//ASE Sampling Macros
				


				struct appdata
				{
					float4 vertex : POSITION;
					half3 normal : NORMAL;
					half4 tangent : TANGENT;
					float4 texcoord : TEXCOORD0;
					float4 texcoord1 : TEXCOORD1;
					float4 texcoord2 : TEXCOORD2;
					
					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct v2f
				{
					float4 pos : SV_POSITION;
					float4 worldPos : TEXCOORD0; // xyz = positionWS, w = fogCoord
					half3 normalWS : TEXCOORD1;
					float4 tangentWS : TEXCOORD2; // holds terrainUV ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					half4 ambientOrLightmapUV : TEXCOORD3;
					UNITY_LIGHTING_COORDS( 4, 5 )
					float4 ase_texcoord6 : TEXCOORD6;
					UNITY_VERTEX_INPUT_INSTANCE_ID
					UNITY_VERTEX_OUTPUT_STEREO
				};

				#ifdef ASE_TRANSMISSION
					float _TransmissionShadow;
				#endif
				#ifdef ASE_TRANSLUCENCY
					float _TransStrength;
					float _TransNormal;
					float _TransScattering;
					float _TransDirect;
					float _TransAmbient;
					float _TransShadow;
				#endif
				#ifdef ASE_TESSELLATION
					float _TessPhongStrength;
					float _TessValue;
					float _TessMin;
					float _TessMax;
					float _TessEdgeLength;
					float _TessMaxDisp;
				#endif

				UNITY_DECLARE_TEX2D_NOSAMPLER(_DisplacementMap);
				uniform float4 _DisplacementMap_ST;
				SamplerState sampler_Linear_Repeat;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleDisplacementPack);
				uniform float4 _WrinkleDisplacementPack_ST;
				uniform float _WrinkleDisplacementStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleFlowPack);
				uniform float4 _WrinkleFlowPack_ST;
				uniform float4 _WrinkleValueSet12CL;
				uniform float4 _WrinkleMaskSetArray_ST;
				uniform float4 _WrinkleValueSet1AL;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleMaskSetArray);
				uniform float4 _WrinkleValueSet1BL;
				uniform float4 _WrinkleValueSet1AR;
				uniform float4 _WrinkleValueSet1BR;
				uniform float4 _WrinkleValueSet12CR;
				uniform float4 _WrinkleValueSet2L;
				uniform float4 _WrinkleValueSet2R;
				uniform float4 _WrinkleValueSetBCCB;
				uniform float4 _WrinkleValueSet3DB;
				uniform float4 _WrinkleValueSet3L;
				uniform float4 _WrinkleValueSet3R;
				uniform float _DisplacementLevel;
				uniform float _DisplacementStrength;
				uniform float4 _DiffuseColor;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_DiffuseMap);
				uniform float4 _DiffuseMap_ST;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleDiffuseArray);
				uniform float4 _WrinkleDiffuseArray_ST;
				uniform float _UseBlend;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorBlendMap);
				uniform float4 _ColorBlendMap_ST;
				uniform float _ColorBlendStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_MNAOMap);
				uniform float4 _MNAOMap_ST;
				uniform float _MouthCavityAO;
				uniform float _NostrilCavityAO;
				uniform float _LipsCavityAO;
				uniform float _ThicknessScale;
				uniform float _ThicknessScaleMin;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_SSSThicknessPack);
				uniform float4 _SSSThicknessPack_ST;
				uniform float _SSSTransmission;
				uniform float _SSSNormalDistortion;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalMap);
				uniform float4 _NormalMap_ST;
				uniform float _NormalStrength;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleNormalArray);
				uniform float4 _WrinkleNormalArray_ST;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalBlendMap);
				uniform float4 _NormalBlendMap_ST;
				uniform float _NormalBlendStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_MicroNormalMap);
				uniform float _MicroNormalTiling;
				uniform float _MicroNormalStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskMap);
				uniform float4 _MaskMap_ST;
				uniform float _BumpStrength;
				uniform float4 _SubsurfaceFalloff;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_SubsurfaceBlurMap);
				uniform float4 _SubsurfaceBlurMap_ST;
				uniform float _SubsurfaceScale;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_RGBAMask);
				uniform float4 _RGBAMask_ST;
				uniform float _RSmoothnessMod;
				uniform float _GSmoothnessMod;
				uniform float _BSmoothnessMod;
				uniform float _ASmoothnessMod;
				uniform float _RScatterScale;
				uniform float _GScatterScale;
				uniform float _BScatterScale;
				uniform float _AScatterScale;
				uniform float _UnmaskedSmoothnessMod;
				uniform float _UnmaskedScatterScale;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_CFULCMask);
				uniform float4 _CFULCMask_ST;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_EarNeckMask);
				uniform float4 _EarNeckMask_ST;
				uniform float _CheekSmoothnessMod;
				uniform float _ForeheadSmoothnessMod;
				uniform float _UpperLipSmoothnessMod;
				uniform float _ChinSmoothnessMod;
				uniform float _NeckSmoothnessMod;
				uniform float _EarSmoothnessMod;
				uniform float _CheekScatterScale;
				uniform float _ForeheadScatterScale;
				uniform float _UpperLipScatterScale;
				uniform float _ChinScatterScale;
				uniform float _NeckScatterScale;
				uniform float _EarScatterScale;
				uniform float _SSSBlurStrength;
				uniform float _UseCavity;
				uniform float _SmoothnessMin;
				uniform float _SmoothnessMax;
				uniform float _MicroSmoothnessMod;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleRoughnessPack);
				uniform float4 _WrinkleRoughnessPack_ST;
				uniform float _SmoothnessContrast;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_CavityMap);
				uniform float4 _CavityMap_ST;
				uniform float _CavityStrength;
				uniform float _AOStrength;
				uniform float4 _EmissiveColor;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionMap);
				uniform float4 _EmissionMap_ST;


				//This is a late directive
				
				float MinMaxDeltaBlend1245_g102( float In, float In1, float In2, float In3 )
				{
					return max(max(In1, In2), In3) + min(min(In1, In2), In3) + In;
				}
				
				float4 MinMaxDeltaBlend4S181_g102( float4 In, float4 In1, float4 In2, float4 In3 )
				{
					return saturate(max(max(In1, In2), In3) + min(min(In1, In2), In3) + In);
				}
				
				float MyCustomExpression683( float4 In, float4 Contrast, out float Smoothness )
				{
					float4 mask = lerp(1, In, Contrast);
					float AO = saturate(mask.y*mask.z*mask.w);
					Smoothness = AO * mask.r;
					return AO;
				}
				
				float3 MinMaxDeltaBlend3183_g102( float3 In, float3 In1, float3 In2, float3 In3 )
				{
					return max(max(In1, In2), In3) + min(min(In1, In2), In3) + In;
				}
				
				void SkinMask179( float4 In1, float4 Mod1, float4 Scatter1, float UMMS, float UMSS, out float SmoothnessMod, out float ScatterMask )
				{
					float mask = saturate(In1.r + In1.g + In1.b + In1.a);
					float unmask = 1.0 - mask;
					SmoothnessMod = dot(In1, Mod1) + (UMMS * unmask);
					ScatterMask = dot(In1, Scatter1) + (UMSS * unmask);
					return;
				}
				
				void HeadMask156( float4 In1, float4 In2, float4 In3, float4 Mod1, float4 Mod2, float4 Mod3, float4 Scatter1, float4 Scatter2, float4 Scatter3, float UMMS, float UMSS, out float SmoothnessMod, out float ScatterMask )
				{
					In3.zw = 0;
					float4 m = In1 + In2 + In3;
					float mask = saturate(m.x + m.y + m.z + m.w);
					float unmask = 1.0 - mask;
					SmoothnessMod = dot(In1, Mod1) + dot(In2, Mod2) + dot(In3, Mod3) + (UMMS * unmask);
					ScatterMask = dot(In1, Scatter1) + dot(In2, Scatter2) + dot(In3, Scatter3) + (UMSS * unmask);
					return;
				}
				
				float3 MyCustomExpression138_g110( float3 In, float Strength )
				{
					return float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
				}
				
				float MinMaxDeltaBlend1S182_g102( float In, float In1, float In2, float In3 )
				{
					return saturate(max(max(In1, In2), In3) + min(min(In1, In2), In3) + In);
				}
				
				float FasterFresnel692( float3 N, float3 V )
				{
					float NdotV = saturate(dot( N, V));
					float om = 1 - NdotV;
					float oms = om * om;
					return oms * oms;
				}
				

				v2f VertexFunction( appdata v  )
				{
					UNITY_SETUP_INSTANCE_ID(v);
					v2f o;
					UNITY_INITIALIZE_OUTPUT(v2f,o);
					UNITY_TRANSFER_INSTANCE_ID(v,o);
					UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

					float3 _Vector0 = float3(0,0,0);
					float2 uv_DisplacementMap = v.texcoord.xyzw.xy * _DisplacementMap_ST.xy + _DisplacementMap_ST.zw;
					float displacementMap590 = SAMPLE_TEXTURE2D_LOD( _DisplacementMap, sampler_Linear_Repeat, uv_DisplacementMap, 0.0 ).r;
					float displacement229_g102 = displacementMap590;
					float In245_g102 = displacement229_g102;
					float2 uv_WrinkleDisplacementPack = v.texcoord.xyzw.xy * _WrinkleDisplacementPack_ST.xy + _WrinkleDisplacementPack_ST.zw;
					float4 tex2DNode538 = SAMPLE_TEXTURE2D_LOD( _WrinkleDisplacementPack, sampler_Linear_Repeat, uv_WrinkleDisplacementPack, 0.0 );
					float displacementStrength234_g102 = _WrinkleDisplacementStrength;
					float2 uv_WrinkleFlowPack = v.texcoord.xyzw.xy * _WrinkleFlowPack_ST.xy + _WrinkleFlowPack_ST.zw;
					float4 tex2DNode475 = SAMPLE_TEXTURE2D_LOD( _WrinkleFlowPack, sampler_Linear_Repeat, uv_WrinkleFlowPack, 0.0 );
					float2 texCoord10_g102 = v.texcoord.xyzw.xy * float2( 1,1 ) + float2( 0,0 );
					float temp_output_1_0_g104 = 0.49;
					float leftMask27_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g104 ) / ( 0.51 - temp_output_1_0_g104 ) ) );
					float4 break107_g102 = _WrinkleValueSet12CL;
					float2 appendResult112_g102 = (float2(break107_g102.x , break107_g102.y));
					float2 uv_WrinkleMaskSetArray = v.texcoord.xyzw.xy;
					float4 break109_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,4.0), 0.0 );
					float2 appendResult115_g102 = (float2(break109_g102.x , break109_g102.y));
					float dotResult121_g102 = dot( appendResult112_g102 , appendResult115_g102 );
					float value1CLeft135_g102 = dotResult121_g102;
					float4 maskSet1A214_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,0.0), 0.0 );
					float dotResult29_g102 = dot( _WrinkleValueSet1AL , maskSet1A214_g102 );
					float4 temp_output_16_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,1.0), 0.0 );
					float dotResult35_g102 = dot( _WrinkleValueSet1BL , temp_output_16_0_g102 );
					float dotResult30_g102 = dot( maskSet1A214_g102 , _WrinkleValueSet1AR );
					float dotResult36_g102 = dot( temp_output_16_0_g102 , _WrinkleValueSet1BR );
					float4 break108_g102 = _WrinkleValueSet12CR;
					float2 appendResult117_g102 = (float2(break108_g102.x , break108_g102.y));
					float dotResult122_g102 = dot( appendResult115_g102 , appendResult117_g102 );
					float value1CRight136_g102 = dotResult122_g102;
					float temp_output_1_0_g103 = 0.51;
					float rightMask28_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g103 ) / ( 0.49 - temp_output_1_0_g103 ) ) );
					float temp_output_16_0_g105 = ( ( leftMask27_g102 * ( value1CLeft135_g102 + dotResult29_g102 + dotResult35_g102 ) ) + ( ( dotResult30_g102 + dotResult36_g102 + value1CRight136_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g105 = ( saturate( ( tex2DNode475.r + temp_output_16_0_g105 ) ) * temp_output_16_0_g105 );
					float In1245_g102 = ( ( tex2DNode538.r - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g105 );
					float2 appendResult113_g102 = (float2(break107_g102.z , break107_g102.w));
					float2 appendResult114_g102 = (float2(break109_g102.z , break109_g102.w));
					float dotResult123_g102 = dot( appendResult113_g102 , appendResult114_g102 );
					float value2CLeft137_g102 = dotResult123_g102;
					float4 temp_output_17_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,2.0), 0.0 );
					float dotResult41_g102 = dot( _WrinkleValueSet2L , temp_output_17_0_g102 );
					float dotResult42_g102 = dot( temp_output_17_0_g102 , _WrinkleValueSet2R );
					float2 appendResult116_g102 = (float2(break108_g102.z , break108_g102.w));
					float dotResult124_g102 = dot( appendResult114_g102 , appendResult116_g102 );
					float value2CRight138_g102 = dotResult124_g102;
					float temp_output_16_0_g106 = ( ( leftMask27_g102 * ( value2CLeft137_g102 + dotResult41_g102 ) ) + ( ( dotResult42_g102 + value2CRight138_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g106 = ( saturate( ( tex2DNode475.g + temp_output_16_0_g106 ) ) * temp_output_16_0_g106 );
					float In2245_g102 = ( ( tex2DNode538.g - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g106 );
					float4 break211_g102 = _WrinkleValueSetBCCB;
					float valueBCCLeft217_g102 = ( break211_g102.x * maskSet1A214_g102.y );
					float4 break118_g102 = _WrinkleValueSet3DB;
					float2 appendResult120_g102 = (float2(break118_g102.x , break118_g102.y));
					float dotResult127_g102 = dot( appendResult120_g102 , appendResult115_g102 );
					float value3DLeft129_g102 = dotResult127_g102;
					float4 temp_output_18_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,3.0), 0.0 );
					float dotResult47_g102 = dot( _WrinkleValueSet3L , temp_output_18_0_g102 );
					float dotResult48_g102 = dot( temp_output_18_0_g102 , _WrinkleValueSet3R );
					float2 appendResult119_g102 = (float2(break118_g102.z , break118_g102.w));
					float dotResult128_g102 = dot( appendResult115_g102 , appendResult119_g102 );
					float value3DRight130_g102 = dotResult128_g102;
					float valueBCCRight219_g102 = ( maskSet1A214_g102.y * break211_g102.y );
					float temp_output_16_0_g107 = ( ( leftMask27_g102 * ( valueBCCLeft217_g102 + value3DLeft129_g102 + dotResult47_g102 ) ) + ( ( dotResult48_g102 + value3DRight130_g102 + valueBCCRight219_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g107 = ( saturate( ( tex2DNode475.b + temp_output_16_0_g107 ) ) * temp_output_16_0_g107 );
					float In3245_g102 = ( ( tex2DNode538.b - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1245_g102 = MinMaxDeltaBlend1245_g102( In245_g102 , In1245_g102 , In2245_g102 , In3245_g102 );
					float displacementWrinkle594 = localMinMaxDeltaBlend1245_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch599 = displacementWrinkle594;
					#else
					float staticSwitch599 = displacementMap590;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch600 = staticSwitch599;
					#else
					float staticSwitch600 = displacementMap590;
					#endif
					float temp_output_602_0 = ( staticSwitch600 - _DisplacementLevel );
					float3 temp_output_608_0 = ( ( temp_output_602_0 * _DisplacementStrength ) * v.normal );
					#if defined( ENUM_DISPLACEMENT_MODE_NONE )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_BUMP )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPLACEMENT )
					float3 staticSwitch595 = temp_output_608_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP )
					float3 staticSwitch595 = temp_output_608_0;
					#else
					float3 staticSwitch595 = _Vector0;
					#endif
					
					o.ase_texcoord6.xy = v.texcoord.xyzw.xy;
					
					//setting value to unused interpolator channels and avoid initialization warnings
					o.ase_texcoord6.zw = 0;

					#ifdef ASE_ABSOLUTE_VERTEX_POS
						float3 defaultVertexValue = v.vertex.xyz;
					#else
						float3 defaultVertexValue = float3(0, 0, 0);
					#endif
					float3 vertexValue = staticSwitch595;
					#ifdef ASE_ABSOLUTE_VERTEX_POS
						v.vertex.xyz = vertexValue;
					#else
						v.vertex.xyz += vertexValue;
					#endif
					v.vertex.w = 1;
					v.normal = v.normal;
					v.tangent = v.tangent;

					float3 positionWS = mul( unity_ObjectToWorld, v.vertex ).xyz;
					half3 normalWS = UnityObjectToWorldNormal( v.normal );
					half3 tangentWS = UnityObjectToWorldDir( v.tangent.xyz );

					o.pos = UnityObjectToClipPos( v.vertex );
					o.worldPos.xyz = positionWS;
					o.normalWS = normalWS;
					o.tangentWS = half4( tangentWS, v.tangent.w );

					o.ambientOrLightmapUV = 0;
					#ifdef LIGHTMAP_ON
						o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					#elif UNITY_SHOULD_SAMPLE_SH
						#ifdef VERTEXLIGHT_ON
							o.ambientOrLightmapUV.rgb += Shade4PointLights(
								unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
								unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
								unity_4LightAtten0, positionWS, normalWS );
						#endif
						o.ambientOrLightmapUV.rgb = ShadeSHPerVertex( normalWS, o.ambientOrLightmapUV.rgb );
					#endif
					#ifdef DYNAMICLIGHTMAP_ON
						o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
					#endif

					#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
						o.tangentWS.zw = v.texcoord.xy;
						o.tangentWS.xy = v.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					#endif

					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
					#if defined( ASE_FOG )
						UNITY_TRANSFER_FOG_COMBINED_WITH_WORLD_POS( o, o.pos );
					#endif
					return o;
				}

				#if defined(ASE_TESSELLATION)
				struct VertexControl
				{
					float4 vertex : INTERNALTESSPOS;
					half4 tangent : TANGENT;
					half3 normal : NORMAL;
					float4 texcoord : TEXCOORD0;
					float4 texcoord1 : TEXCOORD1;
					float4 texcoord2 : TEXCOORD2;
					
					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct TessellationFactors
				{
					float edge[3] : SV_TessFactor;
					float inside : SV_InsideTessFactor;
				};

				VertexControl vert ( appdata v )
				{
					VertexControl o;
					UNITY_SETUP_INSTANCE_ID(v);
					UNITY_TRANSFER_INSTANCE_ID(v, o);
					o.vertex = v.vertex;
					o.tangent = v.tangent;
					o.normal = v.normal;
					o.texcoord = v.texcoord;
					o.texcoord1 = v.texcoord1;
					o.texcoord2 = v.texcoord2;
					
					return o;
				}

				TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
				{
					TessellationFactors o;
					float4 tf = 1;
					float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
					float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
					#if defined(ASE_FIXED_TESSELLATION)
					tf = FixedTess( tessValue );
					#elif defined(ASE_DISTANCE_TESSELLATION)
					tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
					#elif defined(ASE_LENGTH_TESSELLATION)
					tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
					#elif defined(ASE_LENGTH_CULL_TESSELLATION)
					tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
					#endif
					o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
					return o;
				}

				[domain("tri")]
				[partitioning("fractional_odd")]
				[outputtopology("triangle_cw")]
				[patchconstantfunc("TessellationFunction")]
				[outputcontrolpoints(3)]
				VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
				{
				   return patch[id];
				}

				[domain("tri")]
				v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
				{
					appdata o = (appdata) 0;
					o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
					o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
					o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
					o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
					o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
					o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
					
					#if defined(ASE_PHONG_TESSELLATION)
					float3 pp[3];
					for (int i = 0; i < 3; ++i)
						pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
					float phongStrength = _TessPhongStrength;
					o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
					#endif
					UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
					return VertexFunction(o);
				}
				#else
				v2f vert ( appdata v )
				{
					return VertexFunction( v );
				}
				#endif

				half4 frag( v2f IN 
							#if defined( ASE_DEPTH_WRITE_ON )
								, out float outputDepth : SV_Depth
							#endif
							) : SV_Target
				{
					UNITY_SETUP_INSTANCE_ID(IN);

					#ifdef LOD_FADE_CROSSFADE
						UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
					#endif

					#if defined(ASE_LIGHTING_SIMPLE)
						SurfaceOutput o = (SurfaceOutput)0;
					#else
						#if defined(_SPECULAR_SETUP)
							SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
						#else
							SurfaceOutputStandard o = (SurfaceOutputStandard)0;
						#endif
					#endif

					half atten;
					{
						#if defined( ASE_RECEIVE_SHADOWS )
							UNITY_LIGHT_ATTENUATION( temp, IN, IN.worldPos.xyz )
							atten = temp;
						#else
							atten = 1;
						#endif
					}

					float3 PositionWS = IN.worldPos.xyz;
					half3 ViewDirWS = normalize( UnityWorldSpaceViewDir( PositionWS ) );
					float4 ScreenPosNorm = float4( IN.pos.xy * ( _ScreenParams.zw - 1.0 ), IN.pos.zw );
					float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, IN.pos.z ) * IN.pos.w;
					float4 ScreenPos = ComputeScreenPos( ClipPos );
					half3 NormalWS = IN.normalWS;
					half3 TangentWS = IN.tangentWS.xyz;
					half3 BitangentWS = cross( IN.normalWS, IN.tangentWS.xyz ) * IN.tangentWS.w * unity_WorldTransformParams.w;
					half3 LightAtten = atten;

					#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
						float2 sampleCoords = (IN.tangentWS.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
						NormalWS = UnityObjectToWorldNormal(normalize(tex2D(_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
						TangentWS = -cross(unity_ObjectToWorld._13_23_33, NormalWS);
						BitangentWS = cross(NormalWS, -TangentWS);
					#endif

					float2 uv_DiffuseMap = IN.ase_texcoord6.xy * _DiffuseMap_ST.xy + _DiffuseMap_ST.zw;
					float4 diffuseMap358 = SAMPLE_TEXTURE2D( _DiffuseMap, sampler_Linear_Repeat, uv_DiffuseMap );
					float4 diffuse184_g102 = diffuseMap358;
					float4 In181_g102 = diffuse184_g102;
					float2 uv_WrinkleDiffuseArray = IN.ase_texcoord6.xy;
					float2 uv_WrinkleFlowPack = IN.ase_texcoord6.xy * _WrinkleFlowPack_ST.xy + _WrinkleFlowPack_ST.zw;
					float4 tex2DNode475 = SAMPLE_TEXTURE2D( _WrinkleFlowPack, sampler_Linear_Repeat, uv_WrinkleFlowPack );
					float2 texCoord10_g102 = IN.ase_texcoord6.xy * float2( 1,1 ) + float2( 0,0 );
					float temp_output_1_0_g104 = 0.49;
					float leftMask27_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g104 ) / ( 0.51 - temp_output_1_0_g104 ) ) );
					float4 break107_g102 = _WrinkleValueSet12CL;
					float2 appendResult112_g102 = (float2(break107_g102.x , break107_g102.y));
					float2 uv_WrinkleMaskSetArray = IN.ase_texcoord6.xy;
					float4 break109_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,4.0) );
					float2 appendResult115_g102 = (float2(break109_g102.x , break109_g102.y));
					float dotResult121_g102 = dot( appendResult112_g102 , appendResult115_g102 );
					float value1CLeft135_g102 = dotResult121_g102;
					float4 maskSet1A214_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,0.0) );
					float dotResult29_g102 = dot( _WrinkleValueSet1AL , maskSet1A214_g102 );
					float4 temp_output_16_0_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,1.0) );
					float dotResult35_g102 = dot( _WrinkleValueSet1BL , temp_output_16_0_g102 );
					float dotResult30_g102 = dot( maskSet1A214_g102 , _WrinkleValueSet1AR );
					float dotResult36_g102 = dot( temp_output_16_0_g102 , _WrinkleValueSet1BR );
					float4 break108_g102 = _WrinkleValueSet12CR;
					float2 appendResult117_g102 = (float2(break108_g102.x , break108_g102.y));
					float dotResult122_g102 = dot( appendResult115_g102 , appendResult117_g102 );
					float value1CRight136_g102 = dotResult122_g102;
					float temp_output_1_0_g103 = 0.51;
					float rightMask28_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g103 ) / ( 0.49 - temp_output_1_0_g103 ) ) );
					float temp_output_16_0_g105 = ( ( leftMask27_g102 * ( value1CLeft135_g102 + dotResult29_g102 + dotResult35_g102 ) ) + ( ( dotResult30_g102 + dotResult36_g102 + value1CRight136_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g105 = ( saturate( ( tex2DNode475.r + temp_output_16_0_g105 ) ) * temp_output_16_0_g105 );
					float4 In1181_g102 = ( ( SAMPLE_TEXTURE2D_ARRAY( _WrinkleDiffuseArray, sampler_Linear_Repeat, float3(uv_WrinkleDiffuseArray,0.0) ) - diffuse184_g102 ) * temp_output_23_0_g105 );
					float2 appendResult113_g102 = (float2(break107_g102.z , break107_g102.w));
					float2 appendResult114_g102 = (float2(break109_g102.z , break109_g102.w));
					float dotResult123_g102 = dot( appendResult113_g102 , appendResult114_g102 );
					float value2CLeft137_g102 = dotResult123_g102;
					float4 temp_output_17_0_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,2.0) );
					float dotResult41_g102 = dot( _WrinkleValueSet2L , temp_output_17_0_g102 );
					float dotResult42_g102 = dot( temp_output_17_0_g102 , _WrinkleValueSet2R );
					float2 appendResult116_g102 = (float2(break108_g102.z , break108_g102.w));
					float dotResult124_g102 = dot( appendResult114_g102 , appendResult116_g102 );
					float value2CRight138_g102 = dotResult124_g102;
					float temp_output_16_0_g106 = ( ( leftMask27_g102 * ( value2CLeft137_g102 + dotResult41_g102 ) ) + ( ( dotResult42_g102 + value2CRight138_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g106 = ( saturate( ( tex2DNode475.g + temp_output_16_0_g106 ) ) * temp_output_16_0_g106 );
					float4 In2181_g102 = ( ( SAMPLE_TEXTURE2D_ARRAY( _WrinkleDiffuseArray, sampler_Linear_Repeat, float3(uv_WrinkleDiffuseArray,1.0) ) - diffuse184_g102 ) * temp_output_23_0_g106 );
					float4 break211_g102 = _WrinkleValueSetBCCB;
					float valueBCCLeft217_g102 = ( break211_g102.x * maskSet1A214_g102.y );
					float4 break118_g102 = _WrinkleValueSet3DB;
					float2 appendResult120_g102 = (float2(break118_g102.x , break118_g102.y));
					float dotResult127_g102 = dot( appendResult120_g102 , appendResult115_g102 );
					float value3DLeft129_g102 = dotResult127_g102;
					float4 temp_output_18_0_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,3.0) );
					float dotResult47_g102 = dot( _WrinkleValueSet3L , temp_output_18_0_g102 );
					float dotResult48_g102 = dot( temp_output_18_0_g102 , _WrinkleValueSet3R );
					float2 appendResult119_g102 = (float2(break118_g102.z , break118_g102.w));
					float dotResult128_g102 = dot( appendResult115_g102 , appendResult119_g102 );
					float value3DRight130_g102 = dotResult128_g102;
					float valueBCCRight219_g102 = ( maskSet1A214_g102.y * break211_g102.y );
					float temp_output_16_0_g107 = ( ( leftMask27_g102 * ( valueBCCLeft217_g102 + value3DLeft129_g102 + dotResult47_g102 ) ) + ( ( dotResult48_g102 + value3DRight130_g102 + valueBCCRight219_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g107 = ( saturate( ( tex2DNode475.b + temp_output_16_0_g107 ) ) * temp_output_16_0_g107 );
					float4 In3181_g102 = ( ( SAMPLE_TEXTURE2D_ARRAY( _WrinkleDiffuseArray, sampler_Linear_Repeat, float3(uv_WrinkleDiffuseArray,2.0) ) - diffuse184_g102 ) * temp_output_23_0_g107 );
					float4 localMinMaxDeltaBlend4S181_g102 = MinMaxDeltaBlend4S181_g102( In181_g102 , In1181_g102 , In2181_g102 , In3181_g102 );
					float4 diffuseWrinkle437 = localMinMaxDeltaBlend4S181_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float4 staticSwitch464 = diffuseMap358;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float4 staticSwitch464 = diffuseWrinkle437;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float4 staticSwitch464 = diffuseWrinkle437;
					#else
					float4 staticSwitch464 = diffuseMap358;
					#endif
					float4 temp_output_357_0 = ( _DiffuseColor * staticSwitch464 );
					float2 uv_ColorBlendMap = IN.ase_texcoord6.xy * _ColorBlendMap_ST.xy + _ColorBlendMap_ST.zw;
					float4 blendOpSrc13 = SAMPLE_TEXTURE2D( _ColorBlendMap, sampler_Linear_Repeat, uv_ColorBlendMap );
					float4 blendOpDest13 = temp_output_357_0;
					float4 lerpBlendMode13 = lerp(blendOpDest13,(( blendOpDest13 > 0.5 ) ? ( 1.0 - 2.0 * ( 1.0 - blendOpDest13 ) * ( 1.0 - blendOpSrc13 ) ) : ( 2.0 * blendOpDest13 * blendOpSrc13 ) ),_ColorBlendStrength);
					float2 uv_MNAOMap = IN.ase_texcoord6.xy * _MNAOMap_ST.xy + _MNAOMap_ST.zw;
					float4 In683 = SAMPLE_TEXTURE2D( _MNAOMap, sampler_Linear_Repeat, uv_MNAOMap );
					float4 appendResult684 = (float4(1.0 , _MouthCavityAO , _NostrilCavityAO , _LipsCavityAO));
					float4 Contrast683 = appendResult684;
					float Smoothness683 = 0.0;
					float localMyCustomExpression683 = MyCustomExpression683( In683 , Contrast683 , Smoothness683 );
					float cavityAO280 = localMyCustomExpression683;
					#ifdef BOOLEAN_IS_HEAD_ON
					float4 staticSwitch72 = ( (( _UseBlend )?( ( saturate( lerpBlendMode13 )) ):( temp_output_357_0 )) * cavityAO280 );
					#else
					float4 staticSwitch72 = temp_output_357_0;
					#endif
					float4 baseColor266 = staticSwitch72;
					float2 uv_SSSThicknessPack = IN.ase_texcoord6.xy * _SSSThicknessPack_ST.xy + _SSSThicknessPack_ST.zw;
					float4 tex2DNode625 = SAMPLE_TEXTURE2D( _SSSThicknessPack, sampler_Linear_Repeat, uv_SSSThicknessPack );
					float lerpResult630 = lerp( _ThicknessScale , _ThicknessScaleMin , tex2DNode625.a);
					float temp_output_120_0_g110 = lerpResult630;
					float temp_output_144_0_g110 = ( 1.0 - temp_output_120_0_g110 );
					float2 uv_NormalMap = IN.ase_texcoord6.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					float normalMapScale359 = _NormalStrength;
					float3 normalMap360 = UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalMap, sampler_Linear_Repeat, uv_NormalMap ), normalMapScale359 );
					float3 normal186_g102 = normalMap360;
					float3 In183_g102 = normal186_g102;
					float2 uv_WrinkleNormalArray = IN.ase_texcoord6.xy;
					float3 In1183_g102 = ( ( UnpackScaleNormal( SAMPLE_TEXTURE2D_ARRAY( _WrinkleNormalArray, sampler_Linear_Repeat, float3(uv_WrinkleNormalArray,0.0) ), normalMapScale359 ) - normal186_g102 ) * temp_output_23_0_g105 );
					float3 In2183_g102 = ( ( UnpackScaleNormal( SAMPLE_TEXTURE2D_ARRAY( _WrinkleNormalArray, sampler_Linear_Repeat, float3(uv_WrinkleNormalArray,1.0) ), normalMapScale359 ) - normal186_g102 ) * temp_output_23_0_g106 );
					float3 In3183_g102 = ( ( UnpackScaleNormal( SAMPLE_TEXTURE2D_ARRAY( _WrinkleNormalArray, sampler_Linear_Repeat, float3(uv_WrinkleNormalArray,2.0) ), normalMapScale359 ) - normal186_g102 ) * temp_output_23_0_g107 );
					float3 localMinMaxDeltaBlend3183_g102 = MinMaxDeltaBlend3183_g102( In183_g102 , In1183_g102 , In2183_g102 , In3183_g102 );
					float3 normalWrinkle439 = localMinMaxDeltaBlend3183_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float3 staticSwitch467 = normalMap360;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float3 staticSwitch467 = normalWrinkle439;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float3 staticSwitch467 = normalWrinkle439;
					#else
					float3 staticSwitch467 = normalMap360;
					#endif
					float2 uv_NormalBlendMap = IN.ase_texcoord6.xy * _NormalBlendMap_ST.xy + _NormalBlendMap_ST.zw;
					#ifdef BOOLEAN_IS_HEAD_ON
					float3 staticSwitch71 = (( _UseBlend )?( BlendNormals( staticSwitch467 , UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalBlendMap, sampler_Linear_Repeat, uv_NormalBlendMap ), _NormalBlendStrength ) ) ):( staticSwitch467 ));
					#else
					float3 staticSwitch71 = staticSwitch467;
					#endif
					float2 temp_cast_12 = (_MicroNormalTiling).xx;
					float2 texCoord344 = IN.ase_texcoord6.xy * temp_cast_12 + float2( 0,0 );
					float2 uv_MaskMap = IN.ase_texcoord6.xy * _MaskMap_ST.xy + _MaskMap_ST.zw;
					float4 tex2DNode32 = SAMPLE_TEXTURE2D( _MaskMap, sampler_Linear_Repeat, uv_MaskMap );
					float microNormalMask287 = tex2DNode32.b;
					float3 temp_output_61_0 = BlendNormals( staticSwitch71 , UnpackScaleNormal( SAMPLE_TEXTURE2D( _MicroNormalMap, sampler_Linear_Repeat, texCoord344 ), ( _MicroNormalStrength * microNormalMask287 ) ) );
					float3 temp_output_111_0_g111 = ddx( PositionWS );
					float3 temp_output_113_0_g111 = cross( ddy( PositionWS ) , NormalWS );
					float dotResult115_g111 = dot( temp_output_111_0_g111 , temp_output_113_0_g111 );
					float2 uv_DisplacementMap = IN.ase_texcoord6.xy * _DisplacementMap_ST.xy + _DisplacementMap_ST.zw;
					float displacementMap590 = SAMPLE_TEXTURE2D( _DisplacementMap, sampler_Linear_Repeat, uv_DisplacementMap ).r;
					float displacement229_g102 = displacementMap590;
					float In245_g102 = displacement229_g102;
					float2 uv_WrinkleDisplacementPack = IN.ase_texcoord6.xy * _WrinkleDisplacementPack_ST.xy + _WrinkleDisplacementPack_ST.zw;
					float4 tex2DNode538 = SAMPLE_TEXTURE2D( _WrinkleDisplacementPack, sampler_Linear_Repeat, uv_WrinkleDisplacementPack );
					float displacementStrength234_g102 = _WrinkleDisplacementStrength;
					float In1245_g102 = ( ( tex2DNode538.r - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g105 );
					float In2245_g102 = ( ( tex2DNode538.g - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g106 );
					float In3245_g102 = ( ( tex2DNode538.b - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1245_g102 = MinMaxDeltaBlend1245_g102( In245_g102 , In1245_g102 , In2245_g102 , In3245_g102 );
					float displacementWrinkle594 = localMinMaxDeltaBlend1245_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch599 = displacementWrinkle594;
					#else
					float staticSwitch599 = displacementMap590;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch600 = staticSwitch599;
					#else
					float staticSwitch600 = displacementMap590;
					#endif
					float temp_output_602_0 = ( staticSwitch600 - _DisplacementLevel );
					float finalDisplacement609 = temp_output_602_0;
					float temp_output_20_0_g111 = finalDisplacement609;
					float3 normalizeResult130_g111 = normalize( ( ( abs( dotResult115_g111 ) * NormalWS ) - ( _BumpStrength * float3( 0.05,0.05,0.05 ) * sign( dotResult115_g111 ) * ( ( ddx( temp_output_20_0_g111 ) * temp_output_113_0_g111 ) + ( ddy( temp_output_20_0_g111 ) * cross( NormalWS , temp_output_111_0_g111 ) ) ) ) ) );
					float3x3 ase_worldToTangent = float3x3( TangentWS, BitangentWS, NormalWS );
					float3 worldToTangentDir42_g111 = mul( ase_worldToTangent, normalizeResult130_g111 );
					float3 temp_output_614_0 = BlendNormals( temp_output_61_0 , worldToTangentDir42_g111 );
					#if defined( ENUM_DISPLACEMENT_MODE_NONE )
					float3 staticSwitch611 = temp_output_61_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_BUMP )
					float3 staticSwitch611 = temp_output_614_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPLACEMENT )
					float3 staticSwitch611 = temp_output_61_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP )
					float3 staticSwitch611 = temp_output_614_0;
					#else
					float3 staticSwitch611 = temp_output_61_0;
					#endif
					float3 finalTangentNormal525 = staticSwitch611;
					float3 normal162_g110 = finalTangentNormal525;
					float3 tanToWorld0 = float3( TangentWS.x, BitangentWS.x, NormalWS.x );
					float3 tanToWorld1 = float3( TangentWS.y, BitangentWS.y, NormalWS.y );
					float3 tanToWorld2 = float3( TangentWS.z, BitangentWS.z, NormalWS.z );
					float3 tanNormal95_g110 = normal162_g110;
					float3 worldNormal95_g110 = normalize( float3( dot( tanToWorld0, tanNormal95_g110 ), dot( tanToWorld1, tanNormal95_g110 ), dot( tanToWorld2, tanNormal95_g110 ) ) );
					float3 worldSpaceLightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( PositionWS ) );
					float3 normalizeResult102_g110 = normalize( ( ( _SSSNormalDistortion * worldNormal95_g110 ) + worldSpaceLightDir ) );
					float dotResult106_g110 = dot( -normalizeResult102_g110 , ViewDirWS );
					float dotResult111_g110 = dot( worldNormal95_g110 , ViewDirWS );
					#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
					float4 ase_lightColor = 0;
					#else //aselc
					float4 ase_lightColor = _LightColor0;
					#endif //aselc
					float4 temp_output_124_0_g110 = _SubsurfaceFalloff;
					float2 uv_SubsurfaceBlurMap = IN.ase_texcoord6.xy * _SubsurfaceBlurMap_ST.xy + _SubsurfaceBlurMap_ST.zw;
					float4 temp_output_123_0_g110 = SAMPLE_TEXTURE2D( _SubsurfaceBlurMap, sampler_Linear_Repeat, uv_SubsurfaceBlurMap );
					float localSkinMask179 = ( 0.0 );
					float2 uv_RGBAMask = IN.ase_texcoord6.xy * _RGBAMask_ST.xy + _RGBAMask_ST.zw;
					float4 tex2DNode123 = SAMPLE_TEXTURE2D( _RGBAMask, sampler_Linear_Repeat, uv_RGBAMask );
					float4 In1179 = tex2DNode123;
					float4 appendResult150 = (float4(_RSmoothnessMod , _GSmoothnessMod , _BSmoothnessMod , _ASmoothnessMod));
					float4 Mod1179 = appendResult150;
					float4 appendResult153 = (float4(_RScatterScale , _GScatterScale , _BScatterScale , _AScatterScale));
					float4 Scatter1179 = appendResult153;
					float UMMS179 = _UnmaskedSmoothnessMod;
					float UMSS179 = _UnmaskedScatterScale;
					float SmoothnessMod179 = 0.0;
					float ScatterMask179 = 0.0;
					SkinMask179( In1179 , Mod1179 , Scatter1179 , UMMS179 , UMSS179 , SmoothnessMod179 , ScatterMask179 );
					float localHeadMask156 = ( 0.0 );
					float4 In1156 = tex2DNode123;
					float2 uv_CFULCMask = IN.ase_texcoord6.xy * _CFULCMask_ST.xy + _CFULCMask_ST.zw;
					float4 In2156 = SAMPLE_TEXTURE2D( _CFULCMask, sampler_Linear_Repeat, uv_CFULCMask );
					float2 uv_EarNeckMask = IN.ase_texcoord6.xy * _EarNeckMask_ST.xy + _EarNeckMask_ST.zw;
					float4 In3156 = SAMPLE_TEXTURE2D( _EarNeckMask, sampler_Linear_Repeat, uv_EarNeckMask );
					float4 Mod1156 = appendResult150;
					float4 appendResult151 = (float4(_CheekSmoothnessMod , _ForeheadSmoothnessMod , _UpperLipSmoothnessMod , _ChinSmoothnessMod));
					float4 Mod2156 = appendResult151;
					float4 appendResult152 = (float4(_NeckSmoothnessMod , _EarSmoothnessMod , 0.0 , 0.0));
					float4 Mod3156 = appendResult152;
					float4 Scatter1156 = appendResult153;
					float4 appendResult154 = (float4(_CheekScatterScale , _ForeheadScatterScale , _UpperLipScatterScale , _ChinScatterScale));
					float4 Scatter2156 = appendResult154;
					float4 appendResult155 = (float4(_NeckScatterScale , _EarScatterScale , 0.0 , 0.0));
					float4 Scatter3156 = appendResult155;
					float UMMS156 = _UnmaskedSmoothnessMod;
					float UMSS156 = _UnmaskedScatterScale;
					float SmoothnessMod156 = 0.0;
					float ScatterMask156 = 0.0;
					HeadMask156( In1156 , In2156 , In3156 , Mod1156 , Mod2156 , Mod3156 , Scatter1156 , Scatter2156 , Scatter3156 , UMMS156 , UMSS156 , SmoothnessMod156 , ScatterMask156 );
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch169 = ScatterMask156;
					#else
					float staticSwitch169 = ScatterMask179;
					#endif
					float microScatteringMultiplier277 = ( _SubsurfaceScale * staticSwitch169 );
					float temp_output_127_0_g110 = ( temp_output_120_0_g110 * ( tex2DNode625.r * microScatteringMultiplier277 ) * _SSSBlurStrength );
					float4 lerpResult142_g110 = lerp( baseColor266 , temp_output_123_0_g110 , ( temp_output_124_0_g110 * temp_output_127_0_g110 ));
					float4 sssDiffuse649 = ( ( ( ( temp_output_144_0_g110 * temp_output_144_0_g110 ) * ( _SSSTransmission * saturate( dotResult106_g110 ) * saturate( ( 1.0 - dotResult111_g110 ) ) ) ) * ( ( ase_lightColor * temp_output_124_0_g110 ) * temp_output_123_0_g110 ) ) + lerpResult142_g110 );
					#ifdef BOOLEAN_USE_SSS_ON
					float4 staticSwitch652 = sssDiffuse649;
					#else
					float4 staticSwitch652 = baseColor266;
					#endif
					
					float3 In138_g110 = normal162_g110;
					float Strength138_g110 = ( 1.0 - temp_output_127_0_g110 );
					float3 localMyCustomExpression138_g110 = MyCustomExpression138_g110( In138_g110 , Strength138_g110 );
					float3 sssNormal650 = localMyCustomExpression138_g110;
					#ifdef BOOLEAN_USE_SSS_ON
					float3 staticSwitch653 = sssNormal650;
					#else
					float3 staticSwitch653 = finalTangentNormal525;
					#endif
					
					float metallicMap285 = tex2DNode32.r;
					
					float smoothnessMap288 = tex2DNode32.a;
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch170 = SmoothnessMod156;
					#else
					float staticSwitch170 = SmoothnessMod179;
					#endif
					float microSmoothnessMod276 = ( staticSwitch170 + _MicroSmoothnessMod );
					float smoothnessAO685 = Smoothness683;
					float smoothness185_g102 = smoothnessMap288;
					float In182_g102 = smoothness185_g102;
					float2 uv_WrinkleRoughnessPack = IN.ase_texcoord6.xy * _WrinkleRoughnessPack_ST.xy + _WrinkleRoughnessPack_ST.zw;
					float4 break498 = ( 1.0 - SAMPLE_TEXTURE2D( _WrinkleRoughnessPack, sampler_Linear_Repeat, uv_WrinkleRoughnessPack ) );
					float In1182_g102 = ( ( break498.r - smoothness185_g102 ) * temp_output_23_0_g105 );
					float In2182_g102 = ( ( break498.g - smoothness185_g102 ) * temp_output_23_0_g106 );
					float In3182_g102 = ( ( break498.b - smoothness185_g102 ) * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1S182_g102 = MinMaxDeltaBlend1S182_g102( In182_g102 , In1182_g102 , In2182_g102 , In3182_g102 );
					float smoothnessWrinkle438 = localMinMaxDeltaBlend1S182_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch468 = smoothnessMap288;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch468 = smoothnessWrinkle438;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch468 = smoothnessWrinkle438;
					#else
					float staticSwitch468 = smoothnessMap288;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch223 = ( smoothnessAO685 * ( microSmoothnessMod276 + staticSwitch468 ) );
					#else
					float staticSwitch223 = ( smoothnessMap288 + microSmoothnessMod276 );
					#endif
					float lerpResult686 = lerp( 1.0 , staticSwitch223 , _SmoothnessContrast);
					float lerpResult41 = lerp( _SmoothnessMin , _SmoothnessMax , lerpResult686);
					float2 uv_CavityMap = IN.ase_texcoord6.xy * _CavityMap_ST.xy + _CavityMap_ST.zw;
					float3 N692 = NormalWS;
					float3 V692 = ViewDirWS;
					float localFasterFresnel692 = FasterFresnel692( N692 , V692 );
					float lerpResult512 = lerp( 1.0 , SAMPLE_TEXTURE2D( _CavityMap, sampler_Linear_Repeat, uv_CavityMap ).r , ( _CavityStrength * saturate( ( 1.0 - localFasterFresnel692 ) ) ));
					
					float ambientOcclusionMap286 = tex2DNode32.g;
					
					float2 uv_EmissionMap = IN.ase_texcoord6.xy * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
					

					o.Albedo = staticSwitch652.rgb;
					o.Normal = staticSwitch653;

					half3 Specular = half3( 0, 0, 0 );
					half Metallic = metallicMap285;
					half Smoothness = (( _UseCavity )?( ( lerpResult41 * lerpResult512 ) ):( lerpResult41 ));
					half Occlusion = ( 1.0 - ( ( 1.0 - ambientOcclusionMap286 ) * _AOStrength ) );

					#if defined(ASE_LIGHTING_SIMPLE)
						o.Specular = Specular.x;
						o.Gloss = Smoothness;
					#else
						#if defined(_SPECULAR_SETUP)
							o.Specular = Specular;
						#else
							o.Metallic = Metallic;
						#endif
						o.Occlusion = Occlusion;
						o.Smoothness = Smoothness;
					#endif

					o.Emission = ( _EmissiveColor * SAMPLE_TEXTURE2D( _EmissionMap, sampler_Linear_Repeat, uv_EmissionMap ) ).rgb;
					o.Alpha = 1;
					half AlphaClipThreshold = 0.5;
					half AlphaClipThresholdShadow = 0.5;
					half3 BakedGI = 0;
					half3 Transmission = 1;
					half3 Translucency = 1;

					#if defined( ASE_DEPTH_WRITE_ON )
						float DeviceDepth = IN.pos.z;
					#endif

					#ifdef _ALPHATEST_ON
						clip( o.Alpha - AlphaClipThreshold );
					#endif

					#if defined( ASE_CHANGES_WORLD_POS )
					{
						#if defined( ASE_RECEIVE_SHADOWS )
							UNITY_LIGHT_ATTENUATION( temp, IN, PositionWS )
							LightAtten = temp;
						#else
							LightAtten = 1;
						#endif
					}
					#endif

					#if ( ASE_FRAGMENT_NORMAL == 0 )
						o.Normal = normalize( o.Normal.x * TangentWS + o.Normal.y * BitangentWS + o.Normal.z * NormalWS );
					#elif ( ASE_FRAGMENT_NORMAL == 1 )
						o.Normal = UnityObjectToWorldNormal( o.Normal );
					#elif ( ASE_FRAGMENT_NORMAL == 2 )
						// @diogo: already in world-space; do nothing
					#endif

					#if defined( ASE_DEPTH_WRITE_ON )
						outputDepth = DeviceDepth;
					#endif

					#ifndef USING_DIRECTIONAL_LIGHT
						half3 lightDir = normalize( UnityWorldSpaceLightDir( PositionWS ) );
					#else
						half3 lightDir = _WorldSpaceLightPos0.xyz;
					#endif

					UnityGI gi;
					UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
					gi.indirect.diffuse = 0;
					gi.indirect.specular = 0;
					gi.light.color = _LightColor0.rgb;
					gi.light.dir = lightDir;

					UnityGIInput giInput;
					UNITY_INITIALIZE_OUTPUT(UnityGIInput, giInput);
					giInput.light = gi.light;
					giInput.worldPos = PositionWS;
					giInput.worldViewDir = ViewDirWS;
					giInput.atten = atten;
					#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
						giInput.lightmapUV = IN.ambientOrLightmapUV;
					#else
						giInput.lightmapUV = 0.0;
					#endif
					#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
						giInput.ambient = IN.ambientOrLightmapUV.rgb;
					#else
						giInput.ambient.rgb = 0.0;
					#endif
					giInput.probeHDR[0] = unity_SpecCube0_HDR;
					giInput.probeHDR[1] = unity_SpecCube1_HDR;
					#if defined(UNITY_SPECCUBE_BLENDING) || defined(UNITY_SPECCUBE_BOX_PROJECTION)
						giInput.boxMin[0] = unity_SpecCube0_BoxMin;
					#endif
					#ifdef UNITY_SPECCUBE_BOX_PROJECTION
						giInput.boxMax[0] = unity_SpecCube0_BoxMax;
						giInput.probePosition[0] = unity_SpecCube0_ProbePosition;
						giInput.boxMax[1] = unity_SpecCube1_BoxMax;
						giInput.boxMin[1] = unity_SpecCube1_BoxMin;
						giInput.probePosition[1] = unity_SpecCube1_ProbePosition;
					#endif

					#if defined(ASE_LIGHTING_SIMPLE)
						#if defined(_SPECULAR_SETUP)
							LightingBlinnPhong_GI(o, giInput, gi);
						#else
							LightingLambert_GI(o, giInput, gi);
						#endif
					#else
						#if defined(_SPECULAR_SETUP)
							LightingStandardSpecular_GI(o, giInput, gi);
						#else
							LightingStandard_GI(o, giInput, gi);
						#endif
					#endif

					#ifdef ASE_BAKEDGI
						gi.indirect.diffuse = BakedGI;
					#endif

					#if UNITY_SHOULD_SAMPLE_SH && !defined(LIGHTMAP_ON) && defined(ASE_NO_AMBIENT)
						gi.indirect.diffuse = 0;
					#endif

					half4 c = 0;
					#if defined(ASE_LIGHTING_SIMPLE)
						#if defined(_SPECULAR_SETUP)
							c += LightingBlinnPhong (o, ViewDirWS, gi);
						#else
							c += LightingLambert( o, gi );
						#endif
					#else
						#if defined(_SPECULAR_SETUP)
							c += LightingStandardSpecular (o, ViewDirWS, gi);
						#else
							c += LightingStandard(o, ViewDirWS, gi);
						#endif
					#endif

					#ifdef ASE_TRANSMISSION
					{
						half shadow = _TransmissionShadow;
						#ifdef DIRECTIONAL
							half3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
						#else
							half3 lightAtten = gi.light.color;
						#endif
						half3 transmission = max(0 , -dot(o.Normal, gi.light.dir)) * lightAtten * Transmission;
						c.rgb += o.Albedo * transmission;
					}
					#endif

					#ifdef ASE_TRANSLUCENCY
					{
						half shadow = _TransShadow;
						half normal = _TransNormal;
						half scattering = _TransScattering;
						half direct = _TransDirect;
						half ambient = _TransAmbient;
						half strength = _TransStrength;

						#ifdef DIRECTIONAL
							half3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
						#else
							half3 lightAtten = gi.light.color;
						#endif
						half3 lightDir = gi.light.dir + o.Normal * normal;
						half transVdotL = pow( saturate( dot( ViewDirWS, -lightDir ) ), scattering );
						half3 translucency = lightAtten * (transVdotL * direct + gi.indirect.diffuse * ambient) * Translucency;
						c.rgb += o.Albedo * translucency * strength;
					}
					#endif

					c.rgb += o.Emission;

					#if defined( ASE_FOG )
						UNITY_EXTRACT_FOG_FROM_WORLD_POS( IN );
						UNITY_APPLY_FOG(_unity_fogCoord, c.rgb);
					#endif
					return c;
				}
			ENDCG
		}

		
		Pass
		{
			
			Name "ForwardAdd"
			Tags { "LightMode"="ForwardAdd" }
			ZWrite Off
			Blend One One

			CGPROGRAM
				#define ASE_GEOMETRY
				#define ASE_FRAGMENT_NORMAL 0
				#define ASE_RECEIVE_SHADOWS
				#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
				#pragma multi_compile_instancing
				#pragma multi_compile _ LOD_FADE_CROSSFADE
				#pragma multi_compile_fog
				#define ASE_FOG
				#define ASE_VERSION 19908
				#define ASE_USING_SAMPLING_MACROS 1

				#pragma vertex vert
				#pragma fragment frag
				#pragma skip_variants INSTANCING_ON
				#pragma multi_compile_fwdadd_fullshadows
				#ifndef UNITY_PASS_FORWARDADD
					#define UNITY_PASS_FORWARDADD
				#endif
				#include "HLSLSupport.cginc"
				#if defined( ASE_GEOMETRY ) || defined( ASE_IMPOSTOR )
					#ifndef UNITY_INSTANCED_LOD_FADE
						#define UNITY_INSTANCED_LOD_FADE
					#endif
					#ifndef UNITY_INSTANCED_SH
						#define UNITY_INSTANCED_SH
					#endif
					#ifndef UNITY_INSTANCED_LIGHTMAPSTS
						#define UNITY_INSTANCED_LIGHTMAPSTS
					#endif
				#endif
				#include "UnityShaderVariables.cginc"
				#include "UnityCG.cginc"
				#include "Lighting.cginc"
				#include "UnityPBSLighting.cginc"
				#include "AutoLight.cginc"

				#if defined( UNITY_INSTANCING_ENABLED ) && defined( ASE_INSTANCED_TERRAIN ) && ( defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL) || defined(_INSTANCEDTERRAINNORMALS_PIXEL) )
					#define ENABLE_TERRAIN_PERPIXEL_NORMAL
				#endif

				#include "UnityStandardUtils.cginc"
				#include "UnityStandardBRDF.cginc"
				#define ASE_NEEDS_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_NORMAL
				#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
				#define ASE_NEEDS_WORLD_POSITION
				#define ASE_NEEDS_FRAG_WORLD_POSITION
				#define ASE_NEEDS_WORLD_NORMAL
				#define ASE_NEEDS_FRAG_WORLD_NORMAL
				#define ASE_NEEDS_FRAG_WORLD_TANGENT
				#define ASE_NEEDS_FRAG_WORLD_BITANGENT
				#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
				#pragma shader_feature_local ENUM_DISPLACEMENT_MODE_NONE ENUM_DISPLACEMENT_MODE_BUMP ENUM_DISPLACEMENT_MODE_DISPLACEMENT ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP
				#pragma shader_feature_local BOOLEAN_IS_HEAD_ON
				#pragma shader_feature_local ENUM_WRINKLE_MODE_NONE ENUM_WRINKLE_MODE_WRINKLE ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT
				#pragma shader_feature_local BOOLEAN_USE_SSS_ON
				#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#else//ASE Sampling Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY(tex,samplertex,coord) tex2DArray(tex,coord)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
				#endif//ASE Sampling Macros
				


				struct appdata
				{
					float4 vertex : POSITION;
					half3 normal : NORMAL;
					half4 tangent : TANGENT;
					float4 texcoord : TEXCOORD0;
					float4 texcoord1 : TEXCOORD1;
					float4 texcoord2 : TEXCOORD2;
					
					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct v2f
				{
					float4 pos : SV_POSITION;
					float4 worldPos : TEXCOORD0; // xyz = positionWS, w = fogCoord
					half3 normalWS : TEXCOORD1;
					float4 tangentWS : TEXCOORD2; // holds terrainUV ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					UNITY_LIGHTING_COORDS( 3, 4 )
					float4 ase_texcoord5 : TEXCOORD5;
					UNITY_VERTEX_INPUT_INSTANCE_ID
					UNITY_VERTEX_OUTPUT_STEREO
				};

				#ifdef ASE_TRANSMISSION
					float _TransmissionShadow;
				#endif
				#ifdef ASE_TRANSLUCENCY
					float _TransStrength;
					float _TransNormal;
					float _TransScattering;
					float _TransDirect;
					float _TransAmbient;
					float _TransShadow;
				#endif
				#ifdef ASE_TESSELLATION
					float _TessPhongStrength;
					float _TessValue;
					float _TessMin;
					float _TessMax;
					float _TessEdgeLength;
					float _TessMaxDisp;
				#endif

				UNITY_DECLARE_TEX2D_NOSAMPLER(_DisplacementMap);
				uniform float4 _DisplacementMap_ST;
				SamplerState sampler_Linear_Repeat;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleDisplacementPack);
				uniform float4 _WrinkleDisplacementPack_ST;
				uniform float _WrinkleDisplacementStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleFlowPack);
				uniform float4 _WrinkleFlowPack_ST;
				uniform float4 _WrinkleValueSet12CL;
				uniform float4 _WrinkleMaskSetArray_ST;
				uniform float4 _WrinkleValueSet1AL;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleMaskSetArray);
				uniform float4 _WrinkleValueSet1BL;
				uniform float4 _WrinkleValueSet1AR;
				uniform float4 _WrinkleValueSet1BR;
				uniform float4 _WrinkleValueSet12CR;
				uniform float4 _WrinkleValueSet2L;
				uniform float4 _WrinkleValueSet2R;
				uniform float4 _WrinkleValueSetBCCB;
				uniform float4 _WrinkleValueSet3DB;
				uniform float4 _WrinkleValueSet3L;
				uniform float4 _WrinkleValueSet3R;
				uniform float _DisplacementLevel;
				uniform float _DisplacementStrength;
				uniform float4 _DiffuseColor;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_DiffuseMap);
				uniform float4 _DiffuseMap_ST;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleDiffuseArray);
				uniform float4 _WrinkleDiffuseArray_ST;
				uniform float _UseBlend;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorBlendMap);
				uniform float4 _ColorBlendMap_ST;
				uniform float _ColorBlendStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_MNAOMap);
				uniform float4 _MNAOMap_ST;
				uniform float _MouthCavityAO;
				uniform float _NostrilCavityAO;
				uniform float _LipsCavityAO;
				uniform float _ThicknessScale;
				uniform float _ThicknessScaleMin;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_SSSThicknessPack);
				uniform float4 _SSSThicknessPack_ST;
				uniform float _SSSTransmission;
				uniform float _SSSNormalDistortion;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalMap);
				uniform float4 _NormalMap_ST;
				uniform float _NormalStrength;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleNormalArray);
				uniform float4 _WrinkleNormalArray_ST;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalBlendMap);
				uniform float4 _NormalBlendMap_ST;
				uniform float _NormalBlendStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_MicroNormalMap);
				uniform float _MicroNormalTiling;
				uniform float _MicroNormalStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskMap);
				uniform float4 _MaskMap_ST;
				uniform float _BumpStrength;
				uniform float4 _SubsurfaceFalloff;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_SubsurfaceBlurMap);
				uniform float4 _SubsurfaceBlurMap_ST;
				uniform float _SubsurfaceScale;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_RGBAMask);
				uniform float4 _RGBAMask_ST;
				uniform float _RSmoothnessMod;
				uniform float _GSmoothnessMod;
				uniform float _BSmoothnessMod;
				uniform float _ASmoothnessMod;
				uniform float _RScatterScale;
				uniform float _GScatterScale;
				uniform float _BScatterScale;
				uniform float _AScatterScale;
				uniform float _UnmaskedSmoothnessMod;
				uniform float _UnmaskedScatterScale;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_CFULCMask);
				uniform float4 _CFULCMask_ST;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_EarNeckMask);
				uniform float4 _EarNeckMask_ST;
				uniform float _CheekSmoothnessMod;
				uniform float _ForeheadSmoothnessMod;
				uniform float _UpperLipSmoothnessMod;
				uniform float _ChinSmoothnessMod;
				uniform float _NeckSmoothnessMod;
				uniform float _EarSmoothnessMod;
				uniform float _CheekScatterScale;
				uniform float _ForeheadScatterScale;
				uniform float _UpperLipScatterScale;
				uniform float _ChinScatterScale;
				uniform float _NeckScatterScale;
				uniform float _EarScatterScale;
				uniform float _SSSBlurStrength;
				uniform float _UseCavity;
				uniform float _SmoothnessMin;
				uniform float _SmoothnessMax;
				uniform float _MicroSmoothnessMod;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleRoughnessPack);
				uniform float4 _WrinkleRoughnessPack_ST;
				uniform float _SmoothnessContrast;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_CavityMap);
				uniform float4 _CavityMap_ST;
				uniform float _CavityStrength;
				uniform float _AOStrength;
				uniform float4 _EmissiveColor;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionMap);
				uniform float4 _EmissionMap_ST;


				//This is a late directive
				
				float MinMaxDeltaBlend1245_g102( float In, float In1, float In2, float In3 )
				{
					return max(max(In1, In2), In3) + min(min(In1, In2), In3) + In;
				}
				
				float4 MinMaxDeltaBlend4S181_g102( float4 In, float4 In1, float4 In2, float4 In3 )
				{
					return saturate(max(max(In1, In2), In3) + min(min(In1, In2), In3) + In);
				}
				
				float MyCustomExpression683( float4 In, float4 Contrast, out float Smoothness )
				{
					float4 mask = lerp(1, In, Contrast);
					float AO = saturate(mask.y*mask.z*mask.w);
					Smoothness = AO * mask.r;
					return AO;
				}
				
				float3 MinMaxDeltaBlend3183_g102( float3 In, float3 In1, float3 In2, float3 In3 )
				{
					return max(max(In1, In2), In3) + min(min(In1, In2), In3) + In;
				}
				
				void SkinMask179( float4 In1, float4 Mod1, float4 Scatter1, float UMMS, float UMSS, out float SmoothnessMod, out float ScatterMask )
				{
					float mask = saturate(In1.r + In1.g + In1.b + In1.a);
					float unmask = 1.0 - mask;
					SmoothnessMod = dot(In1, Mod1) + (UMMS * unmask);
					ScatterMask = dot(In1, Scatter1) + (UMSS * unmask);
					return;
				}
				
				void HeadMask156( float4 In1, float4 In2, float4 In3, float4 Mod1, float4 Mod2, float4 Mod3, float4 Scatter1, float4 Scatter2, float4 Scatter3, float UMMS, float UMSS, out float SmoothnessMod, out float ScatterMask )
				{
					In3.zw = 0;
					float4 m = In1 + In2 + In3;
					float mask = saturate(m.x + m.y + m.z + m.w);
					float unmask = 1.0 - mask;
					SmoothnessMod = dot(In1, Mod1) + dot(In2, Mod2) + dot(In3, Mod3) + (UMMS * unmask);
					ScatterMask = dot(In1, Scatter1) + dot(In2, Scatter2) + dot(In3, Scatter3) + (UMSS * unmask);
					return;
				}
				
				float3 MyCustomExpression138_g110( float3 In, float Strength )
				{
					return float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
				}
				
				float MinMaxDeltaBlend1S182_g102( float In, float In1, float In2, float In3 )
				{
					return saturate(max(max(In1, In2), In3) + min(min(In1, In2), In3) + In);
				}
				
				float FasterFresnel692( float3 N, float3 V )
				{
					float NdotV = saturate(dot( N, V));
					float om = 1 - NdotV;
					float oms = om * om;
					return oms * oms;
				}
				

				v2f VertexFunction (appdata v  ) {
					UNITY_SETUP_INSTANCE_ID(v);
					v2f o;
					UNITY_INITIALIZE_OUTPUT(v2f,o);
					UNITY_TRANSFER_INSTANCE_ID(v,o);
					UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

					float3 _Vector0 = float3(0,0,0);
					float2 uv_DisplacementMap = v.texcoord.xyzw.xy * _DisplacementMap_ST.xy + _DisplacementMap_ST.zw;
					float displacementMap590 = SAMPLE_TEXTURE2D_LOD( _DisplacementMap, sampler_Linear_Repeat, uv_DisplacementMap, 0.0 ).r;
					float displacement229_g102 = displacementMap590;
					float In245_g102 = displacement229_g102;
					float2 uv_WrinkleDisplacementPack = v.texcoord.xyzw.xy * _WrinkleDisplacementPack_ST.xy + _WrinkleDisplacementPack_ST.zw;
					float4 tex2DNode538 = SAMPLE_TEXTURE2D_LOD( _WrinkleDisplacementPack, sampler_Linear_Repeat, uv_WrinkleDisplacementPack, 0.0 );
					float displacementStrength234_g102 = _WrinkleDisplacementStrength;
					float2 uv_WrinkleFlowPack = v.texcoord.xyzw.xy * _WrinkleFlowPack_ST.xy + _WrinkleFlowPack_ST.zw;
					float4 tex2DNode475 = SAMPLE_TEXTURE2D_LOD( _WrinkleFlowPack, sampler_Linear_Repeat, uv_WrinkleFlowPack, 0.0 );
					float2 texCoord10_g102 = v.texcoord.xyzw.xy * float2( 1,1 ) + float2( 0,0 );
					float temp_output_1_0_g104 = 0.49;
					float leftMask27_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g104 ) / ( 0.51 - temp_output_1_0_g104 ) ) );
					float4 break107_g102 = _WrinkleValueSet12CL;
					float2 appendResult112_g102 = (float2(break107_g102.x , break107_g102.y));
					float2 uv_WrinkleMaskSetArray = v.texcoord.xyzw.xy;
					float4 break109_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,4.0), 0.0 );
					float2 appendResult115_g102 = (float2(break109_g102.x , break109_g102.y));
					float dotResult121_g102 = dot( appendResult112_g102 , appendResult115_g102 );
					float value1CLeft135_g102 = dotResult121_g102;
					float4 maskSet1A214_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,0.0), 0.0 );
					float dotResult29_g102 = dot( _WrinkleValueSet1AL , maskSet1A214_g102 );
					float4 temp_output_16_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,1.0), 0.0 );
					float dotResult35_g102 = dot( _WrinkleValueSet1BL , temp_output_16_0_g102 );
					float dotResult30_g102 = dot( maskSet1A214_g102 , _WrinkleValueSet1AR );
					float dotResult36_g102 = dot( temp_output_16_0_g102 , _WrinkleValueSet1BR );
					float4 break108_g102 = _WrinkleValueSet12CR;
					float2 appendResult117_g102 = (float2(break108_g102.x , break108_g102.y));
					float dotResult122_g102 = dot( appendResult115_g102 , appendResult117_g102 );
					float value1CRight136_g102 = dotResult122_g102;
					float temp_output_1_0_g103 = 0.51;
					float rightMask28_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g103 ) / ( 0.49 - temp_output_1_0_g103 ) ) );
					float temp_output_16_0_g105 = ( ( leftMask27_g102 * ( value1CLeft135_g102 + dotResult29_g102 + dotResult35_g102 ) ) + ( ( dotResult30_g102 + dotResult36_g102 + value1CRight136_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g105 = ( saturate( ( tex2DNode475.r + temp_output_16_0_g105 ) ) * temp_output_16_0_g105 );
					float In1245_g102 = ( ( tex2DNode538.r - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g105 );
					float2 appendResult113_g102 = (float2(break107_g102.z , break107_g102.w));
					float2 appendResult114_g102 = (float2(break109_g102.z , break109_g102.w));
					float dotResult123_g102 = dot( appendResult113_g102 , appendResult114_g102 );
					float value2CLeft137_g102 = dotResult123_g102;
					float4 temp_output_17_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,2.0), 0.0 );
					float dotResult41_g102 = dot( _WrinkleValueSet2L , temp_output_17_0_g102 );
					float dotResult42_g102 = dot( temp_output_17_0_g102 , _WrinkleValueSet2R );
					float2 appendResult116_g102 = (float2(break108_g102.z , break108_g102.w));
					float dotResult124_g102 = dot( appendResult114_g102 , appendResult116_g102 );
					float value2CRight138_g102 = dotResult124_g102;
					float temp_output_16_0_g106 = ( ( leftMask27_g102 * ( value2CLeft137_g102 + dotResult41_g102 ) ) + ( ( dotResult42_g102 + value2CRight138_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g106 = ( saturate( ( tex2DNode475.g + temp_output_16_0_g106 ) ) * temp_output_16_0_g106 );
					float In2245_g102 = ( ( tex2DNode538.g - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g106 );
					float4 break211_g102 = _WrinkleValueSetBCCB;
					float valueBCCLeft217_g102 = ( break211_g102.x * maskSet1A214_g102.y );
					float4 break118_g102 = _WrinkleValueSet3DB;
					float2 appendResult120_g102 = (float2(break118_g102.x , break118_g102.y));
					float dotResult127_g102 = dot( appendResult120_g102 , appendResult115_g102 );
					float value3DLeft129_g102 = dotResult127_g102;
					float4 temp_output_18_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,3.0), 0.0 );
					float dotResult47_g102 = dot( _WrinkleValueSet3L , temp_output_18_0_g102 );
					float dotResult48_g102 = dot( temp_output_18_0_g102 , _WrinkleValueSet3R );
					float2 appendResult119_g102 = (float2(break118_g102.z , break118_g102.w));
					float dotResult128_g102 = dot( appendResult115_g102 , appendResult119_g102 );
					float value3DRight130_g102 = dotResult128_g102;
					float valueBCCRight219_g102 = ( maskSet1A214_g102.y * break211_g102.y );
					float temp_output_16_0_g107 = ( ( leftMask27_g102 * ( valueBCCLeft217_g102 + value3DLeft129_g102 + dotResult47_g102 ) ) + ( ( dotResult48_g102 + value3DRight130_g102 + valueBCCRight219_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g107 = ( saturate( ( tex2DNode475.b + temp_output_16_0_g107 ) ) * temp_output_16_0_g107 );
					float In3245_g102 = ( ( tex2DNode538.b - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1245_g102 = MinMaxDeltaBlend1245_g102( In245_g102 , In1245_g102 , In2245_g102 , In3245_g102 );
					float displacementWrinkle594 = localMinMaxDeltaBlend1245_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch599 = displacementWrinkle594;
					#else
					float staticSwitch599 = displacementMap590;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch600 = staticSwitch599;
					#else
					float staticSwitch600 = displacementMap590;
					#endif
					float temp_output_602_0 = ( staticSwitch600 - _DisplacementLevel );
					float3 temp_output_608_0 = ( ( temp_output_602_0 * _DisplacementStrength ) * v.normal );
					#if defined( ENUM_DISPLACEMENT_MODE_NONE )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_BUMP )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPLACEMENT )
					float3 staticSwitch595 = temp_output_608_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP )
					float3 staticSwitch595 = temp_output_608_0;
					#else
					float3 staticSwitch595 = _Vector0;
					#endif
					
					o.ase_texcoord5.xy = v.texcoord.xyzw.xy;
					
					//setting value to unused interpolator channels and avoid initialization warnings
					o.ase_texcoord5.zw = 0;

					#ifdef ASE_ABSOLUTE_VERTEX_POS
						float3 defaultVertexValue = v.vertex.xyz;
					#else
						float3 defaultVertexValue = float3(0, 0, 0);
					#endif
					float3 vertexValue = staticSwitch595;
					#ifdef ASE_ABSOLUTE_VERTEX_POS
						v.vertex.xyz = vertexValue;
					#else
						v.vertex.xyz += vertexValue;
					#endif
					v.vertex.w = 1;
					v.normal = v.normal;
					v.tangent = v.tangent;

					float3 positionWS = mul( unity_ObjectToWorld, v.vertex ).xyz;
					half3 normalWS = UnityObjectToWorldNormal( v.normal );
					half3 tangentWS = UnityObjectToWorldDir( v.tangent.xyz );

					o.pos = UnityObjectToClipPos( v.vertex );
					o.worldPos.xyz = positionWS;
					o.normalWS = normalWS;
					o.tangentWS = half4( tangentWS, v.tangent.w );

					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
					#if defined( ASE_FOG )
						UNITY_TRANSFER_FOG_COMBINED_WITH_WORLD_POS( o, o.pos );
					#endif

					#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
						o.tangentWS.zw = v.texcoord.xy;
						o.tangentWS.xy = v.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					#endif
					return o;
				}

				#if defined(ASE_TESSELLATION)
				struct VertexControl
				{
					float4 vertex : INTERNALTESSPOS;
					half4 tangent : TANGENT;
					half3 normal : NORMAL;
					float4 texcoord : TEXCOORD0;
					float4 texcoord1 : TEXCOORD1;
					float4 texcoord2 : TEXCOORD2;
					
					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct TessellationFactors
				{
					float edge[3] : SV_TessFactor;
					float inside : SV_InsideTessFactor;
				};

				VertexControl vert ( appdata v )
				{
					VertexControl o;
					UNITY_SETUP_INSTANCE_ID(v);
					UNITY_TRANSFER_INSTANCE_ID(v, o);
					o.vertex = v.vertex;
					o.tangent = v.tangent;
					o.normal = v.normal;
					o.texcoord = v.texcoord;
					o.texcoord1 = v.texcoord1;
					o.texcoord2 = v.texcoord2;
					
					return o;
				}

				TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
				{
					TessellationFactors o;
					float4 tf = 1;
					float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
					float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
					#if defined(ASE_FIXED_TESSELLATION)
					tf = FixedTess( tessValue );
					#elif defined(ASE_DISTANCE_TESSELLATION)
					tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
					#elif defined(ASE_LENGTH_TESSELLATION)
					tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
					#elif defined(ASE_LENGTH_CULL_TESSELLATION)
					tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
					#endif
					o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
					return o;
				}

				[domain("tri")]
				[partitioning("fractional_odd")]
				[outputtopology("triangle_cw")]
				[patchconstantfunc("TessellationFunction")]
				[outputcontrolpoints(3)]
				VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
				{
				   return patch[id];
				}

				[domain("tri")]
				v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
				{
					appdata o = (appdata) 0;
					o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
					o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
					o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
					o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
					o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
					o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
					
					#if defined(ASE_PHONG_TESSELLATION)
					float3 pp[3];
					for (int i = 0; i < 3; ++i)
						pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
					float phongStrength = _TessPhongStrength;
					o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
					#endif
					UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
					return VertexFunction(o);
				}
				#else
				v2f vert ( appdata v )
				{
					return VertexFunction( v );
				}
				#endif

				half4 frag ( v2f IN 
					#if defined( ASE_DEPTH_WRITE_ON )
					, out float outputDepth : SV_Depth
					#endif
					) : SV_Target
				{
					UNITY_SETUP_INSTANCE_ID(IN);

					#ifdef LOD_FADE_CROSSFADE
						UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
					#endif

					#if defined(ASE_LIGHTING_SIMPLE)
						SurfaceOutput o = (SurfaceOutput)0;
					#else
						#if defined(_SPECULAR_SETUP)
							SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
						#else
							SurfaceOutputStandard o = (SurfaceOutputStandard)0;
						#endif
					#endif

					half atten;
					{
						#if defined( ASE_RECEIVE_SHADOWS )
							UNITY_LIGHT_ATTENUATION( temp, IN, IN.worldPos.xyz )
							atten = temp;
						#else
							atten = 1;
						#endif
					}

					float3 PositionWS = IN.worldPos.xyz;
					half3 ViewDirWS = normalize( UnityWorldSpaceViewDir( PositionWS ) );
					float4 ScreenPosNorm = float4( IN.pos.xy * ( _ScreenParams.zw - 1.0 ), IN.pos.zw );
					float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, IN.pos.z ) * IN.pos.w;
					float4 ScreenPos = ComputeScreenPos( ClipPos );
					half3 NormalWS = IN.normalWS;
					half3 TangentWS = IN.tangentWS.xyz;
					half3 BitangentWS = cross( IN.normalWS, IN.tangentWS.xyz ) * IN.tangentWS.w * unity_WorldTransformParams.w;
					half3 LightAtten = atten;

					#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
						float2 sampleCoords = (IN.tangentWS.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
						NormalWS = UnityObjectToWorldNormal(normalize(tex2D(_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
						TangentWS = -cross(unity_ObjectToWorld._13_23_33, NormalWS);
						BitangentWS = cross(NormalWS, -TangentWS);
					#endif

					float2 uv_DiffuseMap = IN.ase_texcoord5.xy * _DiffuseMap_ST.xy + _DiffuseMap_ST.zw;
					float4 diffuseMap358 = SAMPLE_TEXTURE2D( _DiffuseMap, sampler_Linear_Repeat, uv_DiffuseMap );
					float4 diffuse184_g102 = diffuseMap358;
					float4 In181_g102 = diffuse184_g102;
					float2 uv_WrinkleDiffuseArray = IN.ase_texcoord5.xy;
					float2 uv_WrinkleFlowPack = IN.ase_texcoord5.xy * _WrinkleFlowPack_ST.xy + _WrinkleFlowPack_ST.zw;
					float4 tex2DNode475 = SAMPLE_TEXTURE2D( _WrinkleFlowPack, sampler_Linear_Repeat, uv_WrinkleFlowPack );
					float2 texCoord10_g102 = IN.ase_texcoord5.xy * float2( 1,1 ) + float2( 0,0 );
					float temp_output_1_0_g104 = 0.49;
					float leftMask27_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g104 ) / ( 0.51 - temp_output_1_0_g104 ) ) );
					float4 break107_g102 = _WrinkleValueSet12CL;
					float2 appendResult112_g102 = (float2(break107_g102.x , break107_g102.y));
					float2 uv_WrinkleMaskSetArray = IN.ase_texcoord5.xy;
					float4 break109_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,4.0) );
					float2 appendResult115_g102 = (float2(break109_g102.x , break109_g102.y));
					float dotResult121_g102 = dot( appendResult112_g102 , appendResult115_g102 );
					float value1CLeft135_g102 = dotResult121_g102;
					float4 maskSet1A214_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,0.0) );
					float dotResult29_g102 = dot( _WrinkleValueSet1AL , maskSet1A214_g102 );
					float4 temp_output_16_0_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,1.0) );
					float dotResult35_g102 = dot( _WrinkleValueSet1BL , temp_output_16_0_g102 );
					float dotResult30_g102 = dot( maskSet1A214_g102 , _WrinkleValueSet1AR );
					float dotResult36_g102 = dot( temp_output_16_0_g102 , _WrinkleValueSet1BR );
					float4 break108_g102 = _WrinkleValueSet12CR;
					float2 appendResult117_g102 = (float2(break108_g102.x , break108_g102.y));
					float dotResult122_g102 = dot( appendResult115_g102 , appendResult117_g102 );
					float value1CRight136_g102 = dotResult122_g102;
					float temp_output_1_0_g103 = 0.51;
					float rightMask28_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g103 ) / ( 0.49 - temp_output_1_0_g103 ) ) );
					float temp_output_16_0_g105 = ( ( leftMask27_g102 * ( value1CLeft135_g102 + dotResult29_g102 + dotResult35_g102 ) ) + ( ( dotResult30_g102 + dotResult36_g102 + value1CRight136_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g105 = ( saturate( ( tex2DNode475.r + temp_output_16_0_g105 ) ) * temp_output_16_0_g105 );
					float4 In1181_g102 = ( ( SAMPLE_TEXTURE2D_ARRAY( _WrinkleDiffuseArray, sampler_Linear_Repeat, float3(uv_WrinkleDiffuseArray,0.0) ) - diffuse184_g102 ) * temp_output_23_0_g105 );
					float2 appendResult113_g102 = (float2(break107_g102.z , break107_g102.w));
					float2 appendResult114_g102 = (float2(break109_g102.z , break109_g102.w));
					float dotResult123_g102 = dot( appendResult113_g102 , appendResult114_g102 );
					float value2CLeft137_g102 = dotResult123_g102;
					float4 temp_output_17_0_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,2.0) );
					float dotResult41_g102 = dot( _WrinkleValueSet2L , temp_output_17_0_g102 );
					float dotResult42_g102 = dot( temp_output_17_0_g102 , _WrinkleValueSet2R );
					float2 appendResult116_g102 = (float2(break108_g102.z , break108_g102.w));
					float dotResult124_g102 = dot( appendResult114_g102 , appendResult116_g102 );
					float value2CRight138_g102 = dotResult124_g102;
					float temp_output_16_0_g106 = ( ( leftMask27_g102 * ( value2CLeft137_g102 + dotResult41_g102 ) ) + ( ( dotResult42_g102 + value2CRight138_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g106 = ( saturate( ( tex2DNode475.g + temp_output_16_0_g106 ) ) * temp_output_16_0_g106 );
					float4 In2181_g102 = ( ( SAMPLE_TEXTURE2D_ARRAY( _WrinkleDiffuseArray, sampler_Linear_Repeat, float3(uv_WrinkleDiffuseArray,1.0) ) - diffuse184_g102 ) * temp_output_23_0_g106 );
					float4 break211_g102 = _WrinkleValueSetBCCB;
					float valueBCCLeft217_g102 = ( break211_g102.x * maskSet1A214_g102.y );
					float4 break118_g102 = _WrinkleValueSet3DB;
					float2 appendResult120_g102 = (float2(break118_g102.x , break118_g102.y));
					float dotResult127_g102 = dot( appendResult120_g102 , appendResult115_g102 );
					float value3DLeft129_g102 = dotResult127_g102;
					float4 temp_output_18_0_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,3.0) );
					float dotResult47_g102 = dot( _WrinkleValueSet3L , temp_output_18_0_g102 );
					float dotResult48_g102 = dot( temp_output_18_0_g102 , _WrinkleValueSet3R );
					float2 appendResult119_g102 = (float2(break118_g102.z , break118_g102.w));
					float dotResult128_g102 = dot( appendResult115_g102 , appendResult119_g102 );
					float value3DRight130_g102 = dotResult128_g102;
					float valueBCCRight219_g102 = ( maskSet1A214_g102.y * break211_g102.y );
					float temp_output_16_0_g107 = ( ( leftMask27_g102 * ( valueBCCLeft217_g102 + value3DLeft129_g102 + dotResult47_g102 ) ) + ( ( dotResult48_g102 + value3DRight130_g102 + valueBCCRight219_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g107 = ( saturate( ( tex2DNode475.b + temp_output_16_0_g107 ) ) * temp_output_16_0_g107 );
					float4 In3181_g102 = ( ( SAMPLE_TEXTURE2D_ARRAY( _WrinkleDiffuseArray, sampler_Linear_Repeat, float3(uv_WrinkleDiffuseArray,2.0) ) - diffuse184_g102 ) * temp_output_23_0_g107 );
					float4 localMinMaxDeltaBlend4S181_g102 = MinMaxDeltaBlend4S181_g102( In181_g102 , In1181_g102 , In2181_g102 , In3181_g102 );
					float4 diffuseWrinkle437 = localMinMaxDeltaBlend4S181_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float4 staticSwitch464 = diffuseMap358;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float4 staticSwitch464 = diffuseWrinkle437;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float4 staticSwitch464 = diffuseWrinkle437;
					#else
					float4 staticSwitch464 = diffuseMap358;
					#endif
					float4 temp_output_357_0 = ( _DiffuseColor * staticSwitch464 );
					float2 uv_ColorBlendMap = IN.ase_texcoord5.xy * _ColorBlendMap_ST.xy + _ColorBlendMap_ST.zw;
					float4 blendOpSrc13 = SAMPLE_TEXTURE2D( _ColorBlendMap, sampler_Linear_Repeat, uv_ColorBlendMap );
					float4 blendOpDest13 = temp_output_357_0;
					float4 lerpBlendMode13 = lerp(blendOpDest13,(( blendOpDest13 > 0.5 ) ? ( 1.0 - 2.0 * ( 1.0 - blendOpDest13 ) * ( 1.0 - blendOpSrc13 ) ) : ( 2.0 * blendOpDest13 * blendOpSrc13 ) ),_ColorBlendStrength);
					float2 uv_MNAOMap = IN.ase_texcoord5.xy * _MNAOMap_ST.xy + _MNAOMap_ST.zw;
					float4 In683 = SAMPLE_TEXTURE2D( _MNAOMap, sampler_Linear_Repeat, uv_MNAOMap );
					float4 appendResult684 = (float4(1.0 , _MouthCavityAO , _NostrilCavityAO , _LipsCavityAO));
					float4 Contrast683 = appendResult684;
					float Smoothness683 = 0.0;
					float localMyCustomExpression683 = MyCustomExpression683( In683 , Contrast683 , Smoothness683 );
					float cavityAO280 = localMyCustomExpression683;
					#ifdef BOOLEAN_IS_HEAD_ON
					float4 staticSwitch72 = ( (( _UseBlend )?( ( saturate( lerpBlendMode13 )) ):( temp_output_357_0 )) * cavityAO280 );
					#else
					float4 staticSwitch72 = temp_output_357_0;
					#endif
					float4 baseColor266 = staticSwitch72;
					float2 uv_SSSThicknessPack = IN.ase_texcoord5.xy * _SSSThicknessPack_ST.xy + _SSSThicknessPack_ST.zw;
					float4 tex2DNode625 = SAMPLE_TEXTURE2D( _SSSThicknessPack, sampler_Linear_Repeat, uv_SSSThicknessPack );
					float lerpResult630 = lerp( _ThicknessScale , _ThicknessScaleMin , tex2DNode625.a);
					float temp_output_120_0_g110 = lerpResult630;
					float temp_output_144_0_g110 = ( 1.0 - temp_output_120_0_g110 );
					float2 uv_NormalMap = IN.ase_texcoord5.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					float normalMapScale359 = _NormalStrength;
					float3 normalMap360 = UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalMap, sampler_Linear_Repeat, uv_NormalMap ), normalMapScale359 );
					float3 normal186_g102 = normalMap360;
					float3 In183_g102 = normal186_g102;
					float2 uv_WrinkleNormalArray = IN.ase_texcoord5.xy;
					float3 In1183_g102 = ( ( UnpackScaleNormal( SAMPLE_TEXTURE2D_ARRAY( _WrinkleNormalArray, sampler_Linear_Repeat, float3(uv_WrinkleNormalArray,0.0) ), normalMapScale359 ) - normal186_g102 ) * temp_output_23_0_g105 );
					float3 In2183_g102 = ( ( UnpackScaleNormal( SAMPLE_TEXTURE2D_ARRAY( _WrinkleNormalArray, sampler_Linear_Repeat, float3(uv_WrinkleNormalArray,1.0) ), normalMapScale359 ) - normal186_g102 ) * temp_output_23_0_g106 );
					float3 In3183_g102 = ( ( UnpackScaleNormal( SAMPLE_TEXTURE2D_ARRAY( _WrinkleNormalArray, sampler_Linear_Repeat, float3(uv_WrinkleNormalArray,2.0) ), normalMapScale359 ) - normal186_g102 ) * temp_output_23_0_g107 );
					float3 localMinMaxDeltaBlend3183_g102 = MinMaxDeltaBlend3183_g102( In183_g102 , In1183_g102 , In2183_g102 , In3183_g102 );
					float3 normalWrinkle439 = localMinMaxDeltaBlend3183_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float3 staticSwitch467 = normalMap360;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float3 staticSwitch467 = normalWrinkle439;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float3 staticSwitch467 = normalWrinkle439;
					#else
					float3 staticSwitch467 = normalMap360;
					#endif
					float2 uv_NormalBlendMap = IN.ase_texcoord5.xy * _NormalBlendMap_ST.xy + _NormalBlendMap_ST.zw;
					#ifdef BOOLEAN_IS_HEAD_ON
					float3 staticSwitch71 = (( _UseBlend )?( BlendNormals( staticSwitch467 , UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalBlendMap, sampler_Linear_Repeat, uv_NormalBlendMap ), _NormalBlendStrength ) ) ):( staticSwitch467 ));
					#else
					float3 staticSwitch71 = staticSwitch467;
					#endif
					float2 temp_cast_12 = (_MicroNormalTiling).xx;
					float2 texCoord344 = IN.ase_texcoord5.xy * temp_cast_12 + float2( 0,0 );
					float2 uv_MaskMap = IN.ase_texcoord5.xy * _MaskMap_ST.xy + _MaskMap_ST.zw;
					float4 tex2DNode32 = SAMPLE_TEXTURE2D( _MaskMap, sampler_Linear_Repeat, uv_MaskMap );
					float microNormalMask287 = tex2DNode32.b;
					float3 temp_output_61_0 = BlendNormals( staticSwitch71 , UnpackScaleNormal( SAMPLE_TEXTURE2D( _MicroNormalMap, sampler_Linear_Repeat, texCoord344 ), ( _MicroNormalStrength * microNormalMask287 ) ) );
					float3 temp_output_111_0_g111 = ddx( PositionWS );
					float3 temp_output_113_0_g111 = cross( ddy( PositionWS ) , NormalWS );
					float dotResult115_g111 = dot( temp_output_111_0_g111 , temp_output_113_0_g111 );
					float2 uv_DisplacementMap = IN.ase_texcoord5.xy * _DisplacementMap_ST.xy + _DisplacementMap_ST.zw;
					float displacementMap590 = SAMPLE_TEXTURE2D( _DisplacementMap, sampler_Linear_Repeat, uv_DisplacementMap ).r;
					float displacement229_g102 = displacementMap590;
					float In245_g102 = displacement229_g102;
					float2 uv_WrinkleDisplacementPack = IN.ase_texcoord5.xy * _WrinkleDisplacementPack_ST.xy + _WrinkleDisplacementPack_ST.zw;
					float4 tex2DNode538 = SAMPLE_TEXTURE2D( _WrinkleDisplacementPack, sampler_Linear_Repeat, uv_WrinkleDisplacementPack );
					float displacementStrength234_g102 = _WrinkleDisplacementStrength;
					float In1245_g102 = ( ( tex2DNode538.r - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g105 );
					float In2245_g102 = ( ( tex2DNode538.g - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g106 );
					float In3245_g102 = ( ( tex2DNode538.b - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1245_g102 = MinMaxDeltaBlend1245_g102( In245_g102 , In1245_g102 , In2245_g102 , In3245_g102 );
					float displacementWrinkle594 = localMinMaxDeltaBlend1245_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch599 = displacementWrinkle594;
					#else
					float staticSwitch599 = displacementMap590;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch600 = staticSwitch599;
					#else
					float staticSwitch600 = displacementMap590;
					#endif
					float temp_output_602_0 = ( staticSwitch600 - _DisplacementLevel );
					float finalDisplacement609 = temp_output_602_0;
					float temp_output_20_0_g111 = finalDisplacement609;
					float3 normalizeResult130_g111 = normalize( ( ( abs( dotResult115_g111 ) * NormalWS ) - ( _BumpStrength * float3( 0.05,0.05,0.05 ) * sign( dotResult115_g111 ) * ( ( ddx( temp_output_20_0_g111 ) * temp_output_113_0_g111 ) + ( ddy( temp_output_20_0_g111 ) * cross( NormalWS , temp_output_111_0_g111 ) ) ) ) ) );
					float3x3 ase_worldToTangent = float3x3( TangentWS, BitangentWS, NormalWS );
					float3 worldToTangentDir42_g111 = mul( ase_worldToTangent, normalizeResult130_g111 );
					float3 temp_output_614_0 = BlendNormals( temp_output_61_0 , worldToTangentDir42_g111 );
					#if defined( ENUM_DISPLACEMENT_MODE_NONE )
					float3 staticSwitch611 = temp_output_61_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_BUMP )
					float3 staticSwitch611 = temp_output_614_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPLACEMENT )
					float3 staticSwitch611 = temp_output_61_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP )
					float3 staticSwitch611 = temp_output_614_0;
					#else
					float3 staticSwitch611 = temp_output_61_0;
					#endif
					float3 finalTangentNormal525 = staticSwitch611;
					float3 normal162_g110 = finalTangentNormal525;
					float3 tanToWorld0 = float3( TangentWS.x, BitangentWS.x, NormalWS.x );
					float3 tanToWorld1 = float3( TangentWS.y, BitangentWS.y, NormalWS.y );
					float3 tanToWorld2 = float3( TangentWS.z, BitangentWS.z, NormalWS.z );
					float3 tanNormal95_g110 = normal162_g110;
					float3 worldNormal95_g110 = normalize( float3( dot( tanToWorld0, tanNormal95_g110 ), dot( tanToWorld1, tanNormal95_g110 ), dot( tanToWorld2, tanNormal95_g110 ) ) );
					float3 worldSpaceLightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( PositionWS ) );
					float3 normalizeResult102_g110 = normalize( ( ( _SSSNormalDistortion * worldNormal95_g110 ) + worldSpaceLightDir ) );
					float dotResult106_g110 = dot( -normalizeResult102_g110 , ViewDirWS );
					float dotResult111_g110 = dot( worldNormal95_g110 , ViewDirWS );
					#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
					float4 ase_lightColor = 0;
					#else //aselc
					float4 ase_lightColor = _LightColor0;
					#endif //aselc
					float4 temp_output_124_0_g110 = _SubsurfaceFalloff;
					float2 uv_SubsurfaceBlurMap = IN.ase_texcoord5.xy * _SubsurfaceBlurMap_ST.xy + _SubsurfaceBlurMap_ST.zw;
					float4 temp_output_123_0_g110 = SAMPLE_TEXTURE2D( _SubsurfaceBlurMap, sampler_Linear_Repeat, uv_SubsurfaceBlurMap );
					float localSkinMask179 = ( 0.0 );
					float2 uv_RGBAMask = IN.ase_texcoord5.xy * _RGBAMask_ST.xy + _RGBAMask_ST.zw;
					float4 tex2DNode123 = SAMPLE_TEXTURE2D( _RGBAMask, sampler_Linear_Repeat, uv_RGBAMask );
					float4 In1179 = tex2DNode123;
					float4 appendResult150 = (float4(_RSmoothnessMod , _GSmoothnessMod , _BSmoothnessMod , _ASmoothnessMod));
					float4 Mod1179 = appendResult150;
					float4 appendResult153 = (float4(_RScatterScale , _GScatterScale , _BScatterScale , _AScatterScale));
					float4 Scatter1179 = appendResult153;
					float UMMS179 = _UnmaskedSmoothnessMod;
					float UMSS179 = _UnmaskedScatterScale;
					float SmoothnessMod179 = 0.0;
					float ScatterMask179 = 0.0;
					SkinMask179( In1179 , Mod1179 , Scatter1179 , UMMS179 , UMSS179 , SmoothnessMod179 , ScatterMask179 );
					float localHeadMask156 = ( 0.0 );
					float4 In1156 = tex2DNode123;
					float2 uv_CFULCMask = IN.ase_texcoord5.xy * _CFULCMask_ST.xy + _CFULCMask_ST.zw;
					float4 In2156 = SAMPLE_TEXTURE2D( _CFULCMask, sampler_Linear_Repeat, uv_CFULCMask );
					float2 uv_EarNeckMask = IN.ase_texcoord5.xy * _EarNeckMask_ST.xy + _EarNeckMask_ST.zw;
					float4 In3156 = SAMPLE_TEXTURE2D( _EarNeckMask, sampler_Linear_Repeat, uv_EarNeckMask );
					float4 Mod1156 = appendResult150;
					float4 appendResult151 = (float4(_CheekSmoothnessMod , _ForeheadSmoothnessMod , _UpperLipSmoothnessMod , _ChinSmoothnessMod));
					float4 Mod2156 = appendResult151;
					float4 appendResult152 = (float4(_NeckSmoothnessMod , _EarSmoothnessMod , 0.0 , 0.0));
					float4 Mod3156 = appendResult152;
					float4 Scatter1156 = appendResult153;
					float4 appendResult154 = (float4(_CheekScatterScale , _ForeheadScatterScale , _UpperLipScatterScale , _ChinScatterScale));
					float4 Scatter2156 = appendResult154;
					float4 appendResult155 = (float4(_NeckScatterScale , _EarScatterScale , 0.0 , 0.0));
					float4 Scatter3156 = appendResult155;
					float UMMS156 = _UnmaskedSmoothnessMod;
					float UMSS156 = _UnmaskedScatterScale;
					float SmoothnessMod156 = 0.0;
					float ScatterMask156 = 0.0;
					HeadMask156( In1156 , In2156 , In3156 , Mod1156 , Mod2156 , Mod3156 , Scatter1156 , Scatter2156 , Scatter3156 , UMMS156 , UMSS156 , SmoothnessMod156 , ScatterMask156 );
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch169 = ScatterMask156;
					#else
					float staticSwitch169 = ScatterMask179;
					#endif
					float microScatteringMultiplier277 = ( _SubsurfaceScale * staticSwitch169 );
					float temp_output_127_0_g110 = ( temp_output_120_0_g110 * ( tex2DNode625.r * microScatteringMultiplier277 ) * _SSSBlurStrength );
					float4 lerpResult142_g110 = lerp( baseColor266 , temp_output_123_0_g110 , ( temp_output_124_0_g110 * temp_output_127_0_g110 ));
					float4 sssDiffuse649 = ( ( ( ( temp_output_144_0_g110 * temp_output_144_0_g110 ) * ( _SSSTransmission * saturate( dotResult106_g110 ) * saturate( ( 1.0 - dotResult111_g110 ) ) ) ) * ( ( ase_lightColor * temp_output_124_0_g110 ) * temp_output_123_0_g110 ) ) + lerpResult142_g110 );
					#ifdef BOOLEAN_USE_SSS_ON
					float4 staticSwitch652 = sssDiffuse649;
					#else
					float4 staticSwitch652 = baseColor266;
					#endif
					
					float3 In138_g110 = normal162_g110;
					float Strength138_g110 = ( 1.0 - temp_output_127_0_g110 );
					float3 localMyCustomExpression138_g110 = MyCustomExpression138_g110( In138_g110 , Strength138_g110 );
					float3 sssNormal650 = localMyCustomExpression138_g110;
					#ifdef BOOLEAN_USE_SSS_ON
					float3 staticSwitch653 = sssNormal650;
					#else
					float3 staticSwitch653 = finalTangentNormal525;
					#endif
					
					float metallicMap285 = tex2DNode32.r;
					
					float smoothnessMap288 = tex2DNode32.a;
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch170 = SmoothnessMod156;
					#else
					float staticSwitch170 = SmoothnessMod179;
					#endif
					float microSmoothnessMod276 = ( staticSwitch170 + _MicroSmoothnessMod );
					float smoothnessAO685 = Smoothness683;
					float smoothness185_g102 = smoothnessMap288;
					float In182_g102 = smoothness185_g102;
					float2 uv_WrinkleRoughnessPack = IN.ase_texcoord5.xy * _WrinkleRoughnessPack_ST.xy + _WrinkleRoughnessPack_ST.zw;
					float4 break498 = ( 1.0 - SAMPLE_TEXTURE2D( _WrinkleRoughnessPack, sampler_Linear_Repeat, uv_WrinkleRoughnessPack ) );
					float In1182_g102 = ( ( break498.r - smoothness185_g102 ) * temp_output_23_0_g105 );
					float In2182_g102 = ( ( break498.g - smoothness185_g102 ) * temp_output_23_0_g106 );
					float In3182_g102 = ( ( break498.b - smoothness185_g102 ) * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1S182_g102 = MinMaxDeltaBlend1S182_g102( In182_g102 , In1182_g102 , In2182_g102 , In3182_g102 );
					float smoothnessWrinkle438 = localMinMaxDeltaBlend1S182_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch468 = smoothnessMap288;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch468 = smoothnessWrinkle438;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch468 = smoothnessWrinkle438;
					#else
					float staticSwitch468 = smoothnessMap288;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch223 = ( smoothnessAO685 * ( microSmoothnessMod276 + staticSwitch468 ) );
					#else
					float staticSwitch223 = ( smoothnessMap288 + microSmoothnessMod276 );
					#endif
					float lerpResult686 = lerp( 1.0 , staticSwitch223 , _SmoothnessContrast);
					float lerpResult41 = lerp( _SmoothnessMin , _SmoothnessMax , lerpResult686);
					float2 uv_CavityMap = IN.ase_texcoord5.xy * _CavityMap_ST.xy + _CavityMap_ST.zw;
					float3 N692 = NormalWS;
					float3 V692 = ViewDirWS;
					float localFasterFresnel692 = FasterFresnel692( N692 , V692 );
					float lerpResult512 = lerp( 1.0 , SAMPLE_TEXTURE2D( _CavityMap, sampler_Linear_Repeat, uv_CavityMap ).r , ( _CavityStrength * saturate( ( 1.0 - localFasterFresnel692 ) ) ));
					
					float ambientOcclusionMap286 = tex2DNode32.g;
					
					float2 uv_EmissionMap = IN.ase_texcoord5.xy * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
					

					o.Albedo = staticSwitch652.rgb;
					o.Normal = staticSwitch653;

					half3 Specular = half3( 0, 0, 0 );
					half Metallic = metallicMap285;
					half Smoothness = (( _UseCavity )?( ( lerpResult41 * lerpResult512 ) ):( lerpResult41 ));
					half Occlusion = ( 1.0 - ( ( 1.0 - ambientOcclusionMap286 ) * _AOStrength ) );

					#if defined(ASE_LIGHTING_SIMPLE)
						o.Specular = Specular.x;
						o.Gloss = Smoothness;
					#else
						#if defined(_SPECULAR_SETUP)
							o.Specular = Specular;
						#else
							o.Metallic = Metallic;
						#endif
						o.Occlusion = Occlusion;
						o.Smoothness = Smoothness;
					#endif

					o.Emission = ( _EmissiveColor * SAMPLE_TEXTURE2D( _EmissionMap, sampler_Linear_Repeat, uv_EmissionMap ) ).rgb;
					o.Alpha = 1;
					half AlphaClipThreshold = 0.5;
					half3 Transmission = 1;
					half3 Translucency = 1;

					#if defined( ASE_DEPTH_WRITE_ON )
						float DeviceDepth = IN.pos.z;
					#endif

					#ifdef _ALPHATEST_ON
						clip( o.Alpha - AlphaClipThreshold );
					#endif

					#if defined( ASE_CHANGES_WORLD_POS )
					{
						#if defined( ASE_RECEIVE_SHADOWS )
							UNITY_LIGHT_ATTENUATION( temp, IN, PositionWS )
							LightAtten = temp;
						#else
							LightAtten = 1;
						#endif
					}
					#endif

					#if ( ASE_FRAGMENT_NORMAL == 0 )
						o.Normal = normalize( o.Normal.x * TangentWS + o.Normal.y * BitangentWS + o.Normal.z * NormalWS );
					#elif ( ASE_FRAGMENT_NORMAL == 1 )
						o.Normal = UnityObjectToWorldNormal( o.Normal );
					#elif ( ASE_FRAGMENT_NORMAL == 2 )
						// @diogo: already in world-space; do nothing
					#endif

					#if defined( ASE_DEPTH_WRITE_ON )
						outputDepth = DeviceDepth;
					#endif

					#ifndef USING_DIRECTIONAL_LIGHT
						half3 lightDir = normalize( UnityWorldSpaceLightDir( PositionWS ) );
					#else
						half3 lightDir = _WorldSpaceLightPos0.xyz;
					#endif

					UnityGI gi;
					UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
					gi.indirect.diffuse = 0;
					gi.indirect.specular = 0;
					gi.light.color = _LightColor0.rgb;
					gi.light.dir = lightDir;
					gi.light.color *= atten;

					half4 c = 0;
					#if defined(ASE_LIGHTING_SIMPLE)
						#if defined(_SPECULAR_SETUP)
							c += LightingBlinnPhong (o, ViewDirWS, gi);
						#else
							c += LightingLambert( o, gi );
						#endif
					#else
						#if defined(_SPECULAR_SETUP)
							c += LightingStandardSpecular(o, ViewDirWS, gi);
						#else
							c += LightingStandard(o, ViewDirWS, gi);
						#endif
					#endif

					#ifdef ASE_TRANSMISSION
					{
						half shadow = _TransmissionShadow;
						#ifdef DIRECTIONAL
							half3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
						#else
							half3 lightAtten = gi.light.color;
						#endif
						half3 transmission = max(0 , -dot(o.Normal, gi.light.dir)) * lightAtten * Transmission;
						c.rgb += o.Albedo * transmission;
					}
					#endif

					#ifdef ASE_TRANSLUCENCY
					{
						half shadow = _TransShadow;
						half normal = _TransNormal;
						half scattering = _TransScattering;
						half direct = _TransDirect;
						half ambient = _TransAmbient;
						half strength = _TransStrength;

						#ifdef DIRECTIONAL
							half3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
						#else
							half3 lightAtten = gi.light.color;
						#endif
						half3 lightDir = gi.light.dir + o.Normal * normal;
						half transVdotL = pow( saturate( dot( ViewDirWS, -lightDir ) ), scattering );
						half3 translucency = lightAtten * (transVdotL * direct + gi.indirect.diffuse * ambient) * Translucency;
						c.rgb += o.Albedo * translucency * strength;
					}
					#endif

					#if defined( ASE_FOG )
						UNITY_EXTRACT_FOG_FROM_WORLD_POS( IN );
						UNITY_APPLY_FOG(_unity_fogCoord, c.rgb);
					#endif
					return c;
				}
			ENDCG
		}

		
		Pass
		{
			
			Name "Deferred"
			Tags { "LightMode"="Deferred" }

			AlphaToMask Off

			CGPROGRAM
				#define ASE_GEOMETRY
				#define ASE_FRAGMENT_NORMAL 0
				#define ASE_RECEIVE_SHADOWS
				#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
				#pragma shader_feature_local_fragment _GLOSSYREFLECTIONS_OFF
				#pragma multi_compile_instancing
				#pragma multi_compile _ LOD_FADE_CROSSFADE
				#define ASE_FOG
				#define ASE_VERSION 19908
				#define ASE_USING_SAMPLING_MACROS 1

				#pragma vertex vert
				#pragma fragment frag
				#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
				#pragma multi_compile_prepassfinal
				#ifndef UNITY_PASS_DEFERRED
					#define UNITY_PASS_DEFERRED
				#endif
				#include "HLSLSupport.cginc"
				#if defined( ASE_GEOMETRY ) || defined( ASE_IMPOSTOR )
					#ifndef UNITY_INSTANCED_LOD_FADE
						#define UNITY_INSTANCED_LOD_FADE
					#endif
					#ifndef UNITY_INSTANCED_SH
						#define UNITY_INSTANCED_SH
					#endif
					#ifndef UNITY_INSTANCED_LIGHTMAPSTS
						#define UNITY_INSTANCED_LIGHTMAPSTS
					#endif
				#endif
				#include "UnityShaderVariables.cginc"
				#include "UnityCG.cginc"
				#include "Lighting.cginc"
				#include "UnityPBSLighting.cginc"

				#if defined( UNITY_INSTANCING_ENABLED ) && defined( ASE_INSTANCED_TERRAIN ) && ( defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL) || defined(_INSTANCEDTERRAINNORMALS_PIXEL) )
					#define ENABLE_TERRAIN_PERPIXEL_NORMAL
				#endif

				#include "UnityStandardUtils.cginc"
				#include "AutoLight.cginc"
				#include "UnityStandardBRDF.cginc"
				#define ASE_NEEDS_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_NORMAL
				#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
				#define ASE_NEEDS_WORLD_POSITION
				#define ASE_NEEDS_FRAG_WORLD_POSITION
				#define ASE_NEEDS_WORLD_NORMAL
				#define ASE_NEEDS_FRAG_WORLD_NORMAL
				#define ASE_NEEDS_WORLD_TANGENT
				#define ASE_NEEDS_FRAG_WORLD_TANGENT
				#define ASE_NEEDS_FRAG_WORLD_BITANGENT
				#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
				#pragma shader_feature_local ENUM_DISPLACEMENT_MODE_NONE ENUM_DISPLACEMENT_MODE_BUMP ENUM_DISPLACEMENT_MODE_DISPLACEMENT ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP
				#pragma shader_feature_local BOOLEAN_IS_HEAD_ON
				#pragma shader_feature_local ENUM_WRINKLE_MODE_NONE ENUM_WRINKLE_MODE_WRINKLE ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT
				#pragma shader_feature_local BOOLEAN_USE_SSS_ON
				#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#else//ASE Sampling Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY(tex,samplertex,coord) tex2DArray(tex,coord)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
				#endif//ASE Sampling Macros
				


				struct appdata
				{
					float4 vertex : POSITION;
					half3 normal : NORMAL;
					half4 tangent : TANGENT;
					float4 texcoord : TEXCOORD0;
					float4 texcoord1 : TEXCOORD1;
					float4 texcoord2 : TEXCOORD2;
					
					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct v2f
				{
					float4 pos : SV_POSITION;
					float4 worldPos : TEXCOORD0; // xyz = positionWS, w = fogCoord
					half3 normalWS : TEXCOORD1;
					float4 tangentWS : TEXCOORD2; // holds terrainUV ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					half4 ambientOrLightmapUV : TEXCOORD3;
					float4 ase_texcoord4 : TEXCOORD4;
					UNITY_VERTEX_INPUT_INSTANCE_ID
					UNITY_VERTEX_OUTPUT_STEREO
				};

				#ifdef LIGHTMAP_ON
				float4 unity_LightmapFade;
				#endif
				half4 unity_Ambient;
				#ifdef ASE_TESSELLATION
					float _TessPhongStrength;
					float _TessValue;
					float _TessMin;
					float _TessMax;
					float _TessEdgeLength;
					float _TessMaxDisp;
				#endif

				UNITY_DECLARE_TEX2D_NOSAMPLER(_DisplacementMap);
				uniform float4 _DisplacementMap_ST;
				SamplerState sampler_Linear_Repeat;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleDisplacementPack);
				uniform float4 _WrinkleDisplacementPack_ST;
				uniform float _WrinkleDisplacementStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleFlowPack);
				uniform float4 _WrinkleFlowPack_ST;
				uniform float4 _WrinkleValueSet12CL;
				uniform float4 _WrinkleMaskSetArray_ST;
				uniform float4 _WrinkleValueSet1AL;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleMaskSetArray);
				uniform float4 _WrinkleValueSet1BL;
				uniform float4 _WrinkleValueSet1AR;
				uniform float4 _WrinkleValueSet1BR;
				uniform float4 _WrinkleValueSet12CR;
				uniform float4 _WrinkleValueSet2L;
				uniform float4 _WrinkleValueSet2R;
				uniform float4 _WrinkleValueSetBCCB;
				uniform float4 _WrinkleValueSet3DB;
				uniform float4 _WrinkleValueSet3L;
				uniform float4 _WrinkleValueSet3R;
				uniform float _DisplacementLevel;
				uniform float _DisplacementStrength;
				uniform float4 _DiffuseColor;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_DiffuseMap);
				uniform float4 _DiffuseMap_ST;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleDiffuseArray);
				uniform float4 _WrinkleDiffuseArray_ST;
				uniform float _UseBlend;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorBlendMap);
				uniform float4 _ColorBlendMap_ST;
				uniform float _ColorBlendStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_MNAOMap);
				uniform float4 _MNAOMap_ST;
				uniform float _MouthCavityAO;
				uniform float _NostrilCavityAO;
				uniform float _LipsCavityAO;
				uniform float _ThicknessScale;
				uniform float _ThicknessScaleMin;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_SSSThicknessPack);
				uniform float4 _SSSThicknessPack_ST;
				uniform float _SSSTransmission;
				uniform float _SSSNormalDistortion;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalMap);
				uniform float4 _NormalMap_ST;
				uniform float _NormalStrength;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleNormalArray);
				uniform float4 _WrinkleNormalArray_ST;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalBlendMap);
				uniform float4 _NormalBlendMap_ST;
				uniform float _NormalBlendStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_MicroNormalMap);
				uniform float _MicroNormalTiling;
				uniform float _MicroNormalStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskMap);
				uniform float4 _MaskMap_ST;
				uniform float _BumpStrength;
				uniform float4 _SubsurfaceFalloff;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_SubsurfaceBlurMap);
				uniform float4 _SubsurfaceBlurMap_ST;
				uniform float _SubsurfaceScale;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_RGBAMask);
				uniform float4 _RGBAMask_ST;
				uniform float _RSmoothnessMod;
				uniform float _GSmoothnessMod;
				uniform float _BSmoothnessMod;
				uniform float _ASmoothnessMod;
				uniform float _RScatterScale;
				uniform float _GScatterScale;
				uniform float _BScatterScale;
				uniform float _AScatterScale;
				uniform float _UnmaskedSmoothnessMod;
				uniform float _UnmaskedScatterScale;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_CFULCMask);
				uniform float4 _CFULCMask_ST;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_EarNeckMask);
				uniform float4 _EarNeckMask_ST;
				uniform float _CheekSmoothnessMod;
				uniform float _ForeheadSmoothnessMod;
				uniform float _UpperLipSmoothnessMod;
				uniform float _ChinSmoothnessMod;
				uniform float _NeckSmoothnessMod;
				uniform float _EarSmoothnessMod;
				uniform float _CheekScatterScale;
				uniform float _ForeheadScatterScale;
				uniform float _UpperLipScatterScale;
				uniform float _ChinScatterScale;
				uniform float _NeckScatterScale;
				uniform float _EarScatterScale;
				uniform float _SSSBlurStrength;
				uniform float _UseCavity;
				uniform float _SmoothnessMin;
				uniform float _SmoothnessMax;
				uniform float _MicroSmoothnessMod;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleRoughnessPack);
				uniform float4 _WrinkleRoughnessPack_ST;
				uniform float _SmoothnessContrast;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_CavityMap);
				uniform float4 _CavityMap_ST;
				uniform float _CavityStrength;
				uniform float _AOStrength;
				uniform float4 _EmissiveColor;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionMap);
				uniform float4 _EmissionMap_ST;


				//This is a late directive
				
				float MinMaxDeltaBlend1245_g102( float In, float In1, float In2, float In3 )
				{
					return max(max(In1, In2), In3) + min(min(In1, In2), In3) + In;
				}
				
				float4 MinMaxDeltaBlend4S181_g102( float4 In, float4 In1, float4 In2, float4 In3 )
				{
					return saturate(max(max(In1, In2), In3) + min(min(In1, In2), In3) + In);
				}
				
				float MyCustomExpression683( float4 In, float4 Contrast, out float Smoothness )
				{
					float4 mask = lerp(1, In, Contrast);
					float AO = saturate(mask.y*mask.z*mask.w);
					Smoothness = AO * mask.r;
					return AO;
				}
				
				float3 MinMaxDeltaBlend3183_g102( float3 In, float3 In1, float3 In2, float3 In3 )
				{
					return max(max(In1, In2), In3) + min(min(In1, In2), In3) + In;
				}
				
				void SkinMask179( float4 In1, float4 Mod1, float4 Scatter1, float UMMS, float UMSS, out float SmoothnessMod, out float ScatterMask )
				{
					float mask = saturate(In1.r + In1.g + In1.b + In1.a);
					float unmask = 1.0 - mask;
					SmoothnessMod = dot(In1, Mod1) + (UMMS * unmask);
					ScatterMask = dot(In1, Scatter1) + (UMSS * unmask);
					return;
				}
				
				void HeadMask156( float4 In1, float4 In2, float4 In3, float4 Mod1, float4 Mod2, float4 Mod3, float4 Scatter1, float4 Scatter2, float4 Scatter3, float UMMS, float UMSS, out float SmoothnessMod, out float ScatterMask )
				{
					In3.zw = 0;
					float4 m = In1 + In2 + In3;
					float mask = saturate(m.x + m.y + m.z + m.w);
					float unmask = 1.0 - mask;
					SmoothnessMod = dot(In1, Mod1) + dot(In2, Mod2) + dot(In3, Mod3) + (UMMS * unmask);
					ScatterMask = dot(In1, Scatter1) + dot(In2, Scatter2) + dot(In3, Scatter3) + (UMSS * unmask);
					return;
				}
				
				float3 MyCustomExpression138_g110( float3 In, float Strength )
				{
					return float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
				}
				
				float MinMaxDeltaBlend1S182_g102( float In, float In1, float In2, float In3 )
				{
					return saturate(max(max(In1, In2), In3) + min(min(In1, In2), In3) + In);
				}
				
				float FasterFresnel692( float3 N, float3 V )
				{
					float NdotV = saturate(dot( N, V));
					float om = 1 - NdotV;
					float oms = om * om;
					return oms * oms;
				}
				

				v2f VertexFunction (appdata v  ) {
					UNITY_SETUP_INSTANCE_ID(v);
					v2f o;
					UNITY_INITIALIZE_OUTPUT(v2f,o);
					UNITY_TRANSFER_INSTANCE_ID(v,o);
					UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

					float3 _Vector0 = float3(0,0,0);
					float2 uv_DisplacementMap = v.texcoord.xyzw.xy * _DisplacementMap_ST.xy + _DisplacementMap_ST.zw;
					float displacementMap590 = SAMPLE_TEXTURE2D_LOD( _DisplacementMap, sampler_Linear_Repeat, uv_DisplacementMap, 0.0 ).r;
					float displacement229_g102 = displacementMap590;
					float In245_g102 = displacement229_g102;
					float2 uv_WrinkleDisplacementPack = v.texcoord.xyzw.xy * _WrinkleDisplacementPack_ST.xy + _WrinkleDisplacementPack_ST.zw;
					float4 tex2DNode538 = SAMPLE_TEXTURE2D_LOD( _WrinkleDisplacementPack, sampler_Linear_Repeat, uv_WrinkleDisplacementPack, 0.0 );
					float displacementStrength234_g102 = _WrinkleDisplacementStrength;
					float2 uv_WrinkleFlowPack = v.texcoord.xyzw.xy * _WrinkleFlowPack_ST.xy + _WrinkleFlowPack_ST.zw;
					float4 tex2DNode475 = SAMPLE_TEXTURE2D_LOD( _WrinkleFlowPack, sampler_Linear_Repeat, uv_WrinkleFlowPack, 0.0 );
					float2 texCoord10_g102 = v.texcoord.xyzw.xy * float2( 1,1 ) + float2( 0,0 );
					float temp_output_1_0_g104 = 0.49;
					float leftMask27_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g104 ) / ( 0.51 - temp_output_1_0_g104 ) ) );
					float4 break107_g102 = _WrinkleValueSet12CL;
					float2 appendResult112_g102 = (float2(break107_g102.x , break107_g102.y));
					float2 uv_WrinkleMaskSetArray = v.texcoord.xyzw.xy;
					float4 break109_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,4.0), 0.0 );
					float2 appendResult115_g102 = (float2(break109_g102.x , break109_g102.y));
					float dotResult121_g102 = dot( appendResult112_g102 , appendResult115_g102 );
					float value1CLeft135_g102 = dotResult121_g102;
					float4 maskSet1A214_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,0.0), 0.0 );
					float dotResult29_g102 = dot( _WrinkleValueSet1AL , maskSet1A214_g102 );
					float4 temp_output_16_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,1.0), 0.0 );
					float dotResult35_g102 = dot( _WrinkleValueSet1BL , temp_output_16_0_g102 );
					float dotResult30_g102 = dot( maskSet1A214_g102 , _WrinkleValueSet1AR );
					float dotResult36_g102 = dot( temp_output_16_0_g102 , _WrinkleValueSet1BR );
					float4 break108_g102 = _WrinkleValueSet12CR;
					float2 appendResult117_g102 = (float2(break108_g102.x , break108_g102.y));
					float dotResult122_g102 = dot( appendResult115_g102 , appendResult117_g102 );
					float value1CRight136_g102 = dotResult122_g102;
					float temp_output_1_0_g103 = 0.51;
					float rightMask28_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g103 ) / ( 0.49 - temp_output_1_0_g103 ) ) );
					float temp_output_16_0_g105 = ( ( leftMask27_g102 * ( value1CLeft135_g102 + dotResult29_g102 + dotResult35_g102 ) ) + ( ( dotResult30_g102 + dotResult36_g102 + value1CRight136_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g105 = ( saturate( ( tex2DNode475.r + temp_output_16_0_g105 ) ) * temp_output_16_0_g105 );
					float In1245_g102 = ( ( tex2DNode538.r - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g105 );
					float2 appendResult113_g102 = (float2(break107_g102.z , break107_g102.w));
					float2 appendResult114_g102 = (float2(break109_g102.z , break109_g102.w));
					float dotResult123_g102 = dot( appendResult113_g102 , appendResult114_g102 );
					float value2CLeft137_g102 = dotResult123_g102;
					float4 temp_output_17_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,2.0), 0.0 );
					float dotResult41_g102 = dot( _WrinkleValueSet2L , temp_output_17_0_g102 );
					float dotResult42_g102 = dot( temp_output_17_0_g102 , _WrinkleValueSet2R );
					float2 appendResult116_g102 = (float2(break108_g102.z , break108_g102.w));
					float dotResult124_g102 = dot( appendResult114_g102 , appendResult116_g102 );
					float value2CRight138_g102 = dotResult124_g102;
					float temp_output_16_0_g106 = ( ( leftMask27_g102 * ( value2CLeft137_g102 + dotResult41_g102 ) ) + ( ( dotResult42_g102 + value2CRight138_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g106 = ( saturate( ( tex2DNode475.g + temp_output_16_0_g106 ) ) * temp_output_16_0_g106 );
					float In2245_g102 = ( ( tex2DNode538.g - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g106 );
					float4 break211_g102 = _WrinkleValueSetBCCB;
					float valueBCCLeft217_g102 = ( break211_g102.x * maskSet1A214_g102.y );
					float4 break118_g102 = _WrinkleValueSet3DB;
					float2 appendResult120_g102 = (float2(break118_g102.x , break118_g102.y));
					float dotResult127_g102 = dot( appendResult120_g102 , appendResult115_g102 );
					float value3DLeft129_g102 = dotResult127_g102;
					float4 temp_output_18_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,3.0), 0.0 );
					float dotResult47_g102 = dot( _WrinkleValueSet3L , temp_output_18_0_g102 );
					float dotResult48_g102 = dot( temp_output_18_0_g102 , _WrinkleValueSet3R );
					float2 appendResult119_g102 = (float2(break118_g102.z , break118_g102.w));
					float dotResult128_g102 = dot( appendResult115_g102 , appendResult119_g102 );
					float value3DRight130_g102 = dotResult128_g102;
					float valueBCCRight219_g102 = ( maskSet1A214_g102.y * break211_g102.y );
					float temp_output_16_0_g107 = ( ( leftMask27_g102 * ( valueBCCLeft217_g102 + value3DLeft129_g102 + dotResult47_g102 ) ) + ( ( dotResult48_g102 + value3DRight130_g102 + valueBCCRight219_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g107 = ( saturate( ( tex2DNode475.b + temp_output_16_0_g107 ) ) * temp_output_16_0_g107 );
					float In3245_g102 = ( ( tex2DNode538.b - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1245_g102 = MinMaxDeltaBlend1245_g102( In245_g102 , In1245_g102 , In2245_g102 , In3245_g102 );
					float displacementWrinkle594 = localMinMaxDeltaBlend1245_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch599 = displacementWrinkle594;
					#else
					float staticSwitch599 = displacementMap590;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch600 = staticSwitch599;
					#else
					float staticSwitch600 = displacementMap590;
					#endif
					float temp_output_602_0 = ( staticSwitch600 - _DisplacementLevel );
					float3 temp_output_608_0 = ( ( temp_output_602_0 * _DisplacementStrength ) * v.normal );
					#if defined( ENUM_DISPLACEMENT_MODE_NONE )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_BUMP )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPLACEMENT )
					float3 staticSwitch595 = temp_output_608_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP )
					float3 staticSwitch595 = temp_output_608_0;
					#else
					float3 staticSwitch595 = _Vector0;
					#endif
					
					o.ase_texcoord4.xy = v.texcoord.xyzw.xy;
					
					//setting value to unused interpolator channels and avoid initialization warnings
					o.ase_texcoord4.zw = 0;

					#ifdef ASE_ABSOLUTE_VERTEX_POS
						float3 defaultVertexValue = v.vertex.xyz;
					#else
						float3 defaultVertexValue = float3(0, 0, 0);
					#endif
					float3 vertexValue = staticSwitch595;
					#ifdef ASE_ABSOLUTE_VERTEX_POS
						v.vertex.xyz = vertexValue;
					#else
						v.vertex.xyz += vertexValue;
					#endif
					v.vertex.w = 1;
					v.normal = v.normal;
					v.tangent = v.tangent;

					float3 positionWS = mul( unity_ObjectToWorld, v.vertex ).xyz;
					half3 normalWS = UnityObjectToWorldNormal( v.normal );
					half3 tangentWS = UnityObjectToWorldDir( v.tangent.xyz );

					o.pos = UnityObjectToClipPos( v.vertex );
					o.worldPos.xyz = positionWS;
					o.normalWS = normalWS;
					o.tangentWS = half4( tangentWS, v.tangent.w );

					o.ambientOrLightmapUV = 0;
					#ifdef LIGHTMAP_ON
						o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					#elif UNITY_SHOULD_SAMPLE_SH
						#ifdef VERTEXLIGHT_ON
							o.ambientOrLightmapUV.rgb += Shade4PointLights(
								unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
								unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
								unity_4LightAtten0, positionWS, normalWS );
						#endif
						o.ambientOrLightmapUV.rgb = ShadeSHPerVertex( normalWS, o.ambientOrLightmapUV.rgb );
					#endif
					#ifdef DYNAMICLIGHTMAP_ON
						o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
					#endif

					#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
						o.tangentWS.zw = v.texcoord.xy;
						o.tangentWS.xy = v.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					#endif
					return o;
				}

				#if defined(ASE_TESSELLATION)
				struct VertexControl
				{
					float4 vertex : INTERNALTESSPOS;
					half4 tangent : TANGENT;
					half3 normal : NORMAL;
					float4 texcoord : TEXCOORD0;
					float4 texcoord1 : TEXCOORD1;
					float4 texcoord2 : TEXCOORD2;
					
					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct TessellationFactors
				{
					float edge[3] : SV_TessFactor;
					float inside : SV_InsideTessFactor;
				};

				VertexControl vert ( appdata v )
				{
					VertexControl o;
					UNITY_SETUP_INSTANCE_ID(v);
					UNITY_TRANSFER_INSTANCE_ID(v, o);
					o.vertex = v.vertex;
					o.tangent = v.tangent;
					o.normal = v.normal;
					o.texcoord = v.texcoord;
					o.texcoord1 = v.texcoord1;
					o.texcoord2 = v.texcoord2;
					
					return o;
				}

				TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
				{
					TessellationFactors o;
					float4 tf = 1;
					float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
					float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
					#if defined(ASE_FIXED_TESSELLATION)
					tf = FixedTess( tessValue );
					#elif defined(ASE_DISTANCE_TESSELLATION)
					tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
					#elif defined(ASE_LENGTH_TESSELLATION)
					tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
					#elif defined(ASE_LENGTH_CULL_TESSELLATION)
					tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
					#endif
					o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
					return o;
				}

				[domain("tri")]
				[partitioning("fractional_odd")]
				[outputtopology("triangle_cw")]
				[patchconstantfunc("TessellationFunction")]
				[outputcontrolpoints(3)]
				VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
				{
				   return patch[id];
				}

				[domain("tri")]
				v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
				{
					appdata o = (appdata) 0;
					o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
					o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
					o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
					o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
					o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
					o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
					
					#if defined(ASE_PHONG_TESSELLATION)
					float3 pp[3];
					for (int i = 0; i < 3; ++i)
						pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
					float phongStrength = _TessPhongStrength;
					o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
					#endif
					UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
					return VertexFunction(o);
				}
				#else
				v2f vert ( appdata v )
				{
					return VertexFunction( v );
				}
				#endif

				void frag (v2f IN 
					, out half4 outGBuffer0 : SV_Target0
					, out half4 outGBuffer1 : SV_Target1
					, out half4 outGBuffer2 : SV_Target2
					, out half4 outEmission : SV_Target3
					#if defined(SHADOWS_SHADOWMASK) && (UNITY_ALLOWED_MRT_COUNT > 4)
					, out half4 outShadowMask : SV_Target4
					#endif
					#if defined( ASE_DEPTH_WRITE_ON )
					, out float outputDepth : SV_Depth
					#endif
				)
				{
					UNITY_SETUP_INSTANCE_ID(IN);

					#ifdef LOD_FADE_CROSSFADE
						UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
					#endif

					#if defined(ASE_LIGHTING_SIMPLE)
						SurfaceOutput o = (SurfaceOutput)0;
					#else
						#if defined(_SPECULAR_SETUP)
							SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
						#else
							SurfaceOutputStandard o = (SurfaceOutputStandard)0;
						#endif
					#endif

					float3 PositionWS = IN.worldPos.xyz;
					half3 ViewDirWS = normalize( UnityWorldSpaceViewDir( PositionWS ) );
					float4 ScreenPosNorm = float4( IN.pos.xy * ( _ScreenParams.zw - 1.0 ), IN.pos.zw );
					float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, IN.pos.z ) * IN.pos.w;
					float4 ScreenPos = ComputeScreenPos( ClipPos );
					half3 NormalWS = IN.normalWS;
					half3 TangentWS = IN.tangentWS.xyz;
					half3 BitangentWS = cross( IN.normalWS, IN.tangentWS.xyz ) * IN.tangentWS.w * unity_WorldTransformParams.w;

					#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
						float2 sampleCoords = (IN.tangentWS.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
						NormalWS = UnityObjectToWorldNormal(normalize(tex2D(_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
						TangentWS = -cross(unity_ObjectToWorld._13_23_33, NormalWS);
						BitangentWS = cross(NormalWS, -TangentWS);
					#endif

					float2 uv_DiffuseMap = IN.ase_texcoord4.xy * _DiffuseMap_ST.xy + _DiffuseMap_ST.zw;
					float4 diffuseMap358 = SAMPLE_TEXTURE2D( _DiffuseMap, sampler_Linear_Repeat, uv_DiffuseMap );
					float4 diffuse184_g102 = diffuseMap358;
					float4 In181_g102 = diffuse184_g102;
					float2 uv_WrinkleDiffuseArray = IN.ase_texcoord4.xy;
					float2 uv_WrinkleFlowPack = IN.ase_texcoord4.xy * _WrinkleFlowPack_ST.xy + _WrinkleFlowPack_ST.zw;
					float4 tex2DNode475 = SAMPLE_TEXTURE2D( _WrinkleFlowPack, sampler_Linear_Repeat, uv_WrinkleFlowPack );
					float2 texCoord10_g102 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
					float temp_output_1_0_g104 = 0.49;
					float leftMask27_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g104 ) / ( 0.51 - temp_output_1_0_g104 ) ) );
					float4 break107_g102 = _WrinkleValueSet12CL;
					float2 appendResult112_g102 = (float2(break107_g102.x , break107_g102.y));
					float2 uv_WrinkleMaskSetArray = IN.ase_texcoord4.xy;
					float4 break109_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,4.0) );
					float2 appendResult115_g102 = (float2(break109_g102.x , break109_g102.y));
					float dotResult121_g102 = dot( appendResult112_g102 , appendResult115_g102 );
					float value1CLeft135_g102 = dotResult121_g102;
					float4 maskSet1A214_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,0.0) );
					float dotResult29_g102 = dot( _WrinkleValueSet1AL , maskSet1A214_g102 );
					float4 temp_output_16_0_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,1.0) );
					float dotResult35_g102 = dot( _WrinkleValueSet1BL , temp_output_16_0_g102 );
					float dotResult30_g102 = dot( maskSet1A214_g102 , _WrinkleValueSet1AR );
					float dotResult36_g102 = dot( temp_output_16_0_g102 , _WrinkleValueSet1BR );
					float4 break108_g102 = _WrinkleValueSet12CR;
					float2 appendResult117_g102 = (float2(break108_g102.x , break108_g102.y));
					float dotResult122_g102 = dot( appendResult115_g102 , appendResult117_g102 );
					float value1CRight136_g102 = dotResult122_g102;
					float temp_output_1_0_g103 = 0.51;
					float rightMask28_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g103 ) / ( 0.49 - temp_output_1_0_g103 ) ) );
					float temp_output_16_0_g105 = ( ( leftMask27_g102 * ( value1CLeft135_g102 + dotResult29_g102 + dotResult35_g102 ) ) + ( ( dotResult30_g102 + dotResult36_g102 + value1CRight136_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g105 = ( saturate( ( tex2DNode475.r + temp_output_16_0_g105 ) ) * temp_output_16_0_g105 );
					float4 In1181_g102 = ( ( SAMPLE_TEXTURE2D_ARRAY( _WrinkleDiffuseArray, sampler_Linear_Repeat, float3(uv_WrinkleDiffuseArray,0.0) ) - diffuse184_g102 ) * temp_output_23_0_g105 );
					float2 appendResult113_g102 = (float2(break107_g102.z , break107_g102.w));
					float2 appendResult114_g102 = (float2(break109_g102.z , break109_g102.w));
					float dotResult123_g102 = dot( appendResult113_g102 , appendResult114_g102 );
					float value2CLeft137_g102 = dotResult123_g102;
					float4 temp_output_17_0_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,2.0) );
					float dotResult41_g102 = dot( _WrinkleValueSet2L , temp_output_17_0_g102 );
					float dotResult42_g102 = dot( temp_output_17_0_g102 , _WrinkleValueSet2R );
					float2 appendResult116_g102 = (float2(break108_g102.z , break108_g102.w));
					float dotResult124_g102 = dot( appendResult114_g102 , appendResult116_g102 );
					float value2CRight138_g102 = dotResult124_g102;
					float temp_output_16_0_g106 = ( ( leftMask27_g102 * ( value2CLeft137_g102 + dotResult41_g102 ) ) + ( ( dotResult42_g102 + value2CRight138_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g106 = ( saturate( ( tex2DNode475.g + temp_output_16_0_g106 ) ) * temp_output_16_0_g106 );
					float4 In2181_g102 = ( ( SAMPLE_TEXTURE2D_ARRAY( _WrinkleDiffuseArray, sampler_Linear_Repeat, float3(uv_WrinkleDiffuseArray,1.0) ) - diffuse184_g102 ) * temp_output_23_0_g106 );
					float4 break211_g102 = _WrinkleValueSetBCCB;
					float valueBCCLeft217_g102 = ( break211_g102.x * maskSet1A214_g102.y );
					float4 break118_g102 = _WrinkleValueSet3DB;
					float2 appendResult120_g102 = (float2(break118_g102.x , break118_g102.y));
					float dotResult127_g102 = dot( appendResult120_g102 , appendResult115_g102 );
					float value3DLeft129_g102 = dotResult127_g102;
					float4 temp_output_18_0_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,3.0) );
					float dotResult47_g102 = dot( _WrinkleValueSet3L , temp_output_18_0_g102 );
					float dotResult48_g102 = dot( temp_output_18_0_g102 , _WrinkleValueSet3R );
					float2 appendResult119_g102 = (float2(break118_g102.z , break118_g102.w));
					float dotResult128_g102 = dot( appendResult115_g102 , appendResult119_g102 );
					float value3DRight130_g102 = dotResult128_g102;
					float valueBCCRight219_g102 = ( maskSet1A214_g102.y * break211_g102.y );
					float temp_output_16_0_g107 = ( ( leftMask27_g102 * ( valueBCCLeft217_g102 + value3DLeft129_g102 + dotResult47_g102 ) ) + ( ( dotResult48_g102 + value3DRight130_g102 + valueBCCRight219_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g107 = ( saturate( ( tex2DNode475.b + temp_output_16_0_g107 ) ) * temp_output_16_0_g107 );
					float4 In3181_g102 = ( ( SAMPLE_TEXTURE2D_ARRAY( _WrinkleDiffuseArray, sampler_Linear_Repeat, float3(uv_WrinkleDiffuseArray,2.0) ) - diffuse184_g102 ) * temp_output_23_0_g107 );
					float4 localMinMaxDeltaBlend4S181_g102 = MinMaxDeltaBlend4S181_g102( In181_g102 , In1181_g102 , In2181_g102 , In3181_g102 );
					float4 diffuseWrinkle437 = localMinMaxDeltaBlend4S181_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float4 staticSwitch464 = diffuseMap358;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float4 staticSwitch464 = diffuseWrinkle437;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float4 staticSwitch464 = diffuseWrinkle437;
					#else
					float4 staticSwitch464 = diffuseMap358;
					#endif
					float4 temp_output_357_0 = ( _DiffuseColor * staticSwitch464 );
					float2 uv_ColorBlendMap = IN.ase_texcoord4.xy * _ColorBlendMap_ST.xy + _ColorBlendMap_ST.zw;
					float4 blendOpSrc13 = SAMPLE_TEXTURE2D( _ColorBlendMap, sampler_Linear_Repeat, uv_ColorBlendMap );
					float4 blendOpDest13 = temp_output_357_0;
					float4 lerpBlendMode13 = lerp(blendOpDest13,(( blendOpDest13 > 0.5 ) ? ( 1.0 - 2.0 * ( 1.0 - blendOpDest13 ) * ( 1.0 - blendOpSrc13 ) ) : ( 2.0 * blendOpDest13 * blendOpSrc13 ) ),_ColorBlendStrength);
					float2 uv_MNAOMap = IN.ase_texcoord4.xy * _MNAOMap_ST.xy + _MNAOMap_ST.zw;
					float4 In683 = SAMPLE_TEXTURE2D( _MNAOMap, sampler_Linear_Repeat, uv_MNAOMap );
					float4 appendResult684 = (float4(1.0 , _MouthCavityAO , _NostrilCavityAO , _LipsCavityAO));
					float4 Contrast683 = appendResult684;
					float Smoothness683 = 0.0;
					float localMyCustomExpression683 = MyCustomExpression683( In683 , Contrast683 , Smoothness683 );
					float cavityAO280 = localMyCustomExpression683;
					#ifdef BOOLEAN_IS_HEAD_ON
					float4 staticSwitch72 = ( (( _UseBlend )?( ( saturate( lerpBlendMode13 )) ):( temp_output_357_0 )) * cavityAO280 );
					#else
					float4 staticSwitch72 = temp_output_357_0;
					#endif
					float4 baseColor266 = staticSwitch72;
					float2 uv_SSSThicknessPack = IN.ase_texcoord4.xy * _SSSThicknessPack_ST.xy + _SSSThicknessPack_ST.zw;
					float4 tex2DNode625 = SAMPLE_TEXTURE2D( _SSSThicknessPack, sampler_Linear_Repeat, uv_SSSThicknessPack );
					float lerpResult630 = lerp( _ThicknessScale , _ThicknessScaleMin , tex2DNode625.a);
					float temp_output_120_0_g110 = lerpResult630;
					float temp_output_144_0_g110 = ( 1.0 - temp_output_120_0_g110 );
					float2 uv_NormalMap = IN.ase_texcoord4.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					float normalMapScale359 = _NormalStrength;
					float3 normalMap360 = UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalMap, sampler_Linear_Repeat, uv_NormalMap ), normalMapScale359 );
					float3 normal186_g102 = normalMap360;
					float3 In183_g102 = normal186_g102;
					float2 uv_WrinkleNormalArray = IN.ase_texcoord4.xy;
					float3 In1183_g102 = ( ( UnpackScaleNormal( SAMPLE_TEXTURE2D_ARRAY( _WrinkleNormalArray, sampler_Linear_Repeat, float3(uv_WrinkleNormalArray,0.0) ), normalMapScale359 ) - normal186_g102 ) * temp_output_23_0_g105 );
					float3 In2183_g102 = ( ( UnpackScaleNormal( SAMPLE_TEXTURE2D_ARRAY( _WrinkleNormalArray, sampler_Linear_Repeat, float3(uv_WrinkleNormalArray,1.0) ), normalMapScale359 ) - normal186_g102 ) * temp_output_23_0_g106 );
					float3 In3183_g102 = ( ( UnpackScaleNormal( SAMPLE_TEXTURE2D_ARRAY( _WrinkleNormalArray, sampler_Linear_Repeat, float3(uv_WrinkleNormalArray,2.0) ), normalMapScale359 ) - normal186_g102 ) * temp_output_23_0_g107 );
					float3 localMinMaxDeltaBlend3183_g102 = MinMaxDeltaBlend3183_g102( In183_g102 , In1183_g102 , In2183_g102 , In3183_g102 );
					float3 normalWrinkle439 = localMinMaxDeltaBlend3183_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float3 staticSwitch467 = normalMap360;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float3 staticSwitch467 = normalWrinkle439;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float3 staticSwitch467 = normalWrinkle439;
					#else
					float3 staticSwitch467 = normalMap360;
					#endif
					float2 uv_NormalBlendMap = IN.ase_texcoord4.xy * _NormalBlendMap_ST.xy + _NormalBlendMap_ST.zw;
					#ifdef BOOLEAN_IS_HEAD_ON
					float3 staticSwitch71 = (( _UseBlend )?( BlendNormals( staticSwitch467 , UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalBlendMap, sampler_Linear_Repeat, uv_NormalBlendMap ), _NormalBlendStrength ) ) ):( staticSwitch467 ));
					#else
					float3 staticSwitch71 = staticSwitch467;
					#endif
					float2 temp_cast_12 = (_MicroNormalTiling).xx;
					float2 texCoord344 = IN.ase_texcoord4.xy * temp_cast_12 + float2( 0,0 );
					float2 uv_MaskMap = IN.ase_texcoord4.xy * _MaskMap_ST.xy + _MaskMap_ST.zw;
					float4 tex2DNode32 = SAMPLE_TEXTURE2D( _MaskMap, sampler_Linear_Repeat, uv_MaskMap );
					float microNormalMask287 = tex2DNode32.b;
					float3 temp_output_61_0 = BlendNormals( staticSwitch71 , UnpackScaleNormal( SAMPLE_TEXTURE2D( _MicroNormalMap, sampler_Linear_Repeat, texCoord344 ), ( _MicroNormalStrength * microNormalMask287 ) ) );
					float3 temp_output_111_0_g111 = ddx( PositionWS );
					float3 temp_output_113_0_g111 = cross( ddy( PositionWS ) , NormalWS );
					float dotResult115_g111 = dot( temp_output_111_0_g111 , temp_output_113_0_g111 );
					float2 uv_DisplacementMap = IN.ase_texcoord4.xy * _DisplacementMap_ST.xy + _DisplacementMap_ST.zw;
					float displacementMap590 = SAMPLE_TEXTURE2D( _DisplacementMap, sampler_Linear_Repeat, uv_DisplacementMap ).r;
					float displacement229_g102 = displacementMap590;
					float In245_g102 = displacement229_g102;
					float2 uv_WrinkleDisplacementPack = IN.ase_texcoord4.xy * _WrinkleDisplacementPack_ST.xy + _WrinkleDisplacementPack_ST.zw;
					float4 tex2DNode538 = SAMPLE_TEXTURE2D( _WrinkleDisplacementPack, sampler_Linear_Repeat, uv_WrinkleDisplacementPack );
					float displacementStrength234_g102 = _WrinkleDisplacementStrength;
					float In1245_g102 = ( ( tex2DNode538.r - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g105 );
					float In2245_g102 = ( ( tex2DNode538.g - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g106 );
					float In3245_g102 = ( ( tex2DNode538.b - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1245_g102 = MinMaxDeltaBlend1245_g102( In245_g102 , In1245_g102 , In2245_g102 , In3245_g102 );
					float displacementWrinkle594 = localMinMaxDeltaBlend1245_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch599 = displacementWrinkle594;
					#else
					float staticSwitch599 = displacementMap590;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch600 = staticSwitch599;
					#else
					float staticSwitch600 = displacementMap590;
					#endif
					float temp_output_602_0 = ( staticSwitch600 - _DisplacementLevel );
					float finalDisplacement609 = temp_output_602_0;
					float temp_output_20_0_g111 = finalDisplacement609;
					float3 normalizeResult130_g111 = normalize( ( ( abs( dotResult115_g111 ) * NormalWS ) - ( _BumpStrength * float3( 0.05,0.05,0.05 ) * sign( dotResult115_g111 ) * ( ( ddx( temp_output_20_0_g111 ) * temp_output_113_0_g111 ) + ( ddy( temp_output_20_0_g111 ) * cross( NormalWS , temp_output_111_0_g111 ) ) ) ) ) );
					float3x3 ase_worldToTangent = float3x3( TangentWS, BitangentWS, NormalWS );
					float3 worldToTangentDir42_g111 = mul( ase_worldToTangent, normalizeResult130_g111 );
					float3 temp_output_614_0 = BlendNormals( temp_output_61_0 , worldToTangentDir42_g111 );
					#if defined( ENUM_DISPLACEMENT_MODE_NONE )
					float3 staticSwitch611 = temp_output_61_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_BUMP )
					float3 staticSwitch611 = temp_output_614_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPLACEMENT )
					float3 staticSwitch611 = temp_output_61_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP )
					float3 staticSwitch611 = temp_output_614_0;
					#else
					float3 staticSwitch611 = temp_output_61_0;
					#endif
					float3 finalTangentNormal525 = staticSwitch611;
					float3 normal162_g110 = finalTangentNormal525;
					float3 tanToWorld0 = float3( TangentWS.x, BitangentWS.x, NormalWS.x );
					float3 tanToWorld1 = float3( TangentWS.y, BitangentWS.y, NormalWS.y );
					float3 tanToWorld2 = float3( TangentWS.z, BitangentWS.z, NormalWS.z );
					float3 tanNormal95_g110 = normal162_g110;
					float3 worldNormal95_g110 = normalize( float3( dot( tanToWorld0, tanNormal95_g110 ), dot( tanToWorld1, tanNormal95_g110 ), dot( tanToWorld2, tanNormal95_g110 ) ) );
					float3 worldSpaceLightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( PositionWS ) );
					float3 normalizeResult102_g110 = normalize( ( ( _SSSNormalDistortion * worldNormal95_g110 ) + worldSpaceLightDir ) );
					float dotResult106_g110 = dot( -normalizeResult102_g110 , ViewDirWS );
					float dotResult111_g110 = dot( worldNormal95_g110 , ViewDirWS );
					#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
					float4 ase_lightColor = 0;
					#else //aselc
					float4 ase_lightColor = _LightColor0;
					#endif //aselc
					float4 temp_output_124_0_g110 = _SubsurfaceFalloff;
					float2 uv_SubsurfaceBlurMap = IN.ase_texcoord4.xy * _SubsurfaceBlurMap_ST.xy + _SubsurfaceBlurMap_ST.zw;
					float4 temp_output_123_0_g110 = SAMPLE_TEXTURE2D( _SubsurfaceBlurMap, sampler_Linear_Repeat, uv_SubsurfaceBlurMap );
					float localSkinMask179 = ( 0.0 );
					float2 uv_RGBAMask = IN.ase_texcoord4.xy * _RGBAMask_ST.xy + _RGBAMask_ST.zw;
					float4 tex2DNode123 = SAMPLE_TEXTURE2D( _RGBAMask, sampler_Linear_Repeat, uv_RGBAMask );
					float4 In1179 = tex2DNode123;
					float4 appendResult150 = (float4(_RSmoothnessMod , _GSmoothnessMod , _BSmoothnessMod , _ASmoothnessMod));
					float4 Mod1179 = appendResult150;
					float4 appendResult153 = (float4(_RScatterScale , _GScatterScale , _BScatterScale , _AScatterScale));
					float4 Scatter1179 = appendResult153;
					float UMMS179 = _UnmaskedSmoothnessMod;
					float UMSS179 = _UnmaskedScatterScale;
					float SmoothnessMod179 = 0.0;
					float ScatterMask179 = 0.0;
					SkinMask179( In1179 , Mod1179 , Scatter1179 , UMMS179 , UMSS179 , SmoothnessMod179 , ScatterMask179 );
					float localHeadMask156 = ( 0.0 );
					float4 In1156 = tex2DNode123;
					float2 uv_CFULCMask = IN.ase_texcoord4.xy * _CFULCMask_ST.xy + _CFULCMask_ST.zw;
					float4 In2156 = SAMPLE_TEXTURE2D( _CFULCMask, sampler_Linear_Repeat, uv_CFULCMask );
					float2 uv_EarNeckMask = IN.ase_texcoord4.xy * _EarNeckMask_ST.xy + _EarNeckMask_ST.zw;
					float4 In3156 = SAMPLE_TEXTURE2D( _EarNeckMask, sampler_Linear_Repeat, uv_EarNeckMask );
					float4 Mod1156 = appendResult150;
					float4 appendResult151 = (float4(_CheekSmoothnessMod , _ForeheadSmoothnessMod , _UpperLipSmoothnessMod , _ChinSmoothnessMod));
					float4 Mod2156 = appendResult151;
					float4 appendResult152 = (float4(_NeckSmoothnessMod , _EarSmoothnessMod , 0.0 , 0.0));
					float4 Mod3156 = appendResult152;
					float4 Scatter1156 = appendResult153;
					float4 appendResult154 = (float4(_CheekScatterScale , _ForeheadScatterScale , _UpperLipScatterScale , _ChinScatterScale));
					float4 Scatter2156 = appendResult154;
					float4 appendResult155 = (float4(_NeckScatterScale , _EarScatterScale , 0.0 , 0.0));
					float4 Scatter3156 = appendResult155;
					float UMMS156 = _UnmaskedSmoothnessMod;
					float UMSS156 = _UnmaskedScatterScale;
					float SmoothnessMod156 = 0.0;
					float ScatterMask156 = 0.0;
					HeadMask156( In1156 , In2156 , In3156 , Mod1156 , Mod2156 , Mod3156 , Scatter1156 , Scatter2156 , Scatter3156 , UMMS156 , UMSS156 , SmoothnessMod156 , ScatterMask156 );
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch169 = ScatterMask156;
					#else
					float staticSwitch169 = ScatterMask179;
					#endif
					float microScatteringMultiplier277 = ( _SubsurfaceScale * staticSwitch169 );
					float temp_output_127_0_g110 = ( temp_output_120_0_g110 * ( tex2DNode625.r * microScatteringMultiplier277 ) * _SSSBlurStrength );
					float4 lerpResult142_g110 = lerp( baseColor266 , temp_output_123_0_g110 , ( temp_output_124_0_g110 * temp_output_127_0_g110 ));
					float4 sssDiffuse649 = ( ( ( ( temp_output_144_0_g110 * temp_output_144_0_g110 ) * ( _SSSTransmission * saturate( dotResult106_g110 ) * saturate( ( 1.0 - dotResult111_g110 ) ) ) ) * ( ( ase_lightColor * temp_output_124_0_g110 ) * temp_output_123_0_g110 ) ) + lerpResult142_g110 );
					#ifdef BOOLEAN_USE_SSS_ON
					float4 staticSwitch652 = sssDiffuse649;
					#else
					float4 staticSwitch652 = baseColor266;
					#endif
					
					float3 In138_g110 = normal162_g110;
					float Strength138_g110 = ( 1.0 - temp_output_127_0_g110 );
					float3 localMyCustomExpression138_g110 = MyCustomExpression138_g110( In138_g110 , Strength138_g110 );
					float3 sssNormal650 = localMyCustomExpression138_g110;
					#ifdef BOOLEAN_USE_SSS_ON
					float3 staticSwitch653 = sssNormal650;
					#else
					float3 staticSwitch653 = finalTangentNormal525;
					#endif
					
					float metallicMap285 = tex2DNode32.r;
					
					float smoothnessMap288 = tex2DNode32.a;
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch170 = SmoothnessMod156;
					#else
					float staticSwitch170 = SmoothnessMod179;
					#endif
					float microSmoothnessMod276 = ( staticSwitch170 + _MicroSmoothnessMod );
					float smoothnessAO685 = Smoothness683;
					float smoothness185_g102 = smoothnessMap288;
					float In182_g102 = smoothness185_g102;
					float2 uv_WrinkleRoughnessPack = IN.ase_texcoord4.xy * _WrinkleRoughnessPack_ST.xy + _WrinkleRoughnessPack_ST.zw;
					float4 break498 = ( 1.0 - SAMPLE_TEXTURE2D( _WrinkleRoughnessPack, sampler_Linear_Repeat, uv_WrinkleRoughnessPack ) );
					float In1182_g102 = ( ( break498.r - smoothness185_g102 ) * temp_output_23_0_g105 );
					float In2182_g102 = ( ( break498.g - smoothness185_g102 ) * temp_output_23_0_g106 );
					float In3182_g102 = ( ( break498.b - smoothness185_g102 ) * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1S182_g102 = MinMaxDeltaBlend1S182_g102( In182_g102 , In1182_g102 , In2182_g102 , In3182_g102 );
					float smoothnessWrinkle438 = localMinMaxDeltaBlend1S182_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch468 = smoothnessMap288;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch468 = smoothnessWrinkle438;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch468 = smoothnessWrinkle438;
					#else
					float staticSwitch468 = smoothnessMap288;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch223 = ( smoothnessAO685 * ( microSmoothnessMod276 + staticSwitch468 ) );
					#else
					float staticSwitch223 = ( smoothnessMap288 + microSmoothnessMod276 );
					#endif
					float lerpResult686 = lerp( 1.0 , staticSwitch223 , _SmoothnessContrast);
					float lerpResult41 = lerp( _SmoothnessMin , _SmoothnessMax , lerpResult686);
					float2 uv_CavityMap = IN.ase_texcoord4.xy * _CavityMap_ST.xy + _CavityMap_ST.zw;
					float3 N692 = NormalWS;
					float3 V692 = ViewDirWS;
					float localFasterFresnel692 = FasterFresnel692( N692 , V692 );
					float lerpResult512 = lerp( 1.0 , SAMPLE_TEXTURE2D( _CavityMap, sampler_Linear_Repeat, uv_CavityMap ).r , ( _CavityStrength * saturate( ( 1.0 - localFasterFresnel692 ) ) ));
					
					float ambientOcclusionMap286 = tex2DNode32.g;
					
					float2 uv_EmissionMap = IN.ase_texcoord4.xy * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
					

					o.Albedo = staticSwitch652.rgb;
					o.Normal = staticSwitch653;

					half3 Specular = half3( 0, 0, 0 );
					half Metallic = metallicMap285;
					half Smoothness = (( _UseCavity )?( ( lerpResult41 * lerpResult512 ) ):( lerpResult41 ));
					half Occlusion = ( 1.0 - ( ( 1.0 - ambientOcclusionMap286 ) * _AOStrength ) );

					#if defined(ASE_LIGHTING_SIMPLE)
						o.Specular = Specular.x;
						o.Gloss = Smoothness;
					#else
						#if defined(_SPECULAR_SETUP)
							o.Specular = Specular;
						#else
							o.Metallic = Metallic;
						#endif
						o.Occlusion = Occlusion;
						o.Smoothness = Smoothness;
					#endif

					o.Emission = ( _EmissiveColor * SAMPLE_TEXTURE2D( _EmissionMap, sampler_Linear_Repeat, uv_EmissionMap ) ).rgb;
					o.Alpha = 1;
					half AlphaClipThreshold = 0.5;
					half3 BakedGI = 0;

					#if defined( ASE_DEPTH_WRITE_ON )
						float DeviceDepth = IN.pos.z;
					#endif

					#if ( ASE_FRAGMENT_NORMAL == 0 )
						o.Normal = normalize( o.Normal.x * TangentWS + o.Normal.y * BitangentWS + o.Normal.z * NormalWS );
					#elif ( ASE_FRAGMENT_NORMAL == 1 )
						o.Normal = UnityObjectToWorldNormal( o.Normal );
					#elif ( ASE_FRAGMENT_NORMAL == 2 )
						// @diogo: already in world-space; do nothing
					#endif

					#ifdef _ALPHATEST_ON
						clip( o.Alpha - AlphaClipThreshold );
					#endif

					#if defined( ASE_DEPTH_WRITE_ON )
						outputDepth = DeviceDepth;
					#endif

					#ifndef USING_DIRECTIONAL_LIGHT
						half3 lightDir = normalize( UnityWorldSpaceLightDir( PositionWS ) );
					#else
						half3 lightDir = _WorldSpaceLightPos0.xyz;
					#endif

					UnityGI gi;
					UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
					gi.indirect.diffuse = 0;
					gi.indirect.specular = 0;
					gi.light.color = 0;
					gi.light.dir = half3( 0, 1, 0 );

					UnityGIInput giInput;
					UNITY_INITIALIZE_OUTPUT(UnityGIInput, giInput);
					giInput.light = gi.light;
					giInput.worldPos = PositionWS;
					giInput.worldViewDir = ViewDirWS;
					giInput.atten = 1;
					#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
						giInput.lightmapUV = IN.ambientOrLightmapUV;
					#else
						giInput.lightmapUV = 0.0;
					#endif
					#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
						giInput.ambient = IN.ambientOrLightmapUV.rgb;
					#else
						giInput.ambient.rgb = 0.0;
					#endif
					giInput.probeHDR[0] = unity_SpecCube0_HDR;
					giInput.probeHDR[1] = unity_SpecCube1_HDR;
					#if defined(UNITY_SPECCUBE_BLENDING) || defined(UNITY_SPECCUBE_BOX_PROJECTION)
						giInput.boxMin[0] = unity_SpecCube0_BoxMin;
					#endif
					#ifdef UNITY_SPECCUBE_BOX_PROJECTION
						giInput.boxMax[0] = unity_SpecCube0_BoxMax;
						giInput.probePosition[0] = unity_SpecCube0_ProbePosition;
						giInput.boxMax[1] = unity_SpecCube1_BoxMax;
						giInput.boxMin[1] = unity_SpecCube1_BoxMin;
						giInput.probePosition[1] = unity_SpecCube1_ProbePosition;
					#endif

					#if defined(ASE_LIGHTING_SIMPLE)
						#if defined(_SPECULAR_SETUP)
							LightingBlinnPhong_GI(o, giInput, gi);
						#else
							LightingLambert_GI(o, giInput, gi);
						#endif
					#else
						#if defined(_SPECULAR_SETUP)
							LightingStandardSpecular_GI(o, giInput, gi);
						#else
							LightingStandard_GI(o, giInput, gi);
						#endif
					#endif

					#ifdef ASE_BAKEDGI
						gi.indirect.diffuse = BakedGI;
					#endif

					#if UNITY_SHOULD_SAMPLE_SH && !defined(LIGHTMAP_ON) && defined(ASE_NO_AMBIENT)
						gi.indirect.diffuse = 0;
					#endif

					#if defined(ASE_LIGHTING_SIMPLE)
						#if defined(_SPECULAR_SETUP)
							outEmission = LightingBlinnPhong_Deferred( o, ViewDirWS, gi, outGBuffer0, outGBuffer1, outGBuffer2 );
						#else
							outEmission = LightingLambert_Deferred( o, gi, outGBuffer0, outGBuffer1, outGBuffer2 );
						#endif
					#else
						#if defined(_SPECULAR_SETUP)
							outEmission = LightingStandardSpecular_Deferred( o, ViewDirWS, gi, outGBuffer0, outGBuffer1, outGBuffer2 );
						#else
							outEmission = LightingStandard_Deferred( o, ViewDirWS, gi, outGBuffer0, outGBuffer1, outGBuffer2 );
						#endif
					#endif

					#if defined(SHADOWS_SHADOWMASK) && (UNITY_ALLOWED_MRT_COUNT > 4)
						outShadowMask = UnityGetRawBakedOcclusions( IN.ambientOrLightmapUV.xy, float3( 0, 0, 0 ) );
					#endif
					#ifndef UNITY_HDR_ON
						outEmission.rgb = exp2(-outEmission.rgb);
					#endif
				}
			ENDCG
		}

		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }
			Cull Off

			CGPROGRAM
				#define ASE_GEOMETRY
				#define ASE_FRAGMENT_NORMAL 0
				#define ASE_RECEIVE_SHADOWS
				#pragma multi_compile_instancing
				#pragma multi_compile _ LOD_FADE_CROSSFADE
				#define ASE_FOG
				#define ASE_VERSION 19908
				#define ASE_USING_SAMPLING_MACROS 1

				#pragma vertex vert
				#pragma fragment frag
				#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
				#pragma shader_feature EDITOR_VISUALIZATION
				#ifndef UNITY_PASS_META
					#define UNITY_PASS_META
				#endif
				#include "HLSLSupport.cginc"
				#if defined( ASE_GEOMETRY ) || defined( ASE_IMPOSTOR )
					#ifndef UNITY_INSTANCED_LOD_FADE
						#define UNITY_INSTANCED_LOD_FADE
					#endif
					#ifndef UNITY_INSTANCED_SH
						#define UNITY_INSTANCED_SH
					#endif
					#ifndef UNITY_INSTANCED_LIGHTMAPSTS
						#define UNITY_INSTANCED_LIGHTMAPSTS
					#endif
				#endif
				#include "UnityShaderVariables.cginc"
				#include "UnityCG.cginc"
				#include "Lighting.cginc"
				#include "UnityPBSLighting.cginc"
				#include "UnityMetaPass.cginc"

				#include "UnityStandardUtils.cginc"
				#include "AutoLight.cginc"
				#include "UnityStandardBRDF.cginc"
				#define ASE_NEEDS_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_NORMAL
				#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_TANGENT
				#pragma shader_feature_local ENUM_DISPLACEMENT_MODE_NONE ENUM_DISPLACEMENT_MODE_BUMP ENUM_DISPLACEMENT_MODE_DISPLACEMENT ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP
				#pragma shader_feature_local BOOLEAN_IS_HEAD_ON
				#pragma shader_feature_local ENUM_WRINKLE_MODE_NONE ENUM_WRINKLE_MODE_WRINKLE ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT
				#pragma shader_feature_local BOOLEAN_USE_SSS_ON
				#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#else//ASE Sampling Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY(tex,samplertex,coord) tex2DArray(tex,coord)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
				#endif//ASE Sampling Macros
				


				struct appdata
				{
					float4 vertex : POSITION;
					half3 normal : NORMAL;
					half4 tangent : TANGENT;
					float4 texcoord : TEXCOORD0;
					float4 texcoord1 : TEXCOORD1;
					float4 texcoord2 : TEXCOORD2;
					
					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct v2f
				{
					float4 pos : SV_POSITION;
					#ifdef EDITOR_VISUALIZATION
						float2 vizUV : TEXCOORD0;
						float4 lightCoord : TEXCOORD1;
					#endif
					float4 ase_texcoord2 : TEXCOORD2;
					float4 ase_texcoord3 : TEXCOORD3;
					float4 ase_texcoord4 : TEXCOORD4;
					float4 ase_texcoord5 : TEXCOORD5;
					float4 ase_texcoord6 : TEXCOORD6;
					UNITY_VERTEX_INPUT_INSTANCE_ID
					UNITY_VERTEX_OUTPUT_STEREO
				};

				#ifdef ASE_TESSELLATION
					float _TessPhongStrength;
					float _TessValue;
					float _TessMin;
					float _TessMax;
					float _TessEdgeLength;
					float _TessMaxDisp;
				#endif

				UNITY_DECLARE_TEX2D_NOSAMPLER(_DisplacementMap);
				uniform float4 _DisplacementMap_ST;
				SamplerState sampler_Linear_Repeat;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleDisplacementPack);
				uniform float4 _WrinkleDisplacementPack_ST;
				uniform float _WrinkleDisplacementStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleFlowPack);
				uniform float4 _WrinkleFlowPack_ST;
				uniform float4 _WrinkleValueSet12CL;
				uniform float4 _WrinkleMaskSetArray_ST;
				uniform float4 _WrinkleValueSet1AL;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleMaskSetArray);
				uniform float4 _WrinkleValueSet1BL;
				uniform float4 _WrinkleValueSet1AR;
				uniform float4 _WrinkleValueSet1BR;
				uniform float4 _WrinkleValueSet12CR;
				uniform float4 _WrinkleValueSet2L;
				uniform float4 _WrinkleValueSet2R;
				uniform float4 _WrinkleValueSetBCCB;
				uniform float4 _WrinkleValueSet3DB;
				uniform float4 _WrinkleValueSet3L;
				uniform float4 _WrinkleValueSet3R;
				uniform float _DisplacementLevel;
				uniform float _DisplacementStrength;
				uniform float4 _DiffuseColor;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_DiffuseMap);
				uniform float4 _DiffuseMap_ST;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleDiffuseArray);
				uniform float4 _WrinkleDiffuseArray_ST;
				uniform float _UseBlend;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_ColorBlendMap);
				uniform float4 _ColorBlendMap_ST;
				uniform float _ColorBlendStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_MNAOMap);
				uniform float4 _MNAOMap_ST;
				uniform float _MouthCavityAO;
				uniform float _NostrilCavityAO;
				uniform float _LipsCavityAO;
				uniform float _ThicknessScale;
				uniform float _ThicknessScaleMin;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_SSSThicknessPack);
				uniform float4 _SSSThicknessPack_ST;
				uniform float _SSSTransmission;
				uniform float _SSSNormalDistortion;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalMap);
				uniform float4 _NormalMap_ST;
				uniform float _NormalStrength;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleNormalArray);
				uniform float4 _WrinkleNormalArray_ST;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalBlendMap);
				uniform float4 _NormalBlendMap_ST;
				uniform float _NormalBlendStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_MicroNormalMap);
				uniform float _MicroNormalTiling;
				uniform float _MicroNormalStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskMap);
				uniform float4 _MaskMap_ST;
				uniform float _BumpStrength;
				uniform float4 _SubsurfaceFalloff;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_SubsurfaceBlurMap);
				uniform float4 _SubsurfaceBlurMap_ST;
				uniform float _SubsurfaceScale;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_RGBAMask);
				uniform float4 _RGBAMask_ST;
				uniform float _RSmoothnessMod;
				uniform float _GSmoothnessMod;
				uniform float _BSmoothnessMod;
				uniform float _ASmoothnessMod;
				uniform float _RScatterScale;
				uniform float _GScatterScale;
				uniform float _BScatterScale;
				uniform float _AScatterScale;
				uniform float _UnmaskedSmoothnessMod;
				uniform float _UnmaskedScatterScale;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_CFULCMask);
				uniform float4 _CFULCMask_ST;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_EarNeckMask);
				uniform float4 _EarNeckMask_ST;
				uniform float _CheekSmoothnessMod;
				uniform float _ForeheadSmoothnessMod;
				uniform float _UpperLipSmoothnessMod;
				uniform float _ChinSmoothnessMod;
				uniform float _NeckSmoothnessMod;
				uniform float _EarSmoothnessMod;
				uniform float _CheekScatterScale;
				uniform float _ForeheadScatterScale;
				uniform float _UpperLipScatterScale;
				uniform float _ChinScatterScale;
				uniform float _NeckScatterScale;
				uniform float _EarScatterScale;
				uniform float _SSSBlurStrength;
				uniform float4 _EmissiveColor;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionMap);
				uniform float4 _EmissionMap_ST;


				//This is a late directive
				
				float MinMaxDeltaBlend1245_g102( float In, float In1, float In2, float In3 )
				{
					return max(max(In1, In2), In3) + min(min(In1, In2), In3) + In;
				}
				
				float4 MinMaxDeltaBlend4S181_g102( float4 In, float4 In1, float4 In2, float4 In3 )
				{
					return saturate(max(max(In1, In2), In3) + min(min(In1, In2), In3) + In);
				}
				
				float MyCustomExpression683( float4 In, float4 Contrast, out float Smoothness )
				{
					float4 mask = lerp(1, In, Contrast);
					float AO = saturate(mask.y*mask.z*mask.w);
					Smoothness = AO * mask.r;
					return AO;
				}
				
				float3 MinMaxDeltaBlend3183_g102( float3 In, float3 In1, float3 In2, float3 In3 )
				{
					return max(max(In1, In2), In3) + min(min(In1, In2), In3) + In;
				}
				
				void SkinMask179( float4 In1, float4 Mod1, float4 Scatter1, float UMMS, float UMSS, out float SmoothnessMod, out float ScatterMask )
				{
					float mask = saturate(In1.r + In1.g + In1.b + In1.a);
					float unmask = 1.0 - mask;
					SmoothnessMod = dot(In1, Mod1) + (UMMS * unmask);
					ScatterMask = dot(In1, Scatter1) + (UMSS * unmask);
					return;
				}
				
				void HeadMask156( float4 In1, float4 In2, float4 In3, float4 Mod1, float4 Mod2, float4 Mod3, float4 Scatter1, float4 Scatter2, float4 Scatter3, float UMMS, float UMSS, out float SmoothnessMod, out float ScatterMask )
				{
					In3.zw = 0;
					float4 m = In1 + In2 + In3;
					float mask = saturate(m.x + m.y + m.z + m.w);
					float unmask = 1.0 - mask;
					SmoothnessMod = dot(In1, Mod1) + dot(In2, Mod2) + dot(In3, Mod3) + (UMMS * unmask);
					ScatterMask = dot(In1, Scatter1) + dot(In2, Scatter2) + dot(In3, Scatter3) + (UMSS * unmask);
					return;
				}
				

				v2f VertexFunction( appdata v  )
				{
					UNITY_SETUP_INSTANCE_ID(v);
					v2f o;
					UNITY_INITIALIZE_OUTPUT(v2f,o);
					UNITY_TRANSFER_INSTANCE_ID(v,o);
					UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

					float3 _Vector0 = float3(0,0,0);
					float2 uv_DisplacementMap = v.texcoord.xyzw.xy * _DisplacementMap_ST.xy + _DisplacementMap_ST.zw;
					float displacementMap590 = SAMPLE_TEXTURE2D_LOD( _DisplacementMap, sampler_Linear_Repeat, uv_DisplacementMap, 0.0 ).r;
					float displacement229_g102 = displacementMap590;
					float In245_g102 = displacement229_g102;
					float2 uv_WrinkleDisplacementPack = v.texcoord.xyzw.xy * _WrinkleDisplacementPack_ST.xy + _WrinkleDisplacementPack_ST.zw;
					float4 tex2DNode538 = SAMPLE_TEXTURE2D_LOD( _WrinkleDisplacementPack, sampler_Linear_Repeat, uv_WrinkleDisplacementPack, 0.0 );
					float displacementStrength234_g102 = _WrinkleDisplacementStrength;
					float2 uv_WrinkleFlowPack = v.texcoord.xyzw.xy * _WrinkleFlowPack_ST.xy + _WrinkleFlowPack_ST.zw;
					float4 tex2DNode475 = SAMPLE_TEXTURE2D_LOD( _WrinkleFlowPack, sampler_Linear_Repeat, uv_WrinkleFlowPack, 0.0 );
					float2 texCoord10_g102 = v.texcoord.xyzw.xy * float2( 1,1 ) + float2( 0,0 );
					float temp_output_1_0_g104 = 0.49;
					float leftMask27_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g104 ) / ( 0.51 - temp_output_1_0_g104 ) ) );
					float4 break107_g102 = _WrinkleValueSet12CL;
					float2 appendResult112_g102 = (float2(break107_g102.x , break107_g102.y));
					float2 uv_WrinkleMaskSetArray = v.texcoord.xyzw.xy;
					float4 break109_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,4.0), 0.0 );
					float2 appendResult115_g102 = (float2(break109_g102.x , break109_g102.y));
					float dotResult121_g102 = dot( appendResult112_g102 , appendResult115_g102 );
					float value1CLeft135_g102 = dotResult121_g102;
					float4 maskSet1A214_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,0.0), 0.0 );
					float dotResult29_g102 = dot( _WrinkleValueSet1AL , maskSet1A214_g102 );
					float4 temp_output_16_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,1.0), 0.0 );
					float dotResult35_g102 = dot( _WrinkleValueSet1BL , temp_output_16_0_g102 );
					float dotResult30_g102 = dot( maskSet1A214_g102 , _WrinkleValueSet1AR );
					float dotResult36_g102 = dot( temp_output_16_0_g102 , _WrinkleValueSet1BR );
					float4 break108_g102 = _WrinkleValueSet12CR;
					float2 appendResult117_g102 = (float2(break108_g102.x , break108_g102.y));
					float dotResult122_g102 = dot( appendResult115_g102 , appendResult117_g102 );
					float value1CRight136_g102 = dotResult122_g102;
					float temp_output_1_0_g103 = 0.51;
					float rightMask28_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g103 ) / ( 0.49 - temp_output_1_0_g103 ) ) );
					float temp_output_16_0_g105 = ( ( leftMask27_g102 * ( value1CLeft135_g102 + dotResult29_g102 + dotResult35_g102 ) ) + ( ( dotResult30_g102 + dotResult36_g102 + value1CRight136_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g105 = ( saturate( ( tex2DNode475.r + temp_output_16_0_g105 ) ) * temp_output_16_0_g105 );
					float In1245_g102 = ( ( tex2DNode538.r - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g105 );
					float2 appendResult113_g102 = (float2(break107_g102.z , break107_g102.w));
					float2 appendResult114_g102 = (float2(break109_g102.z , break109_g102.w));
					float dotResult123_g102 = dot( appendResult113_g102 , appendResult114_g102 );
					float value2CLeft137_g102 = dotResult123_g102;
					float4 temp_output_17_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,2.0), 0.0 );
					float dotResult41_g102 = dot( _WrinkleValueSet2L , temp_output_17_0_g102 );
					float dotResult42_g102 = dot( temp_output_17_0_g102 , _WrinkleValueSet2R );
					float2 appendResult116_g102 = (float2(break108_g102.z , break108_g102.w));
					float dotResult124_g102 = dot( appendResult114_g102 , appendResult116_g102 );
					float value2CRight138_g102 = dotResult124_g102;
					float temp_output_16_0_g106 = ( ( leftMask27_g102 * ( value2CLeft137_g102 + dotResult41_g102 ) ) + ( ( dotResult42_g102 + value2CRight138_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g106 = ( saturate( ( tex2DNode475.g + temp_output_16_0_g106 ) ) * temp_output_16_0_g106 );
					float In2245_g102 = ( ( tex2DNode538.g - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g106 );
					float4 break211_g102 = _WrinkleValueSetBCCB;
					float valueBCCLeft217_g102 = ( break211_g102.x * maskSet1A214_g102.y );
					float4 break118_g102 = _WrinkleValueSet3DB;
					float2 appendResult120_g102 = (float2(break118_g102.x , break118_g102.y));
					float dotResult127_g102 = dot( appendResult120_g102 , appendResult115_g102 );
					float value3DLeft129_g102 = dotResult127_g102;
					float4 temp_output_18_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,3.0), 0.0 );
					float dotResult47_g102 = dot( _WrinkleValueSet3L , temp_output_18_0_g102 );
					float dotResult48_g102 = dot( temp_output_18_0_g102 , _WrinkleValueSet3R );
					float2 appendResult119_g102 = (float2(break118_g102.z , break118_g102.w));
					float dotResult128_g102 = dot( appendResult115_g102 , appendResult119_g102 );
					float value3DRight130_g102 = dotResult128_g102;
					float valueBCCRight219_g102 = ( maskSet1A214_g102.y * break211_g102.y );
					float temp_output_16_0_g107 = ( ( leftMask27_g102 * ( valueBCCLeft217_g102 + value3DLeft129_g102 + dotResult47_g102 ) ) + ( ( dotResult48_g102 + value3DRight130_g102 + valueBCCRight219_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g107 = ( saturate( ( tex2DNode475.b + temp_output_16_0_g107 ) ) * temp_output_16_0_g107 );
					float In3245_g102 = ( ( tex2DNode538.b - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1245_g102 = MinMaxDeltaBlend1245_g102( In245_g102 , In1245_g102 , In2245_g102 , In3245_g102 );
					float displacementWrinkle594 = localMinMaxDeltaBlend1245_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch599 = displacementWrinkle594;
					#else
					float staticSwitch599 = displacementMap590;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch600 = staticSwitch599;
					#else
					float staticSwitch600 = displacementMap590;
					#endif
					float temp_output_602_0 = ( staticSwitch600 - _DisplacementLevel );
					float3 temp_output_608_0 = ( ( temp_output_602_0 * _DisplacementStrength ) * v.normal );
					#if defined( ENUM_DISPLACEMENT_MODE_NONE )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_BUMP )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPLACEMENT )
					float3 staticSwitch595 = temp_output_608_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP )
					float3 staticSwitch595 = temp_output_608_0;
					#else
					float3 staticSwitch595 = _Vector0;
					#endif
					
					float3 ase_positionWS = mul( unity_ObjectToWorld, float4( ( v.vertex ).xyz, 1 ) ).xyz;
					o.ase_texcoord3.xyz = ase_positionWS;
					float3 ase_normalWS = UnityObjectToWorldNormal( v.normal );
					o.ase_texcoord4.xyz = ase_normalWS;
					float3 ase_tangentWS = UnityObjectToWorldDir( v.tangent );
					o.ase_texcoord5.xyz = ase_tangentWS;
					float ase_tangentSign = v.tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
					float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
					o.ase_texcoord6.xyz = ase_bitangentWS;
					
					o.ase_texcoord2.xy = v.texcoord.xyzw.xy;
					
					//setting value to unused interpolator channels and avoid initialization warnings
					o.ase_texcoord2.zw = 0;
					o.ase_texcoord3.w = 0;
					o.ase_texcoord4.w = 0;
					o.ase_texcoord5.w = 0;
					o.ase_texcoord6.w = 0;

					#ifdef ASE_ABSOLUTE_VERTEX_POS
						float3 defaultVertexValue = v.vertex.xyz;
					#else
						float3 defaultVertexValue = float3(0, 0, 0);
					#endif
					float3 vertexValue = staticSwitch595;
					#ifdef ASE_ABSOLUTE_VERTEX_POS
						v.vertex.xyz = vertexValue;
					#else
						v.vertex.xyz += vertexValue;
					#endif
					v.vertex.w = 1;
					v.normal = v.normal;
					v.tangent = v.tangent;

					#ifdef EDITOR_VISUALIZATION
						o.vizUV = 0;
						o.lightCoord = 0;
						if (unity_VisualizationMode == EDITORVIZ_TEXTURE)
							o.vizUV = UnityMetaVizUV(unity_EditorViz_UVIndex, v.texcoord.xy, v.texcoord1.xy, v.texcoord2.xy, unity_EditorViz_Texture_ST);
						else if (unity_VisualizationMode == EDITORVIZ_SHOWLIGHTMASK)
						{
							o.vizUV = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
							o.lightCoord = mul(unity_EditorViz_WorldToLight, mul(unity_ObjectToWorld, float4(v.vertex.xyz, 1)));
						}
					#endif

					o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST);
					return o;
				}

				#if defined(ASE_TESSELLATION)
				struct VertexControl
				{
					float4 vertex : INTERNALTESSPOS;
					float4 tangent : TANGENT;
					float3 normal : NORMAL;
					float4 texcoord : TEXCOORD0;
					float4 texcoord1 : TEXCOORD1;
					float4 texcoord2 : TEXCOORD2;
					
					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct TessellationFactors
				{
					float edge[3] : SV_TessFactor;
					float inside : SV_InsideTessFactor;
				};

				VertexControl vert ( appdata v )
				{
					VertexControl o;
					UNITY_SETUP_INSTANCE_ID(v);
					UNITY_TRANSFER_INSTANCE_ID(v, o);
					o.vertex = v.vertex;
					o.tangent = v.tangent;
					o.normal = v.normal;
					o.texcoord = v.texcoord;
					o.texcoord1 = v.texcoord1;
					o.texcoord2 = v.texcoord2;
					
					return o;
				}

				TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
				{
					TessellationFactors o;
					float4 tf = 1;
					float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
					float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
					#if defined(ASE_FIXED_TESSELLATION)
					tf = FixedTess( tessValue );
					#elif defined(ASE_DISTANCE_TESSELLATION)
					tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
					#elif defined(ASE_LENGTH_TESSELLATION)
					tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
					#elif defined(ASE_LENGTH_CULL_TESSELLATION)
					tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
					#endif
					o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
					return o;
				}

				[domain("tri")]
				[partitioning("fractional_odd")]
				[outputtopology("triangle_cw")]
				[patchconstantfunc("TessellationFunction")]
				[outputcontrolpoints(3)]
				VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
				{
				   return patch[id];
				}

				[domain("tri")]
				v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
				{
					appdata o = (appdata) 0;
					o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
					o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
					o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
					o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
					o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
					o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
					
					#if defined(ASE_PHONG_TESSELLATION)
					float3 pp[3];
					for (int i = 0; i < 3; ++i)
						pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
					float phongStrength = _TessPhongStrength;
					o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
					#endif
					UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
					return VertexFunction(o);
				}
				#else
				v2f vert( appdata v )
				{
					return VertexFunction( v );
				}
				#endif

				half4 frag( v2f IN  ) : SV_Target
				{
					UNITY_SETUP_INSTANCE_ID(IN);

					#ifdef LOD_FADE_CROSSFADE
						UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
					#endif

					#if defined(ASE_LIGHTING_SIMPLE)
						SurfaceOutput o = (SurfaceOutput)0;
					#else
						#if defined(_SPECULAR_SETUP)
							SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
						#else
							SurfaceOutputStandard o = (SurfaceOutputStandard)0;
						#endif
					#endif

					float2 uv_DiffuseMap = IN.ase_texcoord2.xy * _DiffuseMap_ST.xy + _DiffuseMap_ST.zw;
					float4 diffuseMap358 = SAMPLE_TEXTURE2D( _DiffuseMap, sampler_Linear_Repeat, uv_DiffuseMap );
					float4 diffuse184_g102 = diffuseMap358;
					float4 In181_g102 = diffuse184_g102;
					float2 uv_WrinkleDiffuseArray = IN.ase_texcoord2.xy;
					float2 uv_WrinkleFlowPack = IN.ase_texcoord2.xy * _WrinkleFlowPack_ST.xy + _WrinkleFlowPack_ST.zw;
					float4 tex2DNode475 = SAMPLE_TEXTURE2D( _WrinkleFlowPack, sampler_Linear_Repeat, uv_WrinkleFlowPack );
					float2 texCoord10_g102 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
					float temp_output_1_0_g104 = 0.49;
					float leftMask27_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g104 ) / ( 0.51 - temp_output_1_0_g104 ) ) );
					float4 break107_g102 = _WrinkleValueSet12CL;
					float2 appendResult112_g102 = (float2(break107_g102.x , break107_g102.y));
					float2 uv_WrinkleMaskSetArray = IN.ase_texcoord2.xy;
					float4 break109_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,4.0) );
					float2 appendResult115_g102 = (float2(break109_g102.x , break109_g102.y));
					float dotResult121_g102 = dot( appendResult112_g102 , appendResult115_g102 );
					float value1CLeft135_g102 = dotResult121_g102;
					float4 maskSet1A214_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,0.0) );
					float dotResult29_g102 = dot( _WrinkleValueSet1AL , maskSet1A214_g102 );
					float4 temp_output_16_0_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,1.0) );
					float dotResult35_g102 = dot( _WrinkleValueSet1BL , temp_output_16_0_g102 );
					float dotResult30_g102 = dot( maskSet1A214_g102 , _WrinkleValueSet1AR );
					float dotResult36_g102 = dot( temp_output_16_0_g102 , _WrinkleValueSet1BR );
					float4 break108_g102 = _WrinkleValueSet12CR;
					float2 appendResult117_g102 = (float2(break108_g102.x , break108_g102.y));
					float dotResult122_g102 = dot( appendResult115_g102 , appendResult117_g102 );
					float value1CRight136_g102 = dotResult122_g102;
					float temp_output_1_0_g103 = 0.51;
					float rightMask28_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g103 ) / ( 0.49 - temp_output_1_0_g103 ) ) );
					float temp_output_16_0_g105 = ( ( leftMask27_g102 * ( value1CLeft135_g102 + dotResult29_g102 + dotResult35_g102 ) ) + ( ( dotResult30_g102 + dotResult36_g102 + value1CRight136_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g105 = ( saturate( ( tex2DNode475.r + temp_output_16_0_g105 ) ) * temp_output_16_0_g105 );
					float4 In1181_g102 = ( ( SAMPLE_TEXTURE2D_ARRAY( _WrinkleDiffuseArray, sampler_Linear_Repeat, float3(uv_WrinkleDiffuseArray,0.0) ) - diffuse184_g102 ) * temp_output_23_0_g105 );
					float2 appendResult113_g102 = (float2(break107_g102.z , break107_g102.w));
					float2 appendResult114_g102 = (float2(break109_g102.z , break109_g102.w));
					float dotResult123_g102 = dot( appendResult113_g102 , appendResult114_g102 );
					float value2CLeft137_g102 = dotResult123_g102;
					float4 temp_output_17_0_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,2.0) );
					float dotResult41_g102 = dot( _WrinkleValueSet2L , temp_output_17_0_g102 );
					float dotResult42_g102 = dot( temp_output_17_0_g102 , _WrinkleValueSet2R );
					float2 appendResult116_g102 = (float2(break108_g102.z , break108_g102.w));
					float dotResult124_g102 = dot( appendResult114_g102 , appendResult116_g102 );
					float value2CRight138_g102 = dotResult124_g102;
					float temp_output_16_0_g106 = ( ( leftMask27_g102 * ( value2CLeft137_g102 + dotResult41_g102 ) ) + ( ( dotResult42_g102 + value2CRight138_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g106 = ( saturate( ( tex2DNode475.g + temp_output_16_0_g106 ) ) * temp_output_16_0_g106 );
					float4 In2181_g102 = ( ( SAMPLE_TEXTURE2D_ARRAY( _WrinkleDiffuseArray, sampler_Linear_Repeat, float3(uv_WrinkleDiffuseArray,1.0) ) - diffuse184_g102 ) * temp_output_23_0_g106 );
					float4 break211_g102 = _WrinkleValueSetBCCB;
					float valueBCCLeft217_g102 = ( break211_g102.x * maskSet1A214_g102.y );
					float4 break118_g102 = _WrinkleValueSet3DB;
					float2 appendResult120_g102 = (float2(break118_g102.x , break118_g102.y));
					float dotResult127_g102 = dot( appendResult120_g102 , appendResult115_g102 );
					float value3DLeft129_g102 = dotResult127_g102;
					float4 temp_output_18_0_g102 = SAMPLE_TEXTURE2D_ARRAY( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,3.0) );
					float dotResult47_g102 = dot( _WrinkleValueSet3L , temp_output_18_0_g102 );
					float dotResult48_g102 = dot( temp_output_18_0_g102 , _WrinkleValueSet3R );
					float2 appendResult119_g102 = (float2(break118_g102.z , break118_g102.w));
					float dotResult128_g102 = dot( appendResult115_g102 , appendResult119_g102 );
					float value3DRight130_g102 = dotResult128_g102;
					float valueBCCRight219_g102 = ( maskSet1A214_g102.y * break211_g102.y );
					float temp_output_16_0_g107 = ( ( leftMask27_g102 * ( valueBCCLeft217_g102 + value3DLeft129_g102 + dotResult47_g102 ) ) + ( ( dotResult48_g102 + value3DRight130_g102 + valueBCCRight219_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g107 = ( saturate( ( tex2DNode475.b + temp_output_16_0_g107 ) ) * temp_output_16_0_g107 );
					float4 In3181_g102 = ( ( SAMPLE_TEXTURE2D_ARRAY( _WrinkleDiffuseArray, sampler_Linear_Repeat, float3(uv_WrinkleDiffuseArray,2.0) ) - diffuse184_g102 ) * temp_output_23_0_g107 );
					float4 localMinMaxDeltaBlend4S181_g102 = MinMaxDeltaBlend4S181_g102( In181_g102 , In1181_g102 , In2181_g102 , In3181_g102 );
					float4 diffuseWrinkle437 = localMinMaxDeltaBlend4S181_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float4 staticSwitch464 = diffuseMap358;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float4 staticSwitch464 = diffuseWrinkle437;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float4 staticSwitch464 = diffuseWrinkle437;
					#else
					float4 staticSwitch464 = diffuseMap358;
					#endif
					float4 temp_output_357_0 = ( _DiffuseColor * staticSwitch464 );
					float2 uv_ColorBlendMap = IN.ase_texcoord2.xy * _ColorBlendMap_ST.xy + _ColorBlendMap_ST.zw;
					float4 blendOpSrc13 = SAMPLE_TEXTURE2D( _ColorBlendMap, sampler_Linear_Repeat, uv_ColorBlendMap );
					float4 blendOpDest13 = temp_output_357_0;
					float4 lerpBlendMode13 = lerp(blendOpDest13,(( blendOpDest13 > 0.5 ) ? ( 1.0 - 2.0 * ( 1.0 - blendOpDest13 ) * ( 1.0 - blendOpSrc13 ) ) : ( 2.0 * blendOpDest13 * blendOpSrc13 ) ),_ColorBlendStrength);
					float2 uv_MNAOMap = IN.ase_texcoord2.xy * _MNAOMap_ST.xy + _MNAOMap_ST.zw;
					float4 In683 = SAMPLE_TEXTURE2D( _MNAOMap, sampler_Linear_Repeat, uv_MNAOMap );
					float4 appendResult684 = (float4(1.0 , _MouthCavityAO , _NostrilCavityAO , _LipsCavityAO));
					float4 Contrast683 = appendResult684;
					float Smoothness683 = 0.0;
					float localMyCustomExpression683 = MyCustomExpression683( In683 , Contrast683 , Smoothness683 );
					float cavityAO280 = localMyCustomExpression683;
					#ifdef BOOLEAN_IS_HEAD_ON
					float4 staticSwitch72 = ( (( _UseBlend )?( ( saturate( lerpBlendMode13 )) ):( temp_output_357_0 )) * cavityAO280 );
					#else
					float4 staticSwitch72 = temp_output_357_0;
					#endif
					float4 baseColor266 = staticSwitch72;
					float2 uv_SSSThicknessPack = IN.ase_texcoord2.xy * _SSSThicknessPack_ST.xy + _SSSThicknessPack_ST.zw;
					float4 tex2DNode625 = SAMPLE_TEXTURE2D( _SSSThicknessPack, sampler_Linear_Repeat, uv_SSSThicknessPack );
					float lerpResult630 = lerp( _ThicknessScale , _ThicknessScaleMin , tex2DNode625.a);
					float temp_output_120_0_g110 = lerpResult630;
					float temp_output_144_0_g110 = ( 1.0 - temp_output_120_0_g110 );
					float2 uv_NormalMap = IN.ase_texcoord2.xy * _NormalMap_ST.xy + _NormalMap_ST.zw;
					float normalMapScale359 = _NormalStrength;
					float3 normalMap360 = UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalMap, sampler_Linear_Repeat, uv_NormalMap ), normalMapScale359 );
					float3 normal186_g102 = normalMap360;
					float3 In183_g102 = normal186_g102;
					float2 uv_WrinkleNormalArray = IN.ase_texcoord2.xy;
					float3 In1183_g102 = ( ( UnpackScaleNormal( SAMPLE_TEXTURE2D_ARRAY( _WrinkleNormalArray, sampler_Linear_Repeat, float3(uv_WrinkleNormalArray,0.0) ), normalMapScale359 ) - normal186_g102 ) * temp_output_23_0_g105 );
					float3 In2183_g102 = ( ( UnpackScaleNormal( SAMPLE_TEXTURE2D_ARRAY( _WrinkleNormalArray, sampler_Linear_Repeat, float3(uv_WrinkleNormalArray,1.0) ), normalMapScale359 ) - normal186_g102 ) * temp_output_23_0_g106 );
					float3 In3183_g102 = ( ( UnpackScaleNormal( SAMPLE_TEXTURE2D_ARRAY( _WrinkleNormalArray, sampler_Linear_Repeat, float3(uv_WrinkleNormalArray,2.0) ), normalMapScale359 ) - normal186_g102 ) * temp_output_23_0_g107 );
					float3 localMinMaxDeltaBlend3183_g102 = MinMaxDeltaBlend3183_g102( In183_g102 , In1183_g102 , In2183_g102 , In3183_g102 );
					float3 normalWrinkle439 = localMinMaxDeltaBlend3183_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float3 staticSwitch467 = normalMap360;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float3 staticSwitch467 = normalWrinkle439;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float3 staticSwitch467 = normalWrinkle439;
					#else
					float3 staticSwitch467 = normalMap360;
					#endif
					float2 uv_NormalBlendMap = IN.ase_texcoord2.xy * _NormalBlendMap_ST.xy + _NormalBlendMap_ST.zw;
					#ifdef BOOLEAN_IS_HEAD_ON
					float3 staticSwitch71 = (( _UseBlend )?( BlendNormals( staticSwitch467 , UnpackScaleNormal( SAMPLE_TEXTURE2D( _NormalBlendMap, sampler_Linear_Repeat, uv_NormalBlendMap ), _NormalBlendStrength ) ) ):( staticSwitch467 ));
					#else
					float3 staticSwitch71 = staticSwitch467;
					#endif
					float2 temp_cast_12 = (_MicroNormalTiling).xx;
					float2 texCoord344 = IN.ase_texcoord2.xy * temp_cast_12 + float2( 0,0 );
					float2 uv_MaskMap = IN.ase_texcoord2.xy * _MaskMap_ST.xy + _MaskMap_ST.zw;
					float4 tex2DNode32 = SAMPLE_TEXTURE2D( _MaskMap, sampler_Linear_Repeat, uv_MaskMap );
					float microNormalMask287 = tex2DNode32.b;
					float3 temp_output_61_0 = BlendNormals( staticSwitch71 , UnpackScaleNormal( SAMPLE_TEXTURE2D( _MicroNormalMap, sampler_Linear_Repeat, texCoord344 ), ( _MicroNormalStrength * microNormalMask287 ) ) );
					float3 ase_positionWS = IN.ase_texcoord3.xyz;
					float3 temp_output_111_0_g111 = ddx( ase_positionWS );
					float3 ase_normalWS = IN.ase_texcoord4.xyz;
					float3 temp_output_113_0_g111 = cross( ddy( ase_positionWS ) , ase_normalWS );
					float dotResult115_g111 = dot( temp_output_111_0_g111 , temp_output_113_0_g111 );
					float2 uv_DisplacementMap = IN.ase_texcoord2.xy * _DisplacementMap_ST.xy + _DisplacementMap_ST.zw;
					float displacementMap590 = SAMPLE_TEXTURE2D( _DisplacementMap, sampler_Linear_Repeat, uv_DisplacementMap ).r;
					float displacement229_g102 = displacementMap590;
					float In245_g102 = displacement229_g102;
					float2 uv_WrinkleDisplacementPack = IN.ase_texcoord2.xy * _WrinkleDisplacementPack_ST.xy + _WrinkleDisplacementPack_ST.zw;
					float4 tex2DNode538 = SAMPLE_TEXTURE2D( _WrinkleDisplacementPack, sampler_Linear_Repeat, uv_WrinkleDisplacementPack );
					float displacementStrength234_g102 = _WrinkleDisplacementStrength;
					float In1245_g102 = ( ( tex2DNode538.r - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g105 );
					float In2245_g102 = ( ( tex2DNode538.g - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g106 );
					float In3245_g102 = ( ( tex2DNode538.b - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1245_g102 = MinMaxDeltaBlend1245_g102( In245_g102 , In1245_g102 , In2245_g102 , In3245_g102 );
					float displacementWrinkle594 = localMinMaxDeltaBlend1245_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch599 = displacementWrinkle594;
					#else
					float staticSwitch599 = displacementMap590;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch600 = staticSwitch599;
					#else
					float staticSwitch600 = displacementMap590;
					#endif
					float temp_output_602_0 = ( staticSwitch600 - _DisplacementLevel );
					float finalDisplacement609 = temp_output_602_0;
					float temp_output_20_0_g111 = finalDisplacement609;
					float3 normalizeResult130_g111 = normalize( ( ( abs( dotResult115_g111 ) * ase_normalWS ) - ( _BumpStrength * float3( 0.05,0.05,0.05 ) * sign( dotResult115_g111 ) * ( ( ddx( temp_output_20_0_g111 ) * temp_output_113_0_g111 ) + ( ddy( temp_output_20_0_g111 ) * cross( ase_normalWS , temp_output_111_0_g111 ) ) ) ) ) );
					float3 ase_tangentWS = IN.ase_texcoord5.xyz;
					float3 ase_bitangentWS = IN.ase_texcoord6.xyz;
					float3x3 ase_worldToTangent = float3x3( ase_tangentWS, ase_bitangentWS, ase_normalWS );
					float3 worldToTangentDir42_g111 = mul( ase_worldToTangent, normalizeResult130_g111 );
					float3 temp_output_614_0 = BlendNormals( temp_output_61_0 , worldToTangentDir42_g111 );
					#if defined( ENUM_DISPLACEMENT_MODE_NONE )
					float3 staticSwitch611 = temp_output_61_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_BUMP )
					float3 staticSwitch611 = temp_output_614_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPLACEMENT )
					float3 staticSwitch611 = temp_output_61_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP )
					float3 staticSwitch611 = temp_output_614_0;
					#else
					float3 staticSwitch611 = temp_output_61_0;
					#endif
					float3 finalTangentNormal525 = staticSwitch611;
					float3 normal162_g110 = finalTangentNormal525;
					float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
					float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
					float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
					float3 tanNormal95_g110 = normal162_g110;
					float3 worldNormal95_g110 = normalize( float3( dot( tanToWorld0, tanNormal95_g110 ), dot( tanToWorld1, tanNormal95_g110 ), dot( tanToWorld2, tanNormal95_g110 ) ) );
					float3 worldSpaceLightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_positionWS ) );
					float3 normalizeResult102_g110 = normalize( ( ( _SSSNormalDistortion * worldNormal95_g110 ) + worldSpaceLightDir ) );
					float3 ase_viewVectorWS = ( ( unity_OrthoParams.w == 0 ) ? _WorldSpaceCameraPos - ase_positionWS : UNITY_MATRIX_V[ 2 ].xyz );
					float3 ase_viewDirSafeWS = Unity_SafeNormalize( ase_viewVectorWS );
					float dotResult106_g110 = dot( -normalizeResult102_g110 , ase_viewDirSafeWS );
					float dotResult111_g110 = dot( worldNormal95_g110 , ase_viewDirSafeWS );
					#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
					float4 ase_lightColor = 0;
					#else //aselc
					float4 ase_lightColor = _LightColor0;
					#endif //aselc
					float4 temp_output_124_0_g110 = _SubsurfaceFalloff;
					float2 uv_SubsurfaceBlurMap = IN.ase_texcoord2.xy * _SubsurfaceBlurMap_ST.xy + _SubsurfaceBlurMap_ST.zw;
					float4 temp_output_123_0_g110 = SAMPLE_TEXTURE2D( _SubsurfaceBlurMap, sampler_Linear_Repeat, uv_SubsurfaceBlurMap );
					float localSkinMask179 = ( 0.0 );
					float2 uv_RGBAMask = IN.ase_texcoord2.xy * _RGBAMask_ST.xy + _RGBAMask_ST.zw;
					float4 tex2DNode123 = SAMPLE_TEXTURE2D( _RGBAMask, sampler_Linear_Repeat, uv_RGBAMask );
					float4 In1179 = tex2DNode123;
					float4 appendResult150 = (float4(_RSmoothnessMod , _GSmoothnessMod , _BSmoothnessMod , _ASmoothnessMod));
					float4 Mod1179 = appendResult150;
					float4 appendResult153 = (float4(_RScatterScale , _GScatterScale , _BScatterScale , _AScatterScale));
					float4 Scatter1179 = appendResult153;
					float UMMS179 = _UnmaskedSmoothnessMod;
					float UMSS179 = _UnmaskedScatterScale;
					float SmoothnessMod179 = 0.0;
					float ScatterMask179 = 0.0;
					SkinMask179( In1179 , Mod1179 , Scatter1179 , UMMS179 , UMSS179 , SmoothnessMod179 , ScatterMask179 );
					float localHeadMask156 = ( 0.0 );
					float4 In1156 = tex2DNode123;
					float2 uv_CFULCMask = IN.ase_texcoord2.xy * _CFULCMask_ST.xy + _CFULCMask_ST.zw;
					float4 In2156 = SAMPLE_TEXTURE2D( _CFULCMask, sampler_Linear_Repeat, uv_CFULCMask );
					float2 uv_EarNeckMask = IN.ase_texcoord2.xy * _EarNeckMask_ST.xy + _EarNeckMask_ST.zw;
					float4 In3156 = SAMPLE_TEXTURE2D( _EarNeckMask, sampler_Linear_Repeat, uv_EarNeckMask );
					float4 Mod1156 = appendResult150;
					float4 appendResult151 = (float4(_CheekSmoothnessMod , _ForeheadSmoothnessMod , _UpperLipSmoothnessMod , _ChinSmoothnessMod));
					float4 Mod2156 = appendResult151;
					float4 appendResult152 = (float4(_NeckSmoothnessMod , _EarSmoothnessMod , 0.0 , 0.0));
					float4 Mod3156 = appendResult152;
					float4 Scatter1156 = appendResult153;
					float4 appendResult154 = (float4(_CheekScatterScale , _ForeheadScatterScale , _UpperLipScatterScale , _ChinScatterScale));
					float4 Scatter2156 = appendResult154;
					float4 appendResult155 = (float4(_NeckScatterScale , _EarScatterScale , 0.0 , 0.0));
					float4 Scatter3156 = appendResult155;
					float UMMS156 = _UnmaskedSmoothnessMod;
					float UMSS156 = _UnmaskedScatterScale;
					float SmoothnessMod156 = 0.0;
					float ScatterMask156 = 0.0;
					HeadMask156( In1156 , In2156 , In3156 , Mod1156 , Mod2156 , Mod3156 , Scatter1156 , Scatter2156 , Scatter3156 , UMMS156 , UMSS156 , SmoothnessMod156 , ScatterMask156 );
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch169 = ScatterMask156;
					#else
					float staticSwitch169 = ScatterMask179;
					#endif
					float microScatteringMultiplier277 = ( _SubsurfaceScale * staticSwitch169 );
					float temp_output_127_0_g110 = ( temp_output_120_0_g110 * ( tex2DNode625.r * microScatteringMultiplier277 ) * _SSSBlurStrength );
					float4 lerpResult142_g110 = lerp( baseColor266 , temp_output_123_0_g110 , ( temp_output_124_0_g110 * temp_output_127_0_g110 ));
					float4 sssDiffuse649 = ( ( ( ( temp_output_144_0_g110 * temp_output_144_0_g110 ) * ( _SSSTransmission * saturate( dotResult106_g110 ) * saturate( ( 1.0 - dotResult111_g110 ) ) ) ) * ( ( ase_lightColor * temp_output_124_0_g110 ) * temp_output_123_0_g110 ) ) + lerpResult142_g110 );
					#ifdef BOOLEAN_USE_SSS_ON
					float4 staticSwitch652 = sssDiffuse649;
					#else
					float4 staticSwitch652 = baseColor266;
					#endif
					
					float2 uv_EmissionMap = IN.ase_texcoord2.xy * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
					

					o.Albedo = staticSwitch652.rgb;
					o.Normal = half3( 0, 0, 1 );
					o.Emission = ( _EmissiveColor * SAMPLE_TEXTURE2D( _EmissionMap, sampler_Linear_Repeat, uv_EmissionMap ) ).rgb;
					o.Alpha = 1;
					half AlphaClipThreshold = 0.5;

					#ifdef _ALPHATEST_ON
						clip( o.Alpha - AlphaClipThreshold );
					#endif

					UnityMetaInput metaIN;
					UNITY_INITIALIZE_OUTPUT(UnityMetaInput, metaIN);
					metaIN.Albedo = o.Albedo;
					metaIN.Emission = o.Emission;
					#ifdef EDITOR_VISUALIZATION
						metaIN.VizUV = IN.vizUV;
						metaIN.LightCoord = IN.lightCoord;
					#endif
					return UnityMetaFragment(metaIN);
				}
				ENDCG
			}

			
			Pass
			{
				
				Name "ShadowCaster"
				Tags { "LightMode"="ShadowCaster" }
				ZWrite On
				ZTest LEqual
				AlphaToMask Off

				CGPROGRAM
				#define ASE_GEOMETRY
				#define ASE_FRAGMENT_NORMAL 0
				#define ASE_RECEIVE_SHADOWS
				#pragma multi_compile_instancing
				#pragma multi_compile _ LOD_FADE_CROSSFADE
				#define ASE_FOG
				#define ASE_VERSION 19908
				#define ASE_USING_SAMPLING_MACROS 1

				#pragma vertex vert
				#pragma fragment frag
				#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
				#pragma multi_compile_shadowcaster
				#ifndef UNITY_PASS_SHADOWCASTER
					#define UNITY_PASS_SHADOWCASTER
				#endif
				#include "HLSLSupport.cginc"
				#if defined( ASE_GEOMETRY ) || defined( ASE_IMPOSTOR )
					#ifndef UNITY_INSTANCED_LOD_FADE
						#define UNITY_INSTANCED_LOD_FADE
					#endif
					#ifndef UNITY_INSTANCED_SH
						#define UNITY_INSTANCED_SH
					#endif
					#ifndef UNITY_INSTANCED_LIGHTMAPSTS
						#define UNITY_INSTANCED_LIGHTMAPSTS
					#endif
				#endif
				#include "UnityShaderVariables.cginc"
				#include "UnityCG.cginc"
				#include "Lighting.cginc"
				#include "UnityPBSLighting.cginc"

				#define ASE_NEEDS_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_NORMAL
				#pragma shader_feature_local ENUM_DISPLACEMENT_MODE_NONE ENUM_DISPLACEMENT_MODE_BUMP ENUM_DISPLACEMENT_MODE_DISPLACEMENT ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP
				#pragma shader_feature_local BOOLEAN_IS_HEAD_ON
				#pragma shader_feature_local ENUM_WRINKLE_MODE_NONE ENUM_WRINKLE_MODE_WRINKLE ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT
				#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#else//ASE Sampling Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
				#endif//ASE Sampling Macros
				


				struct appdata
				{
					float4 vertex : POSITION;
					half3 normal : NORMAL;
					half4 tangent : TANGENT;
					float4 texcoord1 : TEXCOORD1;
					float4 texcoord2 : TEXCOORD2;
					float4 ase_texcoord : TEXCOORD0;
					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct v2f
				{
					V2F_SHADOW_CASTER;
					
					UNITY_VERTEX_INPUT_INSTANCE_ID
					UNITY_VERTEX_OUTPUT_STEREO
				};

				#ifdef UNITY_STANDARD_USE_DITHER_MASK
					sampler3D _DitherMaskLOD;
				#endif
				#ifdef ASE_TESSELLATION
					float _TessPhongStrength;
					float _TessValue;
					float _TessMin;
					float _TessMax;
					float _TessEdgeLength;
					float _TessMaxDisp;
				#endif

				UNITY_DECLARE_TEX2D_NOSAMPLER(_DisplacementMap);
				uniform float4 _DisplacementMap_ST;
				SamplerState sampler_Linear_Repeat;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleDisplacementPack);
				uniform float4 _WrinkleDisplacementPack_ST;
				uniform float _WrinkleDisplacementStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleFlowPack);
				uniform float4 _WrinkleFlowPack_ST;
				uniform float4 _WrinkleValueSet12CL;
				uniform float4 _WrinkleMaskSetArray_ST;
				uniform float4 _WrinkleValueSet1AL;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleMaskSetArray);
				uniform float4 _WrinkleValueSet1BL;
				uniform float4 _WrinkleValueSet1AR;
				uniform float4 _WrinkleValueSet1BR;
				uniform float4 _WrinkleValueSet12CR;
				uniform float4 _WrinkleValueSet2L;
				uniform float4 _WrinkleValueSet2R;
				uniform float4 _WrinkleValueSetBCCB;
				uniform float4 _WrinkleValueSet3DB;
				uniform float4 _WrinkleValueSet3L;
				uniform float4 _WrinkleValueSet3R;
				uniform float _DisplacementLevel;
				uniform float _DisplacementStrength;


				float MinMaxDeltaBlend1245_g102( float In, float In1, float In2, float In3 )
				{
					return max(max(In1, In2), In3) + min(min(In1, In2), In3) + In;
				}
				

				v2f VertexFunction( appdata v  )
				{
					UNITY_SETUP_INSTANCE_ID(v);
					v2f o;
					UNITY_INITIALIZE_OUTPUT(v2f,o);
					UNITY_TRANSFER_INSTANCE_ID(v,o);
					UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

					float3 _Vector0 = float3(0,0,0);
					float2 uv_DisplacementMap = v.ase_texcoord.xy * _DisplacementMap_ST.xy + _DisplacementMap_ST.zw;
					float displacementMap590 = SAMPLE_TEXTURE2D_LOD( _DisplacementMap, sampler_Linear_Repeat, uv_DisplacementMap, 0.0 ).r;
					float displacement229_g102 = displacementMap590;
					float In245_g102 = displacement229_g102;
					float2 uv_WrinkleDisplacementPack = v.ase_texcoord.xy * _WrinkleDisplacementPack_ST.xy + _WrinkleDisplacementPack_ST.zw;
					float4 tex2DNode538 = SAMPLE_TEXTURE2D_LOD( _WrinkleDisplacementPack, sampler_Linear_Repeat, uv_WrinkleDisplacementPack, 0.0 );
					float displacementStrength234_g102 = _WrinkleDisplacementStrength;
					float2 uv_WrinkleFlowPack = v.ase_texcoord.xy * _WrinkleFlowPack_ST.xy + _WrinkleFlowPack_ST.zw;
					float4 tex2DNode475 = SAMPLE_TEXTURE2D_LOD( _WrinkleFlowPack, sampler_Linear_Repeat, uv_WrinkleFlowPack, 0.0 );
					float2 texCoord10_g102 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
					float temp_output_1_0_g104 = 0.49;
					float leftMask27_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g104 ) / ( 0.51 - temp_output_1_0_g104 ) ) );
					float4 break107_g102 = _WrinkleValueSet12CL;
					float2 appendResult112_g102 = (float2(break107_g102.x , break107_g102.y));
					float2 uv_WrinkleMaskSetArray = v.ase_texcoord.xy;
					float4 break109_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,4.0), 0.0 );
					float2 appendResult115_g102 = (float2(break109_g102.x , break109_g102.y));
					float dotResult121_g102 = dot( appendResult112_g102 , appendResult115_g102 );
					float value1CLeft135_g102 = dotResult121_g102;
					float4 maskSet1A214_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,0.0), 0.0 );
					float dotResult29_g102 = dot( _WrinkleValueSet1AL , maskSet1A214_g102 );
					float4 temp_output_16_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,1.0), 0.0 );
					float dotResult35_g102 = dot( _WrinkleValueSet1BL , temp_output_16_0_g102 );
					float dotResult30_g102 = dot( maskSet1A214_g102 , _WrinkleValueSet1AR );
					float dotResult36_g102 = dot( temp_output_16_0_g102 , _WrinkleValueSet1BR );
					float4 break108_g102 = _WrinkleValueSet12CR;
					float2 appendResult117_g102 = (float2(break108_g102.x , break108_g102.y));
					float dotResult122_g102 = dot( appendResult115_g102 , appendResult117_g102 );
					float value1CRight136_g102 = dotResult122_g102;
					float temp_output_1_0_g103 = 0.51;
					float rightMask28_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g103 ) / ( 0.49 - temp_output_1_0_g103 ) ) );
					float temp_output_16_0_g105 = ( ( leftMask27_g102 * ( value1CLeft135_g102 + dotResult29_g102 + dotResult35_g102 ) ) + ( ( dotResult30_g102 + dotResult36_g102 + value1CRight136_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g105 = ( saturate( ( tex2DNode475.r + temp_output_16_0_g105 ) ) * temp_output_16_0_g105 );
					float In1245_g102 = ( ( tex2DNode538.r - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g105 );
					float2 appendResult113_g102 = (float2(break107_g102.z , break107_g102.w));
					float2 appendResult114_g102 = (float2(break109_g102.z , break109_g102.w));
					float dotResult123_g102 = dot( appendResult113_g102 , appendResult114_g102 );
					float value2CLeft137_g102 = dotResult123_g102;
					float4 temp_output_17_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,2.0), 0.0 );
					float dotResult41_g102 = dot( _WrinkleValueSet2L , temp_output_17_0_g102 );
					float dotResult42_g102 = dot( temp_output_17_0_g102 , _WrinkleValueSet2R );
					float2 appendResult116_g102 = (float2(break108_g102.z , break108_g102.w));
					float dotResult124_g102 = dot( appendResult114_g102 , appendResult116_g102 );
					float value2CRight138_g102 = dotResult124_g102;
					float temp_output_16_0_g106 = ( ( leftMask27_g102 * ( value2CLeft137_g102 + dotResult41_g102 ) ) + ( ( dotResult42_g102 + value2CRight138_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g106 = ( saturate( ( tex2DNode475.g + temp_output_16_0_g106 ) ) * temp_output_16_0_g106 );
					float In2245_g102 = ( ( tex2DNode538.g - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g106 );
					float4 break211_g102 = _WrinkleValueSetBCCB;
					float valueBCCLeft217_g102 = ( break211_g102.x * maskSet1A214_g102.y );
					float4 break118_g102 = _WrinkleValueSet3DB;
					float2 appendResult120_g102 = (float2(break118_g102.x , break118_g102.y));
					float dotResult127_g102 = dot( appendResult120_g102 , appendResult115_g102 );
					float value3DLeft129_g102 = dotResult127_g102;
					float4 temp_output_18_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,3.0), 0.0 );
					float dotResult47_g102 = dot( _WrinkleValueSet3L , temp_output_18_0_g102 );
					float dotResult48_g102 = dot( temp_output_18_0_g102 , _WrinkleValueSet3R );
					float2 appendResult119_g102 = (float2(break118_g102.z , break118_g102.w));
					float dotResult128_g102 = dot( appendResult115_g102 , appendResult119_g102 );
					float value3DRight130_g102 = dotResult128_g102;
					float valueBCCRight219_g102 = ( maskSet1A214_g102.y * break211_g102.y );
					float temp_output_16_0_g107 = ( ( leftMask27_g102 * ( valueBCCLeft217_g102 + value3DLeft129_g102 + dotResult47_g102 ) ) + ( ( dotResult48_g102 + value3DRight130_g102 + valueBCCRight219_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g107 = ( saturate( ( tex2DNode475.b + temp_output_16_0_g107 ) ) * temp_output_16_0_g107 );
					float In3245_g102 = ( ( tex2DNode538.b - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1245_g102 = MinMaxDeltaBlend1245_g102( In245_g102 , In1245_g102 , In2245_g102 , In3245_g102 );
					float displacementWrinkle594 = localMinMaxDeltaBlend1245_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch599 = displacementWrinkle594;
					#else
					float staticSwitch599 = displacementMap590;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch600 = staticSwitch599;
					#else
					float staticSwitch600 = displacementMap590;
					#endif
					float temp_output_602_0 = ( staticSwitch600 - _DisplacementLevel );
					float3 temp_output_608_0 = ( ( temp_output_602_0 * _DisplacementStrength ) * v.normal );
					#if defined( ENUM_DISPLACEMENT_MODE_NONE )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_BUMP )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPLACEMENT )
					float3 staticSwitch595 = temp_output_608_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP )
					float3 staticSwitch595 = temp_output_608_0;
					#else
					float3 staticSwitch595 = _Vector0;
					#endif
					

					#ifdef ASE_ABSOLUTE_VERTEX_POS
						float3 defaultVertexValue = v.vertex.xyz;
					#else
						float3 defaultVertexValue = float3(0, 0, 0);
					#endif
					float3 vertexValue = staticSwitch595;
					#ifdef ASE_ABSOLUTE_VERTEX_POS
						v.vertex.xyz = vertexValue;
					#else
						v.vertex.xyz += vertexValue;
					#endif
					v.vertex.w = 1;
					v.normal = v.normal;
					v.tangent = v.tangent;

				#if defined( ASE_IMPOSTOR )
					// Disable "Normal Bias" because we're rendering billboard impostors and there's no vertex normals.
					unity_LightShadowBias.z = 0;
				#endif

					TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
					return o;
				}

				#if defined(ASE_TESSELLATION)
				struct VertexControl
				{
					float4 vertex : INTERNALTESSPOS;
					half4 tangent : TANGENT;
					half3 normal : NORMAL;
					float4 texcoord1 : TEXCOORD1;
					float4 texcoord2 : TEXCOORD2;
					float4 ase_texcoord : TEXCOORD0;

					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct TessellationFactors
				{
					float edge[3] : SV_TessFactor;
					float inside : SV_InsideTessFactor;
				};

				VertexControl vert ( appdata v )
				{
					VertexControl o;
					UNITY_SETUP_INSTANCE_ID(v);
					UNITY_TRANSFER_INSTANCE_ID(v, o);
					o.vertex = v.vertex;
					o.tangent = v.tangent;
					o.normal = v.normal;
					o.texcoord1 = v.texcoord1;
					o.texcoord2 = v.texcoord2;
					o.ase_texcoord = v.ase_texcoord;
					return o;
				}

				TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
				{
					TessellationFactors o;
					float4 tf = 1;
					float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
					float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
					#if defined(ASE_FIXED_TESSELLATION)
					tf = FixedTess( tessValue );
					#elif defined(ASE_DISTANCE_TESSELLATION)
					tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
					#elif defined(ASE_LENGTH_TESSELLATION)
					tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
					#elif defined(ASE_LENGTH_CULL_TESSELLATION)
					tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
					#endif
					o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
					return o;
				}

				[domain("tri")]
				[partitioning("fractional_odd")]
				[outputtopology("triangle_cw")]
				[patchconstantfunc("TessellationFunction")]
				[outputcontrolpoints(3)]
				VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
				{
				   return patch[id];
				}

				[domain("tri")]
				v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
				{
					appdata o = (appdata) 0;
					o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
					o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
					o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
					o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
					o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
					o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
					#if defined(ASE_PHONG_TESSELLATION)
					float3 pp[3];
					for (int i = 0; i < 3; ++i)
						pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
					float phongStrength = _TessPhongStrength;
					o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
					#endif
					UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
					return VertexFunction(o);
				}
				#else
				v2f vert( appdata v )
				{
					return VertexFunction( v );
				}
				#endif

				half4 frag( v2f IN 
							#if defined( ASE_DEPTH_WRITE_ON )
								, out float outputDepth : SV_Depth
							#endif
							) : SV_Target
				{
					UNITY_SETUP_INSTANCE_ID(IN);

					#ifdef LOD_FADE_CROSSFADE
						UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
					#endif

					#if defined(ASE_LIGHTING_SIMPLE)
						SurfaceOutput o = (SurfaceOutput)0;
					#else
						#if defined(_SPECULAR_SETUP)
							SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
						#else
							SurfaceOutputStandard o = (SurfaceOutputStandard)0;
						#endif
						o.Occlusion = 1;
					#endif

					

					o.Normal = half3( 0, 0, 1 );

					o.Alpha = 1;
					half AlphaClipThreshold = 0.5;
					half AlphaClipThresholdShadow = 0.5;

					#if defined( ASE_DEPTH_WRITE_ON )
						float DeviceDepth = IN.pos.z;
					#endif

					#ifdef _ALPHATEST_SHADOW_ON
						if (unity_LightShadowBias.z != 0.0)
							clip(o.Alpha - AlphaClipThresholdShadow);
						#ifdef _ALPHATEST_ON
						else
							clip(o.Alpha - AlphaClipThreshold);
						#endif
					#else
						#ifdef _ALPHATEST_ON
							clip(o.Alpha - AlphaClipThreshold);
						#endif
					#endif

					#ifdef UNITY_STANDARD_USE_DITHER_MASK
						half alphaRef = tex3D(_DitherMaskLOD, float3(IN.pos.xy*0.25,o.Alpha*0.9375)).a;
						clip(alphaRef - 0.01);
					#endif

					#if defined( ASE_DEPTH_WRITE_ON )
						outputDepth = DeviceDepth;
					#endif

					SHADOW_CASTER_FRAGMENT(IN)
				}
			ENDCG
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			ZWrite On

			CGPROGRAM
				#define ASE_GEOMETRY
				#define ASE_FRAGMENT_NORMAL 0
				#define ASE_RECEIVE_SHADOWS
				#pragma multi_compile_instancing
				#pragma multi_compile _ LOD_FADE_CROSSFADE
				#define ASE_FOG
				#define ASE_VERSION 19908
				#define ASE_USING_SAMPLING_MACROS 1

				#pragma vertex vert
				#pragma fragment frag
				#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2

				#pragma multi_compile_fwdbase
				#ifndef UNITY_PASS_FORWARDBASE
					#define UNITY_PASS_FORWARDBASE
				#endif
				#include "HLSLSupport.cginc"
				#if defined( ASE_GEOMETRY ) || defined( ASE_IMPOSTOR )
					#ifndef UNITY_INSTANCED_LOD_FADE
						#define UNITY_INSTANCED_LOD_FADE
					#endif
					#ifndef UNITY_INSTANCED_SH
						#define UNITY_INSTANCED_SH
					#endif
					#ifndef UNITY_INSTANCED_LIGHTMAPSTS
						#define UNITY_INSTANCED_LIGHTMAPSTS
					#endif
				#endif
				#include "UnityShaderVariables.cginc"
				#include "UnityCG.cginc"
				#include "Lighting.cginc"
				#include "UnityPBSLighting.cginc"
				#include "AutoLight.cginc"

				#define ASE_NEEDS_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_NORMAL
				#pragma shader_feature_local ENUM_DISPLACEMENT_MODE_NONE ENUM_DISPLACEMENT_MODE_BUMP ENUM_DISPLACEMENT_MODE_DISPLACEMENT ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP
				#pragma shader_feature_local BOOLEAN_IS_HEAD_ON
				#pragma shader_feature_local ENUM_WRINKLE_MODE_NONE ENUM_WRINKLE_MODE_WRINKLE ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT
				#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#else//ASE Sampling Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
				#endif//ASE Sampling Macros
				


				int _ObjectId;
				int _PassValue;

				struct appdata
				{
					float4 vertex : POSITION;
					half3 normal : NORMAL;
					half4 tangent : TANGENT;
					float4 ase_texcoord : TEXCOORD0;
					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct v2f
				{
					float4 pos : SV_POSITION;
					float4 worldPos : TEXCOORD0; // xyz = positionWS
					half3 normalWS : TEXCOORD1;
					
					UNITY_VERTEX_INPUT_INSTANCE_ID
					UNITY_VERTEX_OUTPUT_STEREO
				};

				#ifdef ASE_TESSELLATION
					float _TessPhongStrength;
					float _TessValue;
					float _TessMin;
					float _TessMax;
					float _TessEdgeLength;
					float _TessMaxDisp;
				#endif

				UNITY_DECLARE_TEX2D_NOSAMPLER(_DisplacementMap);
				uniform float4 _DisplacementMap_ST;
				SamplerState sampler_Linear_Repeat;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleDisplacementPack);
				uniform float4 _WrinkleDisplacementPack_ST;
				uniform float _WrinkleDisplacementStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleFlowPack);
				uniform float4 _WrinkleFlowPack_ST;
				uniform float4 _WrinkleValueSet12CL;
				uniform float4 _WrinkleMaskSetArray_ST;
				uniform float4 _WrinkleValueSet1AL;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleMaskSetArray);
				uniform float4 _WrinkleValueSet1BL;
				uniform float4 _WrinkleValueSet1AR;
				uniform float4 _WrinkleValueSet1BR;
				uniform float4 _WrinkleValueSet12CR;
				uniform float4 _WrinkleValueSet2L;
				uniform float4 _WrinkleValueSet2R;
				uniform float4 _WrinkleValueSetBCCB;
				uniform float4 _WrinkleValueSet3DB;
				uniform float4 _WrinkleValueSet3L;
				uniform float4 _WrinkleValueSet3R;
				uniform float _DisplacementLevel;
				uniform float _DisplacementStrength;


				float MinMaxDeltaBlend1245_g102( float In, float In1, float In2, float In3 )
				{
					return max(max(In1, In2), In3) + min(min(In1, In2), In3) + In;
				}
				

				v2f VertexFunction( appdata v  )
				{
					UNITY_SETUP_INSTANCE_ID(v);
					v2f o;
					UNITY_INITIALIZE_OUTPUT(v2f,o);
					UNITY_TRANSFER_INSTANCE_ID(v,o);
					UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

					float3 _Vector0 = float3(0,0,0);
					float2 uv_DisplacementMap = v.ase_texcoord.xy * _DisplacementMap_ST.xy + _DisplacementMap_ST.zw;
					float displacementMap590 = SAMPLE_TEXTURE2D_LOD( _DisplacementMap, sampler_Linear_Repeat, uv_DisplacementMap, 0.0 ).r;
					float displacement229_g102 = displacementMap590;
					float In245_g102 = displacement229_g102;
					float2 uv_WrinkleDisplacementPack = v.ase_texcoord.xy * _WrinkleDisplacementPack_ST.xy + _WrinkleDisplacementPack_ST.zw;
					float4 tex2DNode538 = SAMPLE_TEXTURE2D_LOD( _WrinkleDisplacementPack, sampler_Linear_Repeat, uv_WrinkleDisplacementPack, 0.0 );
					float displacementStrength234_g102 = _WrinkleDisplacementStrength;
					float2 uv_WrinkleFlowPack = v.ase_texcoord.xy * _WrinkleFlowPack_ST.xy + _WrinkleFlowPack_ST.zw;
					float4 tex2DNode475 = SAMPLE_TEXTURE2D_LOD( _WrinkleFlowPack, sampler_Linear_Repeat, uv_WrinkleFlowPack, 0.0 );
					float2 texCoord10_g102 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
					float temp_output_1_0_g104 = 0.49;
					float leftMask27_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g104 ) / ( 0.51 - temp_output_1_0_g104 ) ) );
					float4 break107_g102 = _WrinkleValueSet12CL;
					float2 appendResult112_g102 = (float2(break107_g102.x , break107_g102.y));
					float2 uv_WrinkleMaskSetArray = v.ase_texcoord.xy;
					float4 break109_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,4.0), 0.0 );
					float2 appendResult115_g102 = (float2(break109_g102.x , break109_g102.y));
					float dotResult121_g102 = dot( appendResult112_g102 , appendResult115_g102 );
					float value1CLeft135_g102 = dotResult121_g102;
					float4 maskSet1A214_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,0.0), 0.0 );
					float dotResult29_g102 = dot( _WrinkleValueSet1AL , maskSet1A214_g102 );
					float4 temp_output_16_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,1.0), 0.0 );
					float dotResult35_g102 = dot( _WrinkleValueSet1BL , temp_output_16_0_g102 );
					float dotResult30_g102 = dot( maskSet1A214_g102 , _WrinkleValueSet1AR );
					float dotResult36_g102 = dot( temp_output_16_0_g102 , _WrinkleValueSet1BR );
					float4 break108_g102 = _WrinkleValueSet12CR;
					float2 appendResult117_g102 = (float2(break108_g102.x , break108_g102.y));
					float dotResult122_g102 = dot( appendResult115_g102 , appendResult117_g102 );
					float value1CRight136_g102 = dotResult122_g102;
					float temp_output_1_0_g103 = 0.51;
					float rightMask28_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g103 ) / ( 0.49 - temp_output_1_0_g103 ) ) );
					float temp_output_16_0_g105 = ( ( leftMask27_g102 * ( value1CLeft135_g102 + dotResult29_g102 + dotResult35_g102 ) ) + ( ( dotResult30_g102 + dotResult36_g102 + value1CRight136_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g105 = ( saturate( ( tex2DNode475.r + temp_output_16_0_g105 ) ) * temp_output_16_0_g105 );
					float In1245_g102 = ( ( tex2DNode538.r - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g105 );
					float2 appendResult113_g102 = (float2(break107_g102.z , break107_g102.w));
					float2 appendResult114_g102 = (float2(break109_g102.z , break109_g102.w));
					float dotResult123_g102 = dot( appendResult113_g102 , appendResult114_g102 );
					float value2CLeft137_g102 = dotResult123_g102;
					float4 temp_output_17_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,2.0), 0.0 );
					float dotResult41_g102 = dot( _WrinkleValueSet2L , temp_output_17_0_g102 );
					float dotResult42_g102 = dot( temp_output_17_0_g102 , _WrinkleValueSet2R );
					float2 appendResult116_g102 = (float2(break108_g102.z , break108_g102.w));
					float dotResult124_g102 = dot( appendResult114_g102 , appendResult116_g102 );
					float value2CRight138_g102 = dotResult124_g102;
					float temp_output_16_0_g106 = ( ( leftMask27_g102 * ( value2CLeft137_g102 + dotResult41_g102 ) ) + ( ( dotResult42_g102 + value2CRight138_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g106 = ( saturate( ( tex2DNode475.g + temp_output_16_0_g106 ) ) * temp_output_16_0_g106 );
					float In2245_g102 = ( ( tex2DNode538.g - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g106 );
					float4 break211_g102 = _WrinkleValueSetBCCB;
					float valueBCCLeft217_g102 = ( break211_g102.x * maskSet1A214_g102.y );
					float4 break118_g102 = _WrinkleValueSet3DB;
					float2 appendResult120_g102 = (float2(break118_g102.x , break118_g102.y));
					float dotResult127_g102 = dot( appendResult120_g102 , appendResult115_g102 );
					float value3DLeft129_g102 = dotResult127_g102;
					float4 temp_output_18_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,3.0), 0.0 );
					float dotResult47_g102 = dot( _WrinkleValueSet3L , temp_output_18_0_g102 );
					float dotResult48_g102 = dot( temp_output_18_0_g102 , _WrinkleValueSet3R );
					float2 appendResult119_g102 = (float2(break118_g102.z , break118_g102.w));
					float dotResult128_g102 = dot( appendResult115_g102 , appendResult119_g102 );
					float value3DRight130_g102 = dotResult128_g102;
					float valueBCCRight219_g102 = ( maskSet1A214_g102.y * break211_g102.y );
					float temp_output_16_0_g107 = ( ( leftMask27_g102 * ( valueBCCLeft217_g102 + value3DLeft129_g102 + dotResult47_g102 ) ) + ( ( dotResult48_g102 + value3DRight130_g102 + valueBCCRight219_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g107 = ( saturate( ( tex2DNode475.b + temp_output_16_0_g107 ) ) * temp_output_16_0_g107 );
					float In3245_g102 = ( ( tex2DNode538.b - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1245_g102 = MinMaxDeltaBlend1245_g102( In245_g102 , In1245_g102 , In2245_g102 , In3245_g102 );
					float displacementWrinkle594 = localMinMaxDeltaBlend1245_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch599 = displacementWrinkle594;
					#else
					float staticSwitch599 = displacementMap590;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch600 = staticSwitch599;
					#else
					float staticSwitch600 = displacementMap590;
					#endif
					float temp_output_602_0 = ( staticSwitch600 - _DisplacementLevel );
					float3 temp_output_608_0 = ( ( temp_output_602_0 * _DisplacementStrength ) * v.normal );
					#if defined( ENUM_DISPLACEMENT_MODE_NONE )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_BUMP )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPLACEMENT )
					float3 staticSwitch595 = temp_output_608_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP )
					float3 staticSwitch595 = temp_output_608_0;
					#else
					float3 staticSwitch595 = _Vector0;
					#endif
					

					#ifdef ASE_ABSOLUTE_VERTEX_POS
						float3 defaultVertexValue = v.vertex.xyz;
					#else
						float3 defaultVertexValue = float3(0, 0, 0);
					#endif
					float3 vertexValue = staticSwitch595;
					#ifdef ASE_ABSOLUTE_VERTEX_POS
						v.vertex.xyz = vertexValue;
					#else
						v.vertex.xyz += vertexValue;
					#endif
					v.vertex.w = 1;
					v.normal = v.normal;
					v.tangent = v.tangent;

					float3 positionWS = mul( unity_ObjectToWorld, v.vertex ).xyz;
					half3 normalWS = UnityObjectToWorldNormal( v.normal );

					o.pos = UnityObjectToClipPos( v.vertex );
					o.worldPos.xyz = positionWS;
					o.normalWS = normalWS;
					return o;
				}

				#if defined(ASE_TESSELLATION)
				struct VertexControl
				{
					float4 vertex : INTERNALTESSPOS;
					half3 normal : NORMAL;
					float4 ase_texcoord : TEXCOORD0;

					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct TessellationFactors
				{
					float edge[3] : SV_TessFactor;
					float inside : SV_InsideTessFactor;
				};

				VertexControl vert ( appdata v )
				{
					VertexControl o;
					UNITY_SETUP_INSTANCE_ID(v);
					UNITY_TRANSFER_INSTANCE_ID(v, o);
					o.vertex = v.vertex;
					o.normal = v.normal;
					o.ase_texcoord = v.ase_texcoord;
					return o;
				}

				TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
				{
					TessellationFactors o;
					float4 tf = 1;
					float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
					float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
					#if defined(ASE_FIXED_TESSELLATION)
					tf = FixedTess( tessValue );
					#elif defined(ASE_DISTANCE_TESSELLATION)
					tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
					#elif defined(ASE_LENGTH_TESSELLATION)
					tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
					#elif defined(ASE_LENGTH_CULL_TESSELLATION)
					tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
					#endif
					o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
					return o;
				}

				[domain("tri")]
				[partitioning("fractional_odd")]
				[outputtopology("triangle_cw")]
				[patchconstantfunc("TessellationFunction")]
				[outputcontrolpoints(3)]
				VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
				{
				   return patch[id];
				}

				[domain("tri")]
				v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
				{
					appdata o = (appdata) 0;
					o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
					o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
					o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
					#if defined(ASE_PHONG_TESSELLATION)
					float3 pp[3];
					for (int i = 0; i < 3; ++i)
						pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
					float phongStrength = _TessPhongStrength;
					o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
					#endif
					UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
					return VertexFunction(o);
				}
				#else
				v2f vert ( appdata v )
				{
					return VertexFunction( v );
				}
				#endif

				half4 frag( v2f IN 
							#if defined( ASE_DEPTH_WRITE_ON )
								, out float outputDepth : SV_Depth
							#endif
							) : SV_Target
				{
					UNITY_SETUP_INSTANCE_ID(IN);

					#ifdef LOD_FADE_CROSSFADE
						UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
					#endif

					

					half Alpha = 1;
					half AlphaClipThreshold = 0.5;

					#if defined( ASE_DEPTH_WRITE_ON )
						float DeviceDepth = IN.pos.z;
					#endif

					#ifdef _ALPHATEST_ON
						clip( Alpha - AlphaClipThreshold );
					#endif

					#if defined( ASE_DEPTH_WRITE_ON )
						outputDepth = DeviceDepth;
					#endif

					return float4( _ObjectId, _PassValue, 1.0, 1.0 );
				}
			ENDCG
		}

		
		Pass
		{
			
			Name "ScenePickingPass"
			Tags { "LightMode"="ScenePickingPass" }

			ZWrite On

			CGPROGRAM
				#define ASE_GEOMETRY
				#define ASE_FRAGMENT_NORMAL 0
				#define ASE_RECEIVE_SHADOWS
				#pragma multi_compile_instancing
				#pragma multi_compile _ LOD_FADE_CROSSFADE
				#define ASE_FOG
				#define ASE_VERSION 19908
				#define ASE_USING_SAMPLING_MACROS 1

				#pragma vertex vert
				#pragma fragment frag
				#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2

				#pragma multi_compile_fwdbase
				#ifndef UNITY_PASS_FORWARDBASE
					#define UNITY_PASS_FORWARDBASE
				#endif
				#include "HLSLSupport.cginc"
				#if defined( ASE_GEOMETRY ) || defined( ASE_IMPOSTOR )
					#ifndef UNITY_INSTANCED_LOD_FADE
						#define UNITY_INSTANCED_LOD_FADE
					#endif
					#ifndef UNITY_INSTANCED_SH
						#define UNITY_INSTANCED_SH
					#endif
					#ifndef UNITY_INSTANCED_LIGHTMAPSTS
						#define UNITY_INSTANCED_LIGHTMAPSTS
					#endif
				#endif
				#include "UnityShaderVariables.cginc"
				#include "UnityCG.cginc"
				#include "Lighting.cginc"
				#include "UnityPBSLighting.cginc"
				#include "AutoLight.cginc"

				#define ASE_NEEDS_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_TEXTURE_COORDINATES0
				#define ASE_NEEDS_VERT_NORMAL
				#pragma shader_feature_local ENUM_DISPLACEMENT_MODE_NONE ENUM_DISPLACEMENT_MODE_BUMP ENUM_DISPLACEMENT_MODE_DISPLACEMENT ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP
				#pragma shader_feature_local BOOLEAN_IS_HEAD_ON
				#pragma shader_feature_local ENUM_WRINKLE_MODE_NONE ENUM_WRINKLE_MODE_WRINKLE ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT
				#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
				#else//ASE Sampling Macros
				#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
				#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
				#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
				#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
				#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
				#endif//ASE Sampling Macros
				


				float4 _SelectionID;

				struct appdata
				{
					float4 vertex : POSITION;
					half3 normal : NORMAL;
					half4 tangent : TANGENT;
					float4 ase_texcoord : TEXCOORD0;
					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct v2f
				{
					float4 pos : SV_POSITION;
					float4 worldPos : TEXCOORD0; // xyz = positionWS
					half3 normalWS : TEXCOORD1;
					
					UNITY_VERTEX_INPUT_INSTANCE_ID
					UNITY_VERTEX_OUTPUT_STEREO
				};

				#ifdef ASE_TESSELLATION
					float _TessPhongStrength;
					float _TessValue;
					float _TessMin;
					float _TessMax;
					float _TessEdgeLength;
					float _TessMaxDisp;
				#endif

				UNITY_DECLARE_TEX2D_NOSAMPLER(_DisplacementMap);
				uniform float4 _DisplacementMap_ST;
				SamplerState sampler_Linear_Repeat;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleDisplacementPack);
				uniform float4 _WrinkleDisplacementPack_ST;
				uniform float _WrinkleDisplacementStrength;
				UNITY_DECLARE_TEX2D_NOSAMPLER(_WrinkleFlowPack);
				uniform float4 _WrinkleFlowPack_ST;
				uniform float4 _WrinkleValueSet12CL;
				uniform float4 _WrinkleMaskSetArray_ST;
				uniform float4 _WrinkleValueSet1AL;
				UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(_WrinkleMaskSetArray);
				uniform float4 _WrinkleValueSet1BL;
				uniform float4 _WrinkleValueSet1AR;
				uniform float4 _WrinkleValueSet1BR;
				uniform float4 _WrinkleValueSet12CR;
				uniform float4 _WrinkleValueSet2L;
				uniform float4 _WrinkleValueSet2R;
				uniform float4 _WrinkleValueSetBCCB;
				uniform float4 _WrinkleValueSet3DB;
				uniform float4 _WrinkleValueSet3L;
				uniform float4 _WrinkleValueSet3R;
				uniform float _DisplacementLevel;
				uniform float _DisplacementStrength;


				float MinMaxDeltaBlend1245_g102( float In, float In1, float In2, float In3 )
				{
					return max(max(In1, In2), In3) + min(min(In1, In2), In3) + In;
				}
				

				v2f VertexFunction( appdata v  )
				{
					UNITY_SETUP_INSTANCE_ID(v);
					v2f o;
					UNITY_INITIALIZE_OUTPUT(v2f,o);
					UNITY_TRANSFER_INSTANCE_ID(v,o);
					UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

					float3 _Vector0 = float3(0,0,0);
					float2 uv_DisplacementMap = v.ase_texcoord.xy * _DisplacementMap_ST.xy + _DisplacementMap_ST.zw;
					float displacementMap590 = SAMPLE_TEXTURE2D_LOD( _DisplacementMap, sampler_Linear_Repeat, uv_DisplacementMap, 0.0 ).r;
					float displacement229_g102 = displacementMap590;
					float In245_g102 = displacement229_g102;
					float2 uv_WrinkleDisplacementPack = v.ase_texcoord.xy * _WrinkleDisplacementPack_ST.xy + _WrinkleDisplacementPack_ST.zw;
					float4 tex2DNode538 = SAMPLE_TEXTURE2D_LOD( _WrinkleDisplacementPack, sampler_Linear_Repeat, uv_WrinkleDisplacementPack, 0.0 );
					float displacementStrength234_g102 = _WrinkleDisplacementStrength;
					float2 uv_WrinkleFlowPack = v.ase_texcoord.xy * _WrinkleFlowPack_ST.xy + _WrinkleFlowPack_ST.zw;
					float4 tex2DNode475 = SAMPLE_TEXTURE2D_LOD( _WrinkleFlowPack, sampler_Linear_Repeat, uv_WrinkleFlowPack, 0.0 );
					float2 texCoord10_g102 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
					float temp_output_1_0_g104 = 0.49;
					float leftMask27_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g104 ) / ( 0.51 - temp_output_1_0_g104 ) ) );
					float4 break107_g102 = _WrinkleValueSet12CL;
					float2 appendResult112_g102 = (float2(break107_g102.x , break107_g102.y));
					float2 uv_WrinkleMaskSetArray = v.ase_texcoord.xy;
					float4 break109_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,4.0), 0.0 );
					float2 appendResult115_g102 = (float2(break109_g102.x , break109_g102.y));
					float dotResult121_g102 = dot( appendResult112_g102 , appendResult115_g102 );
					float value1CLeft135_g102 = dotResult121_g102;
					float4 maskSet1A214_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,0.0), 0.0 );
					float dotResult29_g102 = dot( _WrinkleValueSet1AL , maskSet1A214_g102 );
					float4 temp_output_16_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,1.0), 0.0 );
					float dotResult35_g102 = dot( _WrinkleValueSet1BL , temp_output_16_0_g102 );
					float dotResult30_g102 = dot( maskSet1A214_g102 , _WrinkleValueSet1AR );
					float dotResult36_g102 = dot( temp_output_16_0_g102 , _WrinkleValueSet1BR );
					float4 break108_g102 = _WrinkleValueSet12CR;
					float2 appendResult117_g102 = (float2(break108_g102.x , break108_g102.y));
					float dotResult122_g102 = dot( appendResult115_g102 , appendResult117_g102 );
					float value1CRight136_g102 = dotResult122_g102;
					float temp_output_1_0_g103 = 0.51;
					float rightMask28_g102 = saturate( ( ( texCoord10_g102.x - temp_output_1_0_g103 ) / ( 0.49 - temp_output_1_0_g103 ) ) );
					float temp_output_16_0_g105 = ( ( leftMask27_g102 * ( value1CLeft135_g102 + dotResult29_g102 + dotResult35_g102 ) ) + ( ( dotResult30_g102 + dotResult36_g102 + value1CRight136_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g105 = ( saturate( ( tex2DNode475.r + temp_output_16_0_g105 ) ) * temp_output_16_0_g105 );
					float In1245_g102 = ( ( tex2DNode538.r - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g105 );
					float2 appendResult113_g102 = (float2(break107_g102.z , break107_g102.w));
					float2 appendResult114_g102 = (float2(break109_g102.z , break109_g102.w));
					float dotResult123_g102 = dot( appendResult113_g102 , appendResult114_g102 );
					float value2CLeft137_g102 = dotResult123_g102;
					float4 temp_output_17_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,2.0), 0.0 );
					float dotResult41_g102 = dot( _WrinkleValueSet2L , temp_output_17_0_g102 );
					float dotResult42_g102 = dot( temp_output_17_0_g102 , _WrinkleValueSet2R );
					float2 appendResult116_g102 = (float2(break108_g102.z , break108_g102.w));
					float dotResult124_g102 = dot( appendResult114_g102 , appendResult116_g102 );
					float value2CRight138_g102 = dotResult124_g102;
					float temp_output_16_0_g106 = ( ( leftMask27_g102 * ( value2CLeft137_g102 + dotResult41_g102 ) ) + ( ( dotResult42_g102 + value2CRight138_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g106 = ( saturate( ( tex2DNode475.g + temp_output_16_0_g106 ) ) * temp_output_16_0_g106 );
					float In2245_g102 = ( ( tex2DNode538.g - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g106 );
					float4 break211_g102 = _WrinkleValueSetBCCB;
					float valueBCCLeft217_g102 = ( break211_g102.x * maskSet1A214_g102.y );
					float4 break118_g102 = _WrinkleValueSet3DB;
					float2 appendResult120_g102 = (float2(break118_g102.x , break118_g102.y));
					float dotResult127_g102 = dot( appendResult120_g102 , appendResult115_g102 );
					float value3DLeft129_g102 = dotResult127_g102;
					float4 temp_output_18_0_g102 = SAMPLE_TEXTURE2D_ARRAY_LOD( _WrinkleMaskSetArray, sampler_Linear_Repeat, float3(uv_WrinkleMaskSetArray,3.0), 0.0 );
					float dotResult47_g102 = dot( _WrinkleValueSet3L , temp_output_18_0_g102 );
					float dotResult48_g102 = dot( temp_output_18_0_g102 , _WrinkleValueSet3R );
					float2 appendResult119_g102 = (float2(break118_g102.z , break118_g102.w));
					float dotResult128_g102 = dot( appendResult115_g102 , appendResult119_g102 );
					float value3DRight130_g102 = dotResult128_g102;
					float valueBCCRight219_g102 = ( maskSet1A214_g102.y * break211_g102.y );
					float temp_output_16_0_g107 = ( ( leftMask27_g102 * ( valueBCCLeft217_g102 + value3DLeft129_g102 + dotResult47_g102 ) ) + ( ( dotResult48_g102 + value3DRight130_g102 + valueBCCRight219_g102 ) * rightMask28_g102 ) );
					float temp_output_23_0_g107 = ( saturate( ( tex2DNode475.b + temp_output_16_0_g107 ) ) * temp_output_16_0_g107 );
					float In3245_g102 = ( ( tex2DNode538.b - displacement229_g102 ) * displacementStrength234_g102 * temp_output_23_0_g107 );
					float localMinMaxDeltaBlend1245_g102 = MinMaxDeltaBlend1245_g102( In245_g102 , In1245_g102 , In2245_g102 , In3245_g102 );
					float displacementWrinkle594 = localMinMaxDeltaBlend1245_g102;
					#if defined( ENUM_WRINKLE_MODE_NONE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE )
					float staticSwitch599 = displacementMap590;
					#elif defined( ENUM_WRINKLE_MODE_WRINKLE_DISPLACEMENT )
					float staticSwitch599 = displacementWrinkle594;
					#else
					float staticSwitch599 = displacementMap590;
					#endif
					#ifdef BOOLEAN_IS_HEAD_ON
					float staticSwitch600 = staticSwitch599;
					#else
					float staticSwitch600 = displacementMap590;
					#endif
					float temp_output_602_0 = ( staticSwitch600 - _DisplacementLevel );
					float3 temp_output_608_0 = ( ( temp_output_602_0 * _DisplacementStrength ) * v.normal );
					#if defined( ENUM_DISPLACEMENT_MODE_NONE )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_BUMP )
					float3 staticSwitch595 = _Vector0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPLACEMENT )
					float3 staticSwitch595 = temp_output_608_0;
					#elif defined( ENUM_DISPLACEMENT_MODE_DISPACEMENT_BUMP )
					float3 staticSwitch595 = temp_output_608_0;
					#else
					float3 staticSwitch595 = _Vector0;
					#endif
					

					#ifdef ASE_ABSOLUTE_VERTEX_POS
						float3 defaultVertexValue = v.vertex.xyz;
					#else
						float3 defaultVertexValue = float3(0, 0, 0);
					#endif
					float3 vertexValue = staticSwitch595;
					#ifdef ASE_ABSOLUTE_VERTEX_POS
						v.vertex.xyz = vertexValue;
					#else
						v.vertex.xyz += vertexValue;
					#endif
					v.vertex.w = 1;
					v.normal = v.normal;
					v.tangent = v.tangent;

					float3 positionWS = mul( unity_ObjectToWorld, v.vertex ).xyz;
					half3 normalWS = UnityObjectToWorldNormal( v.normal );

					o.pos = UnityObjectToClipPos( v.vertex );
					o.worldPos.xyz = positionWS;
					o.normalWS = normalWS;
					return o;
				}

				#if defined(ASE_TESSELLATION)
				struct VertexControl
				{
					float4 vertex : INTERNALTESSPOS;
					half3 normal : NORMAL;
					float4 ase_texcoord : TEXCOORD0;

					UNITY_VERTEX_INPUT_INSTANCE_ID
				};

				struct TessellationFactors
				{
					float edge[3] : SV_TessFactor;
					float inside : SV_InsideTessFactor;
				};

				VertexControl vert ( appdata v )
				{
					VertexControl o;
					UNITY_SETUP_INSTANCE_ID(v);
					UNITY_TRANSFER_INSTANCE_ID(v, o);
					o.vertex = v.vertex;
					o.normal = v.normal;
					o.ase_texcoord = v.ase_texcoord;
					return o;
				}

				TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
				{
					TessellationFactors o;
					float4 tf = 1;
					float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
					float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
					#if defined(ASE_FIXED_TESSELLATION)
					tf = FixedTess( tessValue );
					#elif defined(ASE_DISTANCE_TESSELLATION)
					tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
					#elif defined(ASE_LENGTH_TESSELLATION)
					tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
					#elif defined(ASE_LENGTH_CULL_TESSELLATION)
					tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
					#endif
					o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
					return o;
				}

				[domain("tri")]
				[partitioning("fractional_odd")]
				[outputtopology("triangle_cw")]
				[patchconstantfunc("TessellationFunction")]
				[outputcontrolpoints(3)]
				VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
				{
				   return patch[id];
				}

				[domain("tri")]
				v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
				{
					appdata o = (appdata) 0;
					o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
					o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
					o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
					#if defined(ASE_PHONG_TESSELLATION)
					float3 pp[3];
					for (int i = 0; i < 3; ++i)
						pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
					float phongStrength = _TessPhongStrength;
					o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
					#endif
					UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
					return VertexFunction(o);
				}
				#else
				v2f vert ( appdata v )
				{
					return VertexFunction( v );
				}
				#endif

				half4 frag( v2f IN 
							#if defined( ASE_DEPTH_WRITE_ON )
								, out float outputDepth : SV_Depth
							#endif
							) : SV_Target
				{
					UNITY_SETUP_INSTANCE_ID(IN);

					#ifdef LOD_FADE_CROSSFADE
						UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
					#endif

					

					half Alpha = 1;
					half AlphaClipThreshold = 0.5;

					#if defined( ASE_DEPTH_WRITE_ON )
						float DeviceDepth = IN.pos.z;
					#endif

					#ifdef _ALPHATEST_ON
						clip( Alpha - AlphaClipThreshold );
					#endif

					#if defined( ASE_DEPTH_WRITE_ON )
						outputDepth = DeviceDepth;
					#endif

					return _SelectionID;
				}
			ENDCG
		}
		
	}
	CustomEditor "AmplifyShaderEditor.MaterialInspector"
	
	Fallback Off
}
/*ASEBEGIN
Version=19908
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;213;-2368,-1104;Inherit;False;2741.205;1248.514;;29;525;611;614;61;54;71;612;613;610;52;467;504;57;344;53;466;58;50;62;289;59;51;360;48;503;359;49;60;666;Normal Blending;0.4858491,0.5398334,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;430;-5192.445,-3069.558;Inherit;False;2652.901;2027.358;;74;437;460;457;454;450;449;448;447;446;445;444;443;442;441;440;439;438;436;435;434;471;472;473;475;478;481;488;489;490;491;496;497;498;499;500;538;541;542;543;546;545;544;547;548;549;550;551;556;553;552;554;555;557;558;559;560;561;565;566;567;568;569;571;570;572;573;574;575;576;577;580;591;593;594;Wrinkle System;1,0.5137255,0.7779443,1;0;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;294;-3752.904,2143.511;Inherit;False;1090.966;451.807;;7;31;32;285;286;287;288;485;Mask Map;0.495283,1,0.986145,1;0;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;212;-2208,-2080;Inherit;False;2419.278;802.847;;17;266;72;209;13;281;12;357;14;356;1;11;2;358;464;465;502;667;Base Color;0.495283,1,0.5625787,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;60;-2320,-944;Inherit;False;Property;_NormalStrength;Normal Strength;12;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;31;-3702.905,2255.651;Inherit;True;Property;_MaskMap;Mask Map;2;0;Create;False;0;0;0;False;0;False;None;None;False;gray;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;485;-3685.498,2470.044;Inherit;False;480;mainSamplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;481;-5134.753,-2415.972;Inherit;False;480;mainSamplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;440;-5136,-2288;Inherit;False;359;normalMapScale;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;457;-4512,-2416;Inherit;True;Property;_WrinkleRoughnessPack;Wrinkle Roughness Pack;72;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;gray;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;2;-2144,-1872;Inherit;True;Property;_DiffuseMap;Diffuse Map;0;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;502;-2144,-1664;Inherit;False;480;mainSamplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;49;-1824,-1040;Inherit;True;Property;_NormalMap;Normal Map;11;1;[Normal];Create;True;0;0;0;False;0;False;None;None;True;bump;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;359;-2032,-880;Inherit;False;normalMapScale;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;503;-1808,-816;Inherit;False;480;mainSamplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;32;-3340.386,2257.809;Inherit;True;Property;_TextureSample4;Texture Sample 4;6;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;449;-4224,-2416;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;573;-4688,-2800;Inherit;False;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;574;-4688,-2800;Inherit;False;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;575;-4688,-2800;Inherit;False;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;576;-4688,-2800;Inherit;False;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;577;-4688,-2800;Inherit;False;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;578;-4640,-2528;Inherit;False;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;579;-4640,-2528;Inherit;False;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;580;-4640,-2528;Inherit;False;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;581;-4640,-2096;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;582;-4640,-2096;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;583;-4640,-2096;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;584;-4640,-2064;Inherit;False;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;585;-4640,-2064;Inherit;False;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;586;-4640,-2064;Inherit;False;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1;-1840,-1840;Inherit;True;Property;_TextureSample0;Texture Sample 0;0;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;48;-1488,-960;Inherit;True;Property;_TextureSample5;Texture Sample 5;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;288;-2905.118,2479.318;Inherit;False;smoothnessMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;498;-4192,-2352;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;445;-4432,-1488;Inherit;False;Property;_WrinkleValueSet1AL;Wrinkle Value Set 1A Left;76;0;Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;446;-4416,-1456;Inherit;False;Property;_WrinkleValueSet1BL;Wrinkle Value Set 1B Left;77;0;Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;441;-4400,-1424;Inherit;False;Property;_WrinkleValueSet2L;Wrinkle Value Set 2 Left;78;0;Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;442;-4384,-1392;Inherit;False;Property;_WrinkleValueSet3L;Wrinkle Value Set 3 Left;79;0;Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;471;-4368,-1360;Inherit;False;Property;_WrinkleValueSet12CL;Wrinkle Value Set 12C Left;80;0;Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;447;-4112,-1488;Inherit;False;Property;_WrinkleValueSet1AR;Wrinkle Value Set 1A Right;81;0;Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;448;-4096,-1456;Inherit;False;Property;_WrinkleValueSet1BR;Wrinkle Value Set 1B Right;82;0;Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;443;-4080,-1424;Inherit;False;Property;_WrinkleValueSet2R;Wrinkle Value Set 2 Right;83;0;Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;444;-4064,-1392;Inherit;False;Property;_WrinkleValueSet3R;Wrinkle Value Set 3 Right;84;0;Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;472;-4048,-1360;Inherit;False;Property;_WrinkleValueSet12CR;Wrinkle Value Set 12C Right;85;0;Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;473;-3760,-1488;Inherit;False;Property;_WrinkleValueSet3DB;Wrinkle Value Set 3D Both;86;0;Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;478;-3744,-1456;Inherit;False;Property;_WrinkleValueSetBCCB;Wrinkle Value Set BCC Both;87;0;Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;475;-4352,-1760;Inherit;True;Property;_WrinkleFlowPack;Wrinkle Flow Pack;74;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;450;-4400,-3008;Inherit;True;Property;_WrinkleMaskSetArray;Wrinkle Mask Set Array;70;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;LockedToTexture2DArray;False;Object;-1;Auto;Texture2DArray;False;8;0;SAMPLER2DARRAY;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;488;-4384,-2976;Inherit;True;Property;_WrinkleMaskSetArray;Wrinkle Mask Set Array;56;0;Fetch;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;LockedToTexture2DArray;False;Object;-1;Auto;Texture2DArray;False;8;0;SAMPLER2DARRAY;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;1;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;489;-4368,-2944;Inherit;True;Property;_WrinkleMaskSetArray;Wrinkle Mask Set Array;56;0;Fetch;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;LockedToTexture2DArray;False;Object;-1;Auto;Texture2DArray;False;8;0;SAMPLER2DARRAY;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;490;-4352,-2912;Inherit;True;Property;_WrinkleMaskSetArray;Wrinkle Mask Set Array;57;0;Fetch;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;LockedToTexture2DArray;False;Object;-1;Auto;Texture2DArray;False;8;0;SAMPLER2DARRAY;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;3;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;491;-4336,-2880;Inherit;True;Property;_WrinkleMaskSetArray;Wrinkle Mask Set Array;56;0;Fetch;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;LockedToTexture2DArray;False;Object;-1;Auto;Texture2DArray;False;8;0;SAMPLER2DARRAY;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;4;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;454;-4368,-2672;Inherit;True;Property;_WrinkleDiffuseArray;Wrinkle Diffuse Array;71;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;LockedToTexture2DArray;False;Object;-1;Auto;Texture2DArray;False;8;0;SAMPLER2DARRAY;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;496;-4352,-2640;Inherit;True;Property;_WrinkleDiffuseArray;Wrinkle Diffuse Array;59;0;Fetch;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;LockedToTexture2DArray;False;Object;-1;Auto;Texture2DArray;False;8;0;SAMPLER2DARRAY;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;1;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;497;-4336,-2608;Inherit;True;Property;_WrinkleDiffuseArray;Wrinkle Diffuse Array;57;0;Fetch;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;LockedToTexture2DArray;False;Object;-1;Auto;Texture2DArray;False;8;0;SAMPLER2DARRAY;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;460;-4384,-2208;Inherit;True;Property;_WrinkleNormalArray;Wrinkle Normal Array;73;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;bump;LockedToTexture2DArray;True;Object;-1;Auto;Texture2DArray;False;8;0;SAMPLER2DARRAY;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;499;-4368,-2176;Inherit;True;Property;_WrinkleNormalArray;Wrinkle Normal Array;62;1;[Normal];Fetch;True;0;0;0;False;0;False;-1;None;None;True;0;False;bump;LockedToTexture2DArray;True;Object;-1;Auto;Texture2DArray;False;8;0;SAMPLER2DARRAY;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;1;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;500;-4352,-2144;Inherit;True;Property;_WrinkleNormalArray;Wrinkle Normal Array;61;1;[Normal];Fetch;True;0;0;0;False;0;False;-1;None;None;True;0;False;bump;LockedToTexture2DArray;True;Object;-1;Auto;Texture2DArray;False;8;0;SAMPLER2DARRAY;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;538;-4352,-1952;Inherit;True;Property;_WrinkleDisplacementPack;Wrinkle Displacement Pack;75;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;linearGrey;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;358;-1504,-1824;Inherit;False;diffuseMap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;360;-1168,-960;Inherit;False;normalMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;547;-3600,-1856;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;548;-3600,-1856;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;549;-3600,-1856;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;550;-3600,-1856;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;551;-3600,-1856;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;553;-3600,-1824;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;552;-3600,-1824;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;554;-3600,-1824;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;555;-3600,-1824;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;556;-3600,-1824;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;557;-3472,-1712;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;558;-3472,-1712;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;562;-3600,-2288;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;563;-3600,-2288;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;564;-3600,-2288;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;559;-3600,-2192;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;560;-3600,-2192;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;561;-3600,-2192;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;546;-3600,-2064;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;545;-3600,-2064;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;544;-3600,-2064;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;541;-3600,-2032;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;542;-3600,-2032;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;543;-3600,-2032;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;565;-3600,-2384;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;566;-3600,-2384;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;567;-3600,-2384;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;568;-3600,-2480;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;569;-3600,-2480;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;571;-3600,-2480;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;570;-3600,-2480;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;572;-3600,-2480;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;434;-3664,-2992;Inherit;False;358;diffuseMap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;435;-3696,-2928;Inherit;False;288;smoothnessMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;436;-3664,-2864;Inherit;False;360;normalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;591;-3696,-2800;Inherit;False;590;displacementMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;593;-3760,-2736;Inherit;False;Property;_WrinkleDisplacementStrength;Wrinkle Displacement Strength;18;0;Create;True;0;0;0;False;0;False;0;0;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;479;-5749.539,-2153.676;Inherit;False;0;0;0;1;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;607;-2144,2848;Inherit;False;2475.808;713.9033;Comment;15;595;606;608;605;597;604;602;600;603;599;601;590;588;589;609;Vertex Displacement;1,1,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;616;-3315.326,-2638.362;Inherit;False;RL5_Amplify_WrinkleMapSystem;-1;;102;ada0dcb2336c5f74995ee8fbcf5e9cf2;0;37;7;COLOR;0,0,0,0;False;8;FLOAT;0;False;9;FLOAT3;0,0,0;False;228;FLOAT;0;False;233;FLOAT;0;False;15;FLOAT4;0,0,0,0;False;16;FLOAT4;0,0,0,0;False;17;FLOAT4;0,0,0,0;False;18;FLOAT4;0,0,0,0;False;105;FLOAT4;0,0,0,0;False;67;COLOR;0,0,0,0;False;71;COLOR;0,0,0,0;False;76;COLOR;0,0,0,0;False;68;FLOAT;0;False;72;FLOAT;0;False;77;FLOAT;0;False;69;FLOAT3;0,0,0;False;73;FLOAT3;0,0,0;False;78;FLOAT3;0,0,0;False;235;FLOAT;0;False;236;FLOAT;0;False;241;FLOAT;0;False;151;FLOAT;0;False;155;FLOAT;0;False;156;FLOAT;0;False;19;FLOAT4;0,0,0,0;False;20;FLOAT4;0,0,0,0;False;23;FLOAT4;0,0,0,0;False;24;FLOAT4;0,0,0,0;False;103;FLOAT4;0,0,0,0;False;21;FLOAT4;0,0,0,0;False;22;FLOAT4;0,0,0,0;False;25;FLOAT4;0,0,0,0;False;26;FLOAT4;0,0,0,0;False;104;FLOAT4;0,0,0,0;False;106;FLOAT4;0,0,0,0;False;210;FLOAT4;0,0,0,0;False;4;FLOAT4;0;FLOAT;1;FLOAT3;6;FLOAT;247
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;480;-5524.938,-2158.257;Inherit;False;mainSamplerState;-1;True;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;594;-2832,-2480;Inherit;False;displacementWrinkle;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;589;-2096,2944;Inherit;False;480;mainSamplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;601;-1552,3120;Inherit;False;594;displacementWrinkle;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;588;-1856,2896;Inherit;True;Property;_DisplacementMap;Displacement Map;14;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;599;-1216,3024;Inherit;False;Property;BOOLEAN_USE_WRINKLE3;Use Wrinkle;69;0;Create;False;0;0;0;False;0;False;0;0;0;True;BOOLEAN_USE_WRINKLE_ON;Toggle;2;Key0;Key1;Reference;464;True;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;590;-1536,2944;Inherit;False;displacementMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;603;-880,3184;Inherit;False;Property;_DisplacementLevel;Displacement Level;15;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;600;-848,2944;Inherit;False;Property;BOOLEAN_IS_HEAD1;Is Head;46;0;Create;False;0;0;0;False;0;False;0;1;1;True;BOOLEAN_IS_HEAD_ON;Toggle;2;Key0;Key1;Reference;72;True;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;602;-560,3072;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;604;-880,3264;Inherit;False;Property;_DisplacementStrength;Displacement Strength;16;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;605;-384,3120;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;606;-432,3376;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector3Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;597;-448,2928;Inherit;False;Constant;_Vector0;Vector 0;82;0;Create;True;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;608;-224,3280;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;229;-5908.021,48.08539;Inherit;False;3216.245;1858.522;;58;276;277;174;170;171;172;68;169;156;179;165;164;167;168;166;181;182;147;146;161;159;163;157;123;183;152;153;155;124;125;151;154;121;138;150;144;140;133;137;148;142;120;122;131;134;145;139;132;141;130;135;143;129;127;126;128;486;587;Micro-Smoothess/Scattering;0.4764151,1,0.9938402,1;0;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;208;-4654.008,-805.9103;Inherit;False;1980.672;617.1674;;11;280;197;204;205;206;196;195;487;684;683;685;Head Cavity Mask;0.5235849,1,0.9775805,1;0;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;228;-2144,1424;Inherit;False;2399.148;452.0885;;16;665;517;41;43;42;40;223;222;513;278;282;514;292;468;469;686;Smoothness;0.5330188,1,0.9963375,1;0;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;521;-2160,2048;Inherit;False;1076;576;;10;506;509;507;510;511;512;528;690;692;691;Cavity Map;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;661;-2547,592;Inherit;False;1815;764;;19;662;649;650;637;660;635;630;626;638;623;624;636;659;627;658;629;628;631;625;Subsurface;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;82;-775.9232,2212.324;Inherit;False;929.907;257.7939;;5;293;37;35;36;33;Ambient Occlusion;0.495283,1,0.9960415,1;0;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;235;-656,704;Inherit;False;853.0981;468.4968;;5;231;232;233;234;505;Emission;0.989594,0.495283,1,1;0;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;595;-32,3104;Inherit;False;Property;ENUM_DISPLACEMENT_MODE;Use Displacement;13;0;Create;False;0;0;0;False;0;False;0;0;0;True;BOOLEAN_USE_WRINKLE_ON;KeywordEnum;4;NONE;BUMP;DISPLACEMENT;DISPACEMENT_BUMP;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;129;-5858.021,849.2174;Inherit;False;Property;_ASmoothnessMod;Inner Lid/A Smoothness Mod;39;0;Create;False;0;0;0;False;0;False;0;0;-1.5;1.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;128;-5857.031,769.2485;Inherit;False;Property;_BSmoothnessMod;Upper Lid/B Smoothness Mod;38;0;Create;False;0;0;0;False;0;False;0;0;-1.5;1.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;127;-5858.013,693.2935;Inherit;False;Property;_GSmoothnessMod;Mouth/G Smoothness Mod;37;0;Create;False;0;0;0;False;0;False;0;0;-1.5;1.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;126;-5858.013,619.4265;Inherit;False;Property;_RSmoothnessMod;Nose/R Smoothness Mod;36;0;Create;False;0;0;0;False;0;False;0;0;-1.5;1.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;122;-5335.381,511.1195;Inherit;True;Property;_EarNeckMask;EarNeckMask;64;0;Create;True;0;0;0;False;0;False;None;None;False;black;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;148;-5206.476,1070.36;Inherit;False;Property;_RScatterScale;Nose/R Scatter Scale;41;0;Create;False;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;144;-5202.717,1679.614;Inherit;False;Property;_NeckScatterScale;Neck Scatter Scale;68;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;133;-5857.21,1159.966;Inherit;False;Property;_ChinSmoothnessMod;Chin Smoothness Mod;59;0;Create;True;0;0;0;False;0;False;0;0;-1.5;1.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;138;-5204.919,1214.915;Inherit;False;Property;_BScatterScale;Upper Lid/B Scatter Scale;43;0;Create;False;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;141;-5207.318,1445.414;Inherit;False;Property;_ForeheadScatterScale;Forehead Scatter Scale;61;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;145;-5202.918,1762.014;Inherit;False;Property;_EarScatterScale;Ear Scatter Scale;67;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;134;-5854.502,1236.706;Inherit;False;Property;_NeckSmoothnessMod;Neck Smoothness Mod;66;0;Create;True;0;0;0;False;0;False;0;0;-1.5;1.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;120;-5517.44,207.9764;Inherit;True;Property;_RGBAMask;RGBAMask;34;0;Create;True;0;0;0;False;0;False;None;None;False;black;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;143;-5203.217,1602.014;Inherit;False;Property;_ChinScatterScale;Chin Scatter Scale;63;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;139;-5205.919,1285.915;Inherit;False;Property;_AScatterScale;Inner Lid/A Scatter Scale;44;0;Create;False;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;130;-5857.083,930.9144;Inherit;False;Property;_CheekSmoothnessMod;Cheek Smoothness Mod;56;0;Create;True;0;0;0;False;0;False;0;0;-1.5;1.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;131;-5857.152,1009.909;Inherit;False;Property;_ForeheadSmoothnessMod;Forehead Smoothness Mod;57;0;Create;True;0;0;0;False;0;False;0;0;-1.5;1.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;135;-5851.211,1314.774;Inherit;False;Property;_EarSmoothnessMod;Ear Smoothness Mod;65;0;Create;True;0;0;0;False;0;False;0;0;-1.5;1.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;121;-5564.381,417.1195;Inherit;True;Property;_CFULCMask;CFULCMask;55;0;Create;True;0;0;0;False;0;False;None;None;False;black;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;137;-5206.919,1138.915;Inherit;False;Property;_GScatterScale;Mouth/G Scatter Scale;42;0;Create;False;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;142;-5202.318,1525.714;Inherit;False;Property;_UpperLipScatterScale;Upper Lip Scatter Scale;62;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;140;-5209.221,1370.914;Inherit;False;Property;_CheekScatterScale;Cheek Scatter Scale;60;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;150;-5468.931,750.5865;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;132;-5855.17,1085.966;Inherit;False;Property;_UpperLipSmoothnessMod;Upper Lip Smoothness Mod;58;0;Create;True;0;0;0;False;0;False;0;0;-1.5;1.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;486;-5289.685,294.1823;Inherit;False;480;mainSamplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;123;-4947.738,98.08542;Inherit;True;Property;_TextureSample8;Texture Sample 8;32;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;154;-4804.062,1393.852;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;152;-5465.315,1076.229;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;153;-4809.106,1226.433;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;155;-4799.142,1555.208;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;151;-5471.796,906.7744;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;125;-4954.618,554.9945;Inherit;True;Property;_TextureSample10;Texture Sample 10;32;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;124;-4951.618,329.9945;Inherit;True;Property;_TextureSample9;Texture Sample 9;32;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;183;-4672,992;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;287;-2911.776,2386.466;Inherit;False;microNormalMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;439;-2832,-2544;Inherit;False;normalWrinkle;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;170;-3557.483,1206.089;Inherit;False;Property;BOOLEAN_IS_HEAD;Is Head;46;0;Create;False;0;0;0;False;0;False;0;1;1;True;BOOLEAN_IS_HEAD_ON;Toggle;2;Key0;Key1;Reference;72;True;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;438;-2832,-2608;Inherit;False;smoothnessWrinkle;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;195;-4484.008,-668.7567;Inherit;True;Property;_MNAOMap;Cavity AO Map;51;0;Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;487;-4469.792,-470.7076;Inherit;False;480;mainSamplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;171;-3562.313,1330.478;Inherit;False;Property;_MicroSmoothnessMod;Micro Smoothness Mod;35;0;Create;True;0;0;0;False;0;False;0;0;-1.5;1.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;146;-4791.422,1720.184;Inherit;False;Property;_UnmaskedSmoothnessMod;Unmasked Smoothness Mod;40;0;Create;True;0;0;0;False;0;False;0;0;-1.5;1.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;147;-4790.822,1794.684;Inherit;False;Property;_UnmaskedScatterScale;Unmasked Scatter Scale;45;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;165;-4480,848;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;164;-4480,848;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;163;-4480,848;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;166;-4672,992;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;167;-4672,992;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;168;-4672,992;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;157;-4384,1328;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;159;-4384,1328;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;161;-4384,1328;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;587;-4336,1232;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;182;-4336,1232;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;181;-4240,752;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;609;-48,2976;Inherit;False;finalDisplacement;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;174;-3191.699,1240.569;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;469;-2112,1760;Inherit;False;438;smoothnessWrinkle;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;196;-3997.858,-661.9286;Inherit;True;Property;_TextureSample11;Texture Sample 11;32;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;205;-3977.836,-371.3848;Inherit;False;Property;_NostrilCavityAO;Nostril Cavity AO;53;0;Create;True;0;0;0;False;0;False;2.5;2.5;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;206;-3977.836,-296.3848;Inherit;False;Property;_LipsCavityAO;Lips Cavity AO;54;0;Create;True;0;0;0;False;0;False;2.5;2.5;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;204;-3977.836,-446.3848;Inherit;False;Property;_MouthCavityAO;Mouth Cavity AO;52;0;Create;True;0;0;0;False;0;False;2.5;2.5;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;179;-4103.264,1453.281;Inherit;False;float mask = saturate(In1.r + In1.g + In1.b + In1.a)@$float unmask = 1.0 - mask@$$SmoothnessMod = dot(In1, Mod1) + (UMMS * unmask)@$ScatterMask = dot(In1, Scatter1) + (UMSS * unmask)@$return@;8;Create;7;True;In1;FLOAT4;0,0,0,0;In;;Inherit;False;True;Mod1;FLOAT4;0,0,0,0;In;;Inherit;False;True;Scatter1;FLOAT4;0,0,0,0;In;;Inherit;False;True;UMMS;FLOAT;0;In;;Inherit;False;True;UMSS;FLOAT;0;In;;Inherit;False;True;SmoothnessMod;FLOAT;0;Out;;Inherit;False;True;ScatterMask;FLOAT;0;Out;;Inherit;False;SkinMask;True;False;0;;False;8;0;FLOAT;0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;3;FLOAT;0;FLOAT;7;FLOAT;8
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;156;-4103.297,1089.082;Inherit;False;In3.zw = 0@$float4 m = In1 + In2 + In3@$float mask = saturate(m.x + m.y + m.z + m.w)@$float unmask = 1.0 - mask@$$SmoothnessMod = dot(In1, Mod1) + dot(In2, Mod2) + dot(In3, Mod3) + (UMMS * unmask)@$ScatterMask = dot(In1, Scatter1) + dot(In2, Scatter2) + dot(In3, Scatter3) + (UMSS * unmask)@$return@;8;Create;13;True;In1;FLOAT4;0,0,0,0;In;;Inherit;False;True;In2;FLOAT4;0,0,0,0;In;;Inherit;False;True;In3;FLOAT4;0,0,0,0;In;;Inherit;False;True;Mod1;FLOAT4;0,0,0,0;In;;Inherit;False;True;Mod2;FLOAT4;0,0,0,0;In;;Inherit;False;True;Mod3;FLOAT4;0,0,0,0;In;;Inherit;False;True;Scatter1;FLOAT4;0,0,0,0;In;;Inherit;False;True;Scatter2;FLOAT4;0,0,0,0;In;;Inherit;False;True;Scatter3;FLOAT4;0,0,0,0;In;;Inherit;False;True;UMMS;FLOAT;0;In;;Inherit;False;True;UMSS;FLOAT;0;In;;Inherit;False;True;SmoothnessMod;FLOAT;0;Out;;Inherit;False;True;ScatterMask;FLOAT;0;Out;;Inherit;False;HeadMask;True;False;0;;False;14;0;FLOAT;0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;9;FLOAT4;0,0,0,0;False;10;FLOAT;0;False;11;FLOAT;0;False;12;FLOAT;0;False;13;FLOAT;0;False;3;FLOAT;0;FLOAT;13;FLOAT;14
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;276;-2960.786,1235.781;Inherit;False;microSmoothnessMod;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;468;-1824,1728;Inherit;False;Property;BOOLEAN_USE_WRINKLE2;Use Wrinkle;69;0;Create;False;0;0;0;False;0;False;0;0;0;True;BOOLEAN_USE_WRINKLE_ON;Toggle;2;Key0;Key1;Reference;464;True;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;169;-3551.095,1558.494;Inherit;False;Property;BOOLEAN_IS_HEAD;Is Head;46;0;Create;False;0;0;0;False;0;False;0;1;1;True;BOOLEAN_IS_HEAD_ON;Toggle;2;Key0;Key1;Reference;72;True;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;68;-3574.522,1467.09;Inherit;False;Property;_SubsurfaceScale;Subsurface Scale;25;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;292;-2096,1552;Inherit;False;288;smoothnessMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;514;-1456,1728;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;282;-1520,1648;Inherit;False;685;smoothnessAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;278;-1824,1632;Inherit;False;276;microSmoothnessMod;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;437;-2832,-2672;Inherit;False;diffuseWrinkle;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;172;-3199.837,1508.122;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;662;-2496,768;Inherit;False;480;mainSamplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;513;-1456,1552;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;222;-1296,1696;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;277;-2964.243,1523.669;Inherit;False;microScatteringMultiplier;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;625;-2496,848;Inherit;True;Property;_SSSThicknessPack;Subsurface Thickness Pack;23;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;631;-2496,1120;Inherit;True;Property;_SubsurfaceBlurMap;Subsurface Blur Map;24;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;506;-2096,2144;Inherit;False;480;mainSamplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;510;-1792,2320;Inherit;False;Property;_CavityStrength;Cavity Strength;10;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;528;-1616,2480;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;286;-2926.939,2292.405;Inherit;False;ambientOcclusionMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;223;-1120,1632;Inherit;False;Property;BOOLEAN_IS_HEAD;Is Head;46;0;Create;False;0;0;0;False;0;False;0;1;1;True;BOOLEAN_IS_HEAD_ON;Toggle;2;Key0;Key1;Reference;72;True;False;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;628;-2160,768;Inherit;False;Property;_ThicknessScale;Thickness Max;27;0;Create;False;0;0;0;False;0;False;0.9;0.9;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;629;-2160,832;Inherit;False;Property;_ThicknessScaleMin;Thickness Min;26;0;Create;False;0;0;0;False;0;False;0.4;0.4;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;658;-1920,976;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;659;-2016,1152;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;627;-2496,1040;Inherit;False;277;microScatteringMultiplier;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;507;-1824,2096;Inherit;True;Property;_CavityMap;CavityMap;7;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;511;-1456,2352;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;293;-744.9214,2263.6;Inherit;False;286;ambientOcclusionMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;636;-1552,1120;Inherit;False;266;baseColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;624;-2160,704;Inherit;False;Property;_SSSTransmission;SSS Transmission;29;0;Create;True;0;0;0;False;0;False;50;5;0;100;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;623;-2160,640;Inherit;False;Property;_SSSNormalDistortion;SSS Normal Distortion;30;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;638;-2160,896;Inherit;False;Property;_SSSBlurStrength;SSS Blur Strength;31;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;626;-2128,1056;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;630;-1776,800;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;635;-1904,1120;Inherit;False;Property;_SubsurfaceFalloff;Subsurface Falloff;28;0;Create;True;0;0;0;False;0;False;0.990566,0.3446065,0.2850213,0;0.990566,0.3446064,0.2850212,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;660;-1888,1072;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;637;-1616,1200;Inherit;False;525;finalTangentNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;512;-1264,2112;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;33;-419.5572,2268.659;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;36;-565.9235,2368.116;Inherit;False;Property;_AOStrength;AO Strength;3;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;231;-608,832;Inherit;True;Property;_EmissionMap;Emission Map;32;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;505;-592,1040;Inherit;False;480;mainSamplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;663;-1296,768;Inherit;False;RL_Amplify_Function_Skin_SSS;-1;;110;3a15041bfe742e24d9003ae8b3e9eee0;0;9;99;FLOAT;0;False;118;FLOAT;0;False;120;FLOAT;0;False;121;FLOAT;0;False;122;FLOAT;0;False;123;COLOR;0,0,0,0;False;124;COLOR;0,0,0,0;False;125;COLOR;0,0,0,0;False;126;FLOAT3;0,0,0;False;2;COLOR;0;FLOAT3;140
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;520;-672,1888;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;285;-2905.11,2193.511;Inherit;False;metallicMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;41;-256,1552;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;233;-256,752;Inherit;False;Property;_EmissiveColor;Emissive Color;33;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;35;-198.9745,2262.323;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;232;-320,944;Inherit;True;Property;_TextureSample12;Texture Sample 12;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;650;-976,832;Inherit;False;sssNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;649;-976,752;Inherit;False;sssDiffuse;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;517;-96,1712;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;290;-35.24173,1274.675;Inherit;False;285;metallicMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;234;32,880;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;37;-25.01527,2270.281;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;665;16,1552;Inherit;False;Property;_UseCavity;Use Cavity;9;0;Create;True;0;0;0;False;0;False;1;False;Create;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;197;-4275.65,-395.1431;Inherit;False;182.5439;132.5438;MNAO Map;;1,1,1,1;R - mouth cavity mask$G - mouth gradient$B - nostril gradient$A - lip gradient;0;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;11;-2160,-1568;Inherit;True;Property;_ColorBlendMap;Color Blend Map (Head);47;0;Create;False;0;0;0;False;0;False;None;None;False;gray;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;14;-1264,-1392;Inherit;False;Property;_ColorBlendStrength;Color Blend Strength;48;0;Create;True;0;0;0;False;0;False;0;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;12;-1840,-1600;Inherit;True;Property;_TextureSample1;Texture Sample 1;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;465;-1504,-1744;Inherit;False;437;diffuseWrinkle;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.BlendOpsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;13;-912,-1680;Inherit;False;Overlay;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;356;-1312,-2032;Inherit;False;Property;_DiffuseColor;Diffuse Color;1;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;464;-1264,-1808;Inherit;False;Property;ENUM_WRINKLE_MODE;Wrinkle Mode;69;0;Create;False;0;0;0;False;0;False;0;0;0;True;BOOLEAN_USE_WRINKLE_ON;KeywordEnum;3;NONE;WRINKLE;WRINKLE_DISPLACEMENT;Create;True;False;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;281;-672,-1504;Inherit;False;280;cavityAO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;667;-688,-1744;Inherit;False;Property;_UseBlend;Use Blend;8;0;Create;True;0;0;0;False;0;False;1;False;Create;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;357;-960,-1920;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;209;-464,-1632;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;72;-288,-1744;Inherit;False;Property;BOOLEAN_IS_HEAD;Is Head;46;0;Create;False;0;0;0;False;0;False;0;1;1;True;BOOLEAN_IS_HEAD_ON;Toggle;2;Key0;Key1;Create;True;False;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;266;-16,-1648;Inherit;False;baseColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;51;-1840,-736;Inherit;True;Property;_NormalBlendMap;Normal Blend Map (Head);49;1;[Normal];Create;False;0;0;0;False;0;False;None;None;True;bump;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;59;-2272,-512;Inherit;False;Property;_NormalBlendStrength;Normal Blend Strength (Head);50;0;Create;False;0;0;0;False;0;False;0;0.5;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;50;-1472,-656;Inherit;True;Property;_TextureSample6;Texture Sample 6;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;289;-2208,-16;Inherit;False;287;microNormalMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;62;-2272,-208;Inherit;False;Property;_MicroNormalTiling;Micro Normal Tiling;21;0;Create;True;0;0;0;False;0;False;25;25;0;50;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;58;-2272,-112;Inherit;False;Property;_MicroNormalStrength;Micro Normal Strength;20;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;466;-1168,-880;Inherit;False;439;normalWrinkle;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;54;-1024,-704;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;53;-1824,-464;Inherit;True;Property;_MicroNormalMap;Micro Normal Map;19;1;[Normal];Create;True;0;0;0;False;0;False;None;None;True;bump;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TextureCoordinatesNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;344;-1808,-272;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;57;-1744,-144;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;467;-944,-944;Inherit;False;Property;BOOLEAN_USE_WRINKLE1;Use Wrinkle;69;0;Create;False;0;0;0;False;0;False;0;0;0;True;BOOLEAN_USE_WRINKLE_ON;Toggle;2;Key0;Key1;Reference;464;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;610;-944,-336;Inherit;False;609;finalDisplacement;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;504;-1808,-32;Inherit;False;480;mainSamplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;613;-1008,-240;Inherit;False;Property;_BumpStrength;Bump Strength;17;0;Create;True;0;0;0;False;0;False;1;0.01;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;666;-800,-752;Inherit;False;Property;_UseBlend;Use Blend;47;0;Create;True;0;0;0;False;0;False;1;False;Create;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;52;-1472,-288;Inherit;True;Property;_TextureSample7;Texture Sample 7;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;612;-688,-304;Inherit;False;Normal From Height;-1;;111;1942fe2c5f1a1f94881a33d532e4afeb;0;2;20;FLOAT;0;False;110;FLOAT;1;False;2;FLOAT3;40;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;71;-560,-832;Inherit;False;Property;BOOLEAN_IS_HEAD;Is Head;46;0;Create;False;0;0;0;False;0;False;0;1;1;True;BOOLEAN_IS_HEAD_ON;Toggle;2;Key0;Key1;Reference;72;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;61;-288,-832;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;614;-288,-736;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;611;16,-816;Inherit;False;Property;ENUM_DISPLACEMENT_MODE1;Use Displacement;13;0;Create;False;0;0;0;False;0;False;0;0;0;True;BOOLEAN_USE_WRINKLE_ON;KeywordEnum;4;NONE;BUMP;DISPLACEMENT;DISPACEMENT_BUMP;Reference;595;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;525;48,-656;Inherit;False;finalTangentNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;657;-240,496;Inherit;False;650;sssNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;655;-240,336;Inherit;False;649;sssDiffuse;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;654;-240,256;Inherit;False;266;baseColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;656;-304,416;Inherit;False;525;finalTangentNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;653;16,432;Inherit;False;Property;BOOLEAN_USE_SSS1;BOOLEAN_USE_SSS;22;0;Create;False;0;0;0;False;0;False;0;1;1;True;;Toggle;2;Key0;Key1;Reference;652;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;652;0,336;Inherit;False;Property;BOOLEAN_USE_SSS;Use SSS;22;0;Create;False;0;0;0;False;0;False;0;1;1;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;676;592,1408;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;677;592,1408;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;678;592,1408;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;679;592,1408;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;680;592,1408;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;681;592,1408;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;682;592,1408;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;280;-2885.78,-566.2528;Inherit;False;cavityAO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;685;-2880,-464;Inherit;False;smoothnessAO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;684;-3568,-528;Inherit;False;FLOAT4;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;683;-3312,-576;Inherit;False;float4 mask = lerp(1, In, Contrast)@$float AO = saturate(mask.y*mask.z*mask.w)@$Smoothness = AO * mask.r@$return AO@;1;Create;3;True;In;FLOAT4;0,0,0,0;In;;Inherit;False;True;Contrast;FLOAT4;0,0,0,0;In;;Inherit;False;True;Smoothness;FLOAT;0;Out;;Inherit;False;My Custom Expression;True;False;0;;False;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;2;FLOAT;0;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;42;-848,1488;Inherit;False;Property;_SmoothnessMin;SmoothnessMin;5;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;43;-848,1584;Inherit;False;Property;_SmoothnessMax;SmoothnessMax;6;0;Create;True;0;0;0;False;0;False;0;0.897;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;40;-848,1760;Inherit;False;Property;_SmoothnessContrast;SmoothnessContrast;4;0;Create;True;0;0;0;False;0;False;1;1.25;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;686;-496,1664;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;509;-1776,2448;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;691;-2144,2464;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;690;-2144,2320;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;692;-1936,2400;Inherit;False;float NdotV = saturate(dot( N, V))@$float om = 1 - NdotV@$float oms = om * om@$return oms * oms@;1;Create;2;True;N;FLOAT3;0,0,0;In;;Inherit;False;True;V;FLOAT3;0,0,0;In;;Inherit;False;Faster Fresnel;True;False;0;;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;668;1712,1024;Float;False;False;-1;3;AmplifyShaderEditor.MaterialInspector;0;1;New Amplify Shader;ed95fe726fd7b4644bb42f4d1ddd2bcd;True;ExtraPrePass;0;0;ExtraPrePass;6;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;3;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;False;True;1;LightMode=ForwardBase;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;670;1712,1024;Float;False;False;-1;3;AmplifyShaderEditor.MaterialInspector;0;1;New Amplify Shader;ed95fe726fd7b4644bb42f4d1ddd2bcd;True;ForwardAdd;0;2;ForwardAdd;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;3;True;12;all;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;671;1712,1024;Float;False;False;-1;3;AmplifyShaderEditor.MaterialInspector;0;1;New Amplify Shader;ed95fe726fd7b4644bb42f4d1ddd2bcd;True;Deferred;0;3;Deferred;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Deferred;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;672;1712,1024;Float;False;False;-1;3;AmplifyShaderEditor.MaterialInspector;0;1;New Amplify Shader;ed95fe726fd7b4644bb42f4d1ddd2bcd;True;Meta;0;4;Meta;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;673;1712,1024;Float;False;False;-1;3;AmplifyShaderEditor.MaterialInspector;0;1;New Amplify Shader;ed95fe726fd7b4644bb42f4d1ddd2bcd;True;ShadowCaster;0;5;ShadowCaster;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;674;1712,1024;Float;False;False;-1;3;AmplifyShaderEditor.MaterialInspector;0;1;New Amplify Shader;ed95fe726fd7b4644bb42f4d1ddd2bcd;True;SceneSelectionPass;0;6;SceneSelectionPass;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;675;1712,1024;Float;False;False;-1;3;AmplifyShaderEditor.MaterialInspector;0;1;New Amplify Shader;ed95fe726fd7b4644bb42f4d1ddd2bcd;True;ScenePickingPass;0;7;ScenePickingPass;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;False;True;1;LightMode=ScenePickingPass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;669;832,1296;Float;False;True;-1;3;AmplifyShaderEditor.MaterialInspector;0;3;Reallusion/Amplify/RL5_SkinShader_Variants_3D;ed95fe726fd7b4644bb42f4d1ddd2bcd;True;ForwardBase;0;1;ForwardBase;17;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;3;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;False;0;;0;0;Standard;44;Category;0;0;  Instanced Terrain Normals;1;0;Workflow;1;0;Surface;0;0;  Blend;0;0;  Dither Shadows;1;0;Two Sided;1;638936710797581136;Alpha Clipping;0;0;  Use Shadow Threshold;0;0;Deferred Pass;1;0;Normal Space;0;0;Transmission;0;0;  Transmission Shadow;0.5,False,;0;Translucency;0;0;  Translucency Strength;1,False,;0;  Normal Distortion;0.5,False,;0;  Scattering;2,False,;0;  Direct;0.9,False,;0;  Ambient;0.1,False,;0;  Shadow;0.5,False,;0;Cast Shadows;1;0;Receive Shadows;1;0;Receive Specular;2;0;Receive Reflections;2;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;Ambient Light;1;0;Meta Pass;1;0;Add Pass;1;0;Override Baked GI;0;0;Write Depth;0;0;Extra Pre Pass;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Disable Batching;0;0;Vertex Position;1;0;0;8;False;True;True;True;True;True;True;True;False;;True;0
WireConnection;457;7;481;0
WireConnection;359;0;60;0
WireConnection;32;0;31;0
WireConnection;32;7;485;0
WireConnection;449;0;457;0
WireConnection;573;0;481;0
WireConnection;574;0;481;0
WireConnection;575;0;481;0
WireConnection;576;0;481;0
WireConnection;577;0;481;0
WireConnection;578;0;481;0
WireConnection;579;0;481;0
WireConnection;580;0;481;0
WireConnection;581;0;440;0
WireConnection;582;0;440;0
WireConnection;583;0;440;0
WireConnection;584;0;481;0
WireConnection;585;0;481;0
WireConnection;586;0;481;0
WireConnection;1;0;2;0
WireConnection;1;7;502;0
WireConnection;48;0;49;0
WireConnection;48;5;359;0
WireConnection;48;7;503;0
WireConnection;288;0;32;4
WireConnection;498;0;449;0
WireConnection;475;7;481;0
WireConnection;450;7;573;0
WireConnection;488;7;574;0
WireConnection;489;7;575;0
WireConnection;490;7;576;0
WireConnection;491;7;577;0
WireConnection;454;7;578;0
WireConnection;496;7;579;0
WireConnection;497;7;580;0
WireConnection;460;5;581;0
WireConnection;460;7;584;0
WireConnection;499;5;582;0
WireConnection;499;7;585;0
WireConnection;500;5;583;0
WireConnection;500;7;586;0
WireConnection;538;7;481;0
WireConnection;358;0;1;0
WireConnection;360;0;48;0
WireConnection;547;0;445;0
WireConnection;548;0;446;0
WireConnection;549;0;441;0
WireConnection;550;0;442;0
WireConnection;551;0;471;0
WireConnection;553;0;448;0
WireConnection;552;0;447;0
WireConnection;554;0;443;0
WireConnection;555;0;444;0
WireConnection;556;0;472;0
WireConnection;557;0;473;0
WireConnection;558;0;478;0
WireConnection;562;0;498;2
WireConnection;563;0;498;1
WireConnection;564;0;498;0
WireConnection;559;0;460;0
WireConnection;560;0;499;0
WireConnection;561;0;500;0
WireConnection;546;0;538;3
WireConnection;545;0;538;2
WireConnection;544;0;538;1
WireConnection;541;0;475;1
WireConnection;542;0;475;2
WireConnection;543;0;475;3
WireConnection;565;0;454;0
WireConnection;566;0;496;0
WireConnection;567;0;497;0
WireConnection;568;0;491;0
WireConnection;569;0;490;0
WireConnection;571;0;488;0
WireConnection;570;0;489;0
WireConnection;572;0;450;0
WireConnection;616;7;434;0
WireConnection;616;8;435;0
WireConnection;616;9;436;0
WireConnection;616;228;591;0
WireConnection;616;233;593;0
WireConnection;616;15;572;0
WireConnection;616;16;571;0
WireConnection;616;17;570;0
WireConnection;616;18;569;0
WireConnection;616;105;568;0
WireConnection;616;67;565;0
WireConnection;616;71;566;0
WireConnection;616;76;567;0
WireConnection;616;68;564;0
WireConnection;616;72;563;0
WireConnection;616;77;562;0
WireConnection;616;69;559;0
WireConnection;616;73;560;0
WireConnection;616;78;561;0
WireConnection;616;235;544;0
WireConnection;616;236;545;0
WireConnection;616;241;546;0
WireConnection;616;151;541;0
WireConnection;616;155;542;0
WireConnection;616;156;543;0
WireConnection;616;19;547;0
WireConnection;616;20;548;0
WireConnection;616;23;549;0
WireConnection;616;24;550;0
WireConnection;616;103;551;0
WireConnection;616;21;552;0
WireConnection;616;22;553;0
WireConnection;616;25;554;0
WireConnection;616;26;555;0
WireConnection;616;104;556;0
WireConnection;616;106;557;0
WireConnection;616;210;558;0
WireConnection;480;0;479;0
WireConnection;594;0;616;247
WireConnection;588;7;589;0
WireConnection;599;1;590;0
WireConnection;599;0;590;0
WireConnection;599;2;601;0
WireConnection;590;0;588;1
WireConnection;600;1;590;0
WireConnection;600;0;599;0
WireConnection;602;0;600;0
WireConnection;602;1;603;0
WireConnection;605;0;602;0
WireConnection;605;1;604;0
WireConnection;608;0;605;0
WireConnection;608;1;606;0
WireConnection;595;1;597;0
WireConnection;595;0;597;0
WireConnection;595;2;608;0
WireConnection;595;3;608;0
WireConnection;150;0;126;0
WireConnection;150;1;127;0
WireConnection;150;2;128;0
WireConnection;150;3;129;0
WireConnection;123;0;120;0
WireConnection;123;7;486;0
WireConnection;154;0;140;0
WireConnection;154;1;141;0
WireConnection;154;2;142;0
WireConnection;154;3;143;0
WireConnection;152;0;134;0
WireConnection;152;1;135;0
WireConnection;153;0;148;0
WireConnection;153;1;137;0
WireConnection;153;2;138;0
WireConnection;153;3;139;0
WireConnection;155;0;144;0
WireConnection;155;1;145;0
WireConnection;151;0;130;0
WireConnection;151;1;131;0
WireConnection;151;2;132;0
WireConnection;151;3;133;0
WireConnection;125;0;122;0
WireConnection;125;7;486;0
WireConnection;124;0;121;0
WireConnection;124;7;486;0
WireConnection;183;0;150;0
WireConnection;287;0;32;3
WireConnection;439;0;616;6
WireConnection;170;1;179;7
WireConnection;170;0;156;13
WireConnection;438;0;616;1
WireConnection;165;0;125;0
WireConnection;164;0;124;0
WireConnection;163;0;123;0
WireConnection;166;0;150;0
WireConnection;167;0;151;0
WireConnection;168;0;152;0
WireConnection;157;0;153;0
WireConnection;159;0;154;0
WireConnection;161;0;155;0
WireConnection;587;0;183;0
WireConnection;182;0;153;0
WireConnection;181;0;123;0
WireConnection;609;0;602;0
WireConnection;174;0;170;0
WireConnection;174;1;171;0
WireConnection;196;0;195;0
WireConnection;196;7;487;0
WireConnection;179;1;181;0
WireConnection;179;2;587;0
WireConnection;179;3;182;0
WireConnection;179;4;146;0
WireConnection;179;5;147;0
WireConnection;156;1;163;0
WireConnection;156;2;164;0
WireConnection;156;3;165;0
WireConnection;156;4;166;0
WireConnection;156;5;167;0
WireConnection;156;6;168;0
WireConnection;156;7;157;0
WireConnection;156;8;159;0
WireConnection;156;9;161;0
WireConnection;156;10;146;0
WireConnection;156;11;147;0
WireConnection;276;0;174;0
WireConnection;468;1;292;0
WireConnection;468;0;469;0
WireConnection;468;2;469;0
WireConnection;169;1;179;8
WireConnection;169;0;156;14
WireConnection;514;0;278;0
WireConnection;514;1;468;0
WireConnection;437;0;616;0
WireConnection;172;0;68;0
WireConnection;172;1;169;0
WireConnection;513;0;292;0
WireConnection;513;1;278;0
WireConnection;222;0;282;0
WireConnection;222;1;514;0
WireConnection;277;0;172;0
WireConnection;625;7;662;0
WireConnection;631;7;662;0
WireConnection;528;0;509;0
WireConnection;286;0;32;2
WireConnection;223;1;513;0
WireConnection;223;0;222;0
WireConnection;658;0;625;4
WireConnection;659;0;631;0
WireConnection;507;7;506;0
WireConnection;511;0;510;0
WireConnection;511;1;528;0
WireConnection;626;0;625;1
WireConnection;626;1;627;0
WireConnection;630;0;628;0
WireConnection;630;1;629;0
WireConnection;630;2;658;0
WireConnection;660;0;659;0
WireConnection;512;1;507;1
WireConnection;512;2;511;0
WireConnection;33;0;293;0
WireConnection;663;99;623;0
WireConnection;663;118;624;0
WireConnection;663;120;630;0
WireConnection;663;121;626;0
WireConnection;663;122;638;0
WireConnection;663;123;660;0
WireConnection;663;124;635;0
WireConnection;663;125;636;0
WireConnection;663;126;637;0
WireConnection;520;0;512;0
WireConnection;285;0;32;1
WireConnection;41;0;42;0
WireConnection;41;1;43;0
WireConnection;41;2;686;0
WireConnection;35;0;33;0
WireConnection;35;1;36;0
WireConnection;232;0;231;0
WireConnection;232;7;505;0
WireConnection;650;0;663;140
WireConnection;649;0;663;0
WireConnection;517;0;41;0
WireConnection;517;1;520;0
WireConnection;234;0;233;0
WireConnection;234;1;232;0
WireConnection;37;0;35;0
WireConnection;665;0;41;0
WireConnection;665;1;517;0
WireConnection;12;0;11;0
WireConnection;12;7;502;0
WireConnection;13;0;12;0
WireConnection;13;1;357;0
WireConnection;13;2;14;0
WireConnection;464;1;358;0
WireConnection;464;0;465;0
WireConnection;464;2;465;0
WireConnection;667;0;357;0
WireConnection;667;1;13;0
WireConnection;357;0;356;0
WireConnection;357;1;464;0
WireConnection;209;0;667;0
WireConnection;209;1;281;0
WireConnection;72;1;357;0
WireConnection;72;0;209;0
WireConnection;266;0;72;0
WireConnection;50;0;51;0
WireConnection;50;5;59;0
WireConnection;50;7;503;0
WireConnection;54;0;467;0
WireConnection;54;1;50;0
WireConnection;344;0;62;0
WireConnection;57;0;58;0
WireConnection;57;1;289;0
WireConnection;467;1;360;0
WireConnection;467;0;466;0
WireConnection;467;2;466;0
WireConnection;666;0;467;0
WireConnection;666;1;54;0
WireConnection;52;0;53;0
WireConnection;52;1;344;0
WireConnection;52;5;57;0
WireConnection;52;7;504;0
WireConnection;612;20;610;0
WireConnection;612;110;613;0
WireConnection;71;1;467;0
WireConnection;71;0;666;0
WireConnection;61;0;71;0
WireConnection;61;1;52;0
WireConnection;614;0;61;0
WireConnection;614;1;612;40
WireConnection;611;1;61;0
WireConnection;611;0;614;0
WireConnection;611;2;61;0
WireConnection;611;3;614;0
WireConnection;525;0;611;0
WireConnection;653;1;656;0
WireConnection;653;0;657;0
WireConnection;652;1;654;0
WireConnection;652;0;655;0
WireConnection;676;0;652;0
WireConnection;677;0;653;0
WireConnection;678;0;234;0
WireConnection;679;0;290;0
WireConnection;680;0;665;0
WireConnection;681;0;37;0
WireConnection;682;0;595;0
WireConnection;280;0;683;0
WireConnection;685;0;683;3
WireConnection;684;1;204;0
WireConnection;684;2;205;0
WireConnection;684;3;206;0
WireConnection;683;0;196;0
WireConnection;683;1;684;0
WireConnection;686;1;223;0
WireConnection;686;2;40;0
WireConnection;509;0;692;0
WireConnection;692;0;690;0
WireConnection;692;1;691;0
WireConnection;669;0;676;0
WireConnection;669;1;677;0
WireConnection;669;4;679;0
WireConnection;669;5;680;0
WireConnection;669;6;681;0
WireConnection;669;2;678;0
WireConnection;669;15;682;0
ASEEND*/
//CHKSM=EC6321BDBAA9AE454FB6E5299F8E4FA91D236456