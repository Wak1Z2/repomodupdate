Shader "Custom/TrainNormal"
{
    Properties { _Color ("Color", Color) = (1,1,1,1) }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        Cull Off        // disables backface culling → double sided
        CGPROGRAM
        #pragma surface surf Standard
        struct Input { float4 color : COLOR; };
        fixed4 _Color;
        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            o.Albedo = _Color.rgb;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
