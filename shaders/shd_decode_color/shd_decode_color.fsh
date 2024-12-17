varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float dgw;
uniform float dgh;

uniform sampler2D surf_color;
//uniform sampler2D surf_normals;
//uniform sampler2D surf_depth;

uniform float _check_distance_limit;
uniform float _blur_far;
uniform float _treshold_dist1;

//functions
vec3 toNormalColor(vec3 normal)
	{
		return normal * 0.5 + 0.5;	
	}
vec3 fromNormalColor(vec3 color)
	{
		return (color - 0.5) * 2.;
	}
float encodeColor(vec3 color) 
	{
		return (floor(color.r * 255.) * 65536. +	floor(color.g * 255.)* 256. +	floor(color.b * 255.));
	}
vec3 decodeColor(float encodedColor) 
	{
	    float colr256 = floor(encodedColor / 65536.);
		float colr65536 = colr256 * 65536.;
	    float colg256 = floor((encodedColor - colr65536) / 256.);
	    float colb256 = floor(encodedColor - colr65536 - colg256 * 256.);
	    return (vec3(colr256, colg256, colb256) / 255.);
	}
	
void main()
{
	vec4 _base_color_sample = texture2D( surf_color, v_vTexcoord );
	vec3 _base3_color =		vec3(decodeColor(_base_color_sample.r));
	_base3_color = clamp(_base3_color,vec3(0.),vec3(1.));
	vec4 _base_color = vec4(_base3_color.r,_base3_color.g,_base3_color.b,1.);
	
	
    gl_FragColor = _base_color;
}
