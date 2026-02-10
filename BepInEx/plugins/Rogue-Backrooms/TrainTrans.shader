Shader "Custom/TrainTrans"
{
    Properties
    {
        _Color ("Color (A = Transparency)", Color) = (1,1,1,0.5)
        _MainTex ("Texture", 2D) = "white" {}
    }

    SubShader
    {
        Tags { "Queue"="Transparent" "RenderType"="Transparent" }
        LOD 200

        Cull Off   // double-sided

        Blend SrcAlpha OneMinusSrcAlpha   // transparency
        ZWrite Off                        // needed for proper blending

        CGPROGRAM
        #pragma surface surf Standard alpha:fade
        sampler2D _MainTex;
        fixed4 _Color;

        struct Input {
            float2 uv_MainTex;
        };

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
            o.Albedo = c.rgb;
            o.Alpha  = c.a;    // keep transparency
        }
        ENDCG
    }
}
