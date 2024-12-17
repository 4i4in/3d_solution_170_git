varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float dgw;
uniform float dgh;

uniform sampler2D surf_color;
uniform sampler2D surf_depth;
uniform sampler2D surf_xyz;

uniform float _distance_blur;
uniform float _check_distance_limit;
uniform float _treshold_dist1;
uniform float _max_blur_range;

uniform float _blury_shades;
uniform float _color_mul_min;
uniform float _color_mul_max;
uniform float _treshold_dist2;
uniform float _shade_step1;
uniform float _shade_step2;
uniform float _max_shade_range;

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
	vec4 _base_color = texture2D( surf_color, v_vTexcoord );
	
	vec3 _base3_color =		vec3(decodeColor(_base_color.r));
	_base_color = vec4(_base3_color.r,_base3_color.g,_base3_color.b,1.);
	
	vec4 _depth_color = texture2D( surf_depth, v_vTexcoord );
	
	float _my_dist_to_cam = _depth_color.r;	float _my_hash = _depth_color.g;

	float _max_brange = clamp(_max_blur_range,0.,8.);
	float _check_range = _my_dist_to_cam / _check_distance_limit;
	_check_range = clamp(_check_range,0.,_max_brange);
	
	if (_distance_blur > 0.)
		{
			float _valid_px = 0.;
			vec4 _new_color = vec4(0.,0.,0.,0.);
			for(float _x = -_check_range; _x < _check_range + 1.; _x += 1.)
				{
					for(float _y = -_check_range; _y < _check_range + 1.; _y += 1.)
						{
							vec2 _check_texcoord = vec2(v_vTexcoord.x + _x * dgw, v_vTexcoord.y + _y * dgh);
							vec4 _check_depth_color = texture2D( surf_depth, _check_texcoord );
							float _check_dist = _check_depth_color.r;
							if (abs(_my_dist_to_cam - _check_dist) < _treshold_dist1)
								{
									_valid_px += 1.;
									vec4 _check_base_color = texture2D( surf_color, _check_texcoord );
									vec3 _check_base3_color =		vec3(decodeColor(_check_base_color.r));
									_check_base_color = vec4(_check_base3_color.r,_check_base3_color.g,_check_base3_color.b,1.);
											
									_new_color += _check_base_color;
								}
							
						}
				}
			_new_color /= _valid_px;
			_base_color = vec4(_new_color.r,_new_color.g,_new_color.b,1.);
		}
	
	//bluring shade
	if (_blury_shades > 0.)
		{
			float _valid_px2 = 0.;
			float _valid_mul = 0.;
			
			float _max_s_range = clamp(_max_shade_range,0.,8.);
			_check_range = _check_distance_limit / _my_dist_to_cam;
			_check_range = clamp(_check_range,1.,_max_s_range);
			for(float _x = -_check_range; _x < _check_range + 1.; _x += 1.)
				{
					for(float _y = -_check_range; _y < _check_range + 1.; _y += 1.)
						{
							vec2 _check_texcoord = vec2(v_vTexcoord.x + _x * dgw * _check_range, v_vTexcoord.y + _y * dgh *_check_range);
							vec4 _check_depth_color = texture2D( surf_depth, _check_texcoord );
							float _check_dist = _check_depth_color.r;
							if (abs(_my_dist_to_cam - _check_dist) < _treshold_dist2)
								{
									_valid_px2 += 1.;
									vec4 _check_base_color = texture2D( surf_color, _check_texcoord );
									_valid_mul += _check_base_color.b;
								
								}
						}
				
				}
			if (_valid_px2 > 1.)
				{
					_valid_mul /= _valid_px2;
					if (_valid_mul > _shade_step1)
						{
							float _max = max(max(_base_color.r,_base_color.g),_base_color.b);
							if (_base_color.r == _max)	{_base_color.r *= _color_mul_max;};
							if (_base_color.g == _max)	{_base_color.g *= _color_mul_max;};
							if (_base_color.b == _max)	{_base_color.b *= _color_mul_max;};
						}
					if (_valid_mul > _shade_step2)
						{
							float _max = max(max(_base_color.r,_base_color.g),_base_color.b);
							if (_base_color.r == _max)	{_base_color.r *= _color_mul_max;};
							if (_base_color.g == _max)	{_base_color.g *= _color_mul_max;};
							if (_base_color.b == _max)	{_base_color.b *= _color_mul_max;};
						}
				
					if (_valid_mul < -_shade_step1)
						{
							float _min = min(min(_base_color.r,_base_color.g),_base_color.b);
							if (_base_color.r != _min)	{_base_color.r *= _color_mul_min;};
							if (_base_color.g != _min)	{_base_color.g *= _color_mul_min;};
							if (_base_color.b != _min)	{_base_color.b *= _color_mul_min;};
						}
					if (_valid_mul < -_shade_step2)
						{
							float _min = min(min(_base_color.r,_base_color.g),_base_color.b);
							if (_base_color.r != _min)	{_base_color.r *= _color_mul_min;};
							if (_base_color.g != _min)	{_base_color.g *= _color_mul_min;};
							if (_base_color.b != _min)	{_base_color.b *= _color_mul_min;};
						}
				}
		}
		
    gl_FragColor = _base_color;
}
