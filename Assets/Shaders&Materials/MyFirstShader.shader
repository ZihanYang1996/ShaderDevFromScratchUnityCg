Shader "Holistic/HelloShader"
{

    Properties
    {
        _myColour ("Example Colour", Color) = (1,1,1,1)
        _myEmission ("Example Emission", Color) = (1,1,1,1)
    }

    SubShader
    {

        CGPROGRAM
        // This directive defines the surface shader function and the lighting model.
        // The 'surf' is the name of the surface shader function.
        // The 'Lambert' is the lighting model used, which is a simple and commonly used model for diffuse reflection.
        #pragma surface surf Lambert

        struct Input
        {
            float2 uvMainTex;
        };

        fixed4 _myColour;
        fixed4 _myEmission;

        // The 'surf' function is a surface shader function.
        // It takes two parameters:
        // 'IN' is an Input structure that contains the texture coordinates for the main texture.
        // 'o' is a SurfaceOutput structure that will be filled with the surface properties.
        // The function sets the Albedo and Emission properties of the SurfaceOutput structure.
        // Albedo is set to the RGB values of '_myColour', which represents the base color of the surface.
        // Emission is set to the RGB values of '_myEmission', which represents the color of the light emitted by the surface.
        void surf(Input IN, inout SurfaceOutput o)
        {
            o.Albedo = _myColour.rgb;
            o.Emission = _myEmission.rgb;
        }
        ENDCG
    }

    // The 'FallBack' keyword is used to specify a simpler shader that should be used if the main shader fails to compile or run on the user's hardware.
    // "Diffuse" is the name of the fallback shader. It is a built-in Unity shader that calculates diffuse lighting.
    FallBack "Diffive"
}