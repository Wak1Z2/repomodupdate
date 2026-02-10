Shader "Custom/TrainEmission"
{
    Properties
    {
        _Color ("Base Color", Color) = (1,1,1,1)
        _MainTex ("Texture", 2D) = "white" {}

        _EmissionColor ("Emission Color", Color) = (1,1,1,1)
        _EmissionStrength ("Emission Strength", Range(0,10)) = 1
    }

    SubShader
    {
        Tags { "RenderType"="Opaque" "Queue"="Geometry" }
        LOD 200

        Cull Off   // double-sided

        CGPROGRAM
        #pragma surface surf Standard

        sampler2D _MainTex;
        fixed4 _Color;

        fixed4 _EmissionColor;
        float _EmissionStrength;

        struct Input {
            float2 uv_MainTex;
        };

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            fixed4 baseCol = tex2D(_MainTex, IN.uv_MainTex) * _Color;

            o.Albedo = baseCol.rgb;
            o.Alpha  = 1;

            o.Emission = _EmissionColor.rgb * _EmissionStrength;
        }
        ENDCG
    }
}
