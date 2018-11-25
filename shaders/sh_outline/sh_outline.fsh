//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;

uniform float ColorR;
uniform float ColorG;
uniform float ColorB;

void main()
{
	vec2 offsetx;
	offsetx.x = pixelW;
	vec2 offsety;
	offsety.y = pixelH;
	
	float alpha = texture2D( gm_BaseTexture, v_vTexcoord).a;
	
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + offsetx).a);
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - offsetx).a);
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + offsety).a);
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - offsety).a);
	
	
	gl_FragColor.r = ColorR;
	gl_FragColor.g = ColorG;
	gl_FragColor.b = ColorB;
	
	vec4 in_Colour = vec4(ColorR, ColorG, ColorB, 1.0);
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ) + in_Colour;
	gl_FragColor.a = alpha;
	
}
