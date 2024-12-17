varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float dgw;
uniform float dgh;

uniform sampler2D surf_helpers;

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
	vec4 _helper_color = texture2D( surf_helpers, v_vTexcoord );
	if (_helper_color.a > 0.)
		{
			float _valid_px1 = 0.;
			float _step = 4.;
	
			float _check_range = 2.;
			for(float _x = -_check_range; _x < _check_range + 1.; _x += 1.)
				{
					for(float _y = -_check_range; _y < _check_range + 1.; _y += 1.)
						{
							vec2 _check_texcoord = vec2(v_vTexcoord.x + _x * dgw	*_step, v_vTexcoord.y + _y * dgh	*_step);
							vec4 _check_helper_color = texture2D( surf_helpers, _check_texcoord );
					
							if	(	(_check_helper_color.r != _helper_color.r)	||
									(_check_helper_color.g != _helper_color.g)	||
									(_check_helper_color.b != _helper_color.b)		||
									(_check_helper_color.a != _helper_color.a)			)
								{	_valid_px1 += 1.;};
						}
				}
			if (_valid_px1 > 0.)
				{	
					gl_FragColor += _helper_color;
				};
		};
    
}
