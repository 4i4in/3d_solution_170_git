varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float dgw;
uniform float dgh;

uniform sampler2D surf_color;
uniform sampler2D surf_normals;
uniform sampler2D surf_depth;
uniform sampler2D surf_xyz;

uniform float _mark_hash;
uniform float _mark_part;
uniform float _draw_lines;
uniform float _check_distance_limit;
uniform float _treshold_dist1;

uniform float _line_thicknes_max;


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
	vec4 _sample_color = texture2D( surf_color, v_vTexcoord );
	vec3 _base3_color =		vec3(decodeColor(_sample_color.r));
	vec4 _my_xyz = texture2D( surf_xyz, v_vTexcoord );
	
	vec4 _base_color = vec4(_base3_color.r,_base3_color.g,_base3_color.b,1.);
	
	vec4 _nsmaple = texture2D( surf_normals, v_vTexcoord );
	vec3 _my_sample_normal =  fromNormalColor(vec3(_nsmaple.r,_nsmaple.g,_nsmaple.b));
	_my_sample_normal = normalize(_my_sample_normal);
	
	vec4 _depth_color = texture2D( surf_depth, v_vTexcoord );
	
	float _my_dist_to_cam = _depth_color.r;	float _my_hash = _depth_color.g;	float _my_part = _depth_color.b;
	
	float _line_tmax = clamp(_line_thicknes_max,0.,7.);
	
	float _valid_px1 = 1.;
	float _valid_px2 = 1.;
	float _valid_px3 = 1.;
	float _hash_pixel = 0.;
	float _part_pixel = 0.;
	float _check_range = _check_distance_limit / _my_dist_to_cam;
	_check_range = clamp(_check_range,1.,_line_tmax);
	_check_range = clamp(_check_range,1.,7.);
	for(float _x = -_check_range; _x < _check_range + 1.; _x += 1.)
		{
			for(float _y = -_check_range; _y < _check_range + 1.; _y += 1.)
				{
					vec2 _check_texcoord = vec2(v_vTexcoord.x + _x * dgw, v_vTexcoord.y + _y * dgh);
					vec4 _check_depth_color = texture2D( surf_depth, _check_texcoord );
					float _check_dist = _check_depth_color.r;
					if (_my_dist_to_cam - _check_dist > _treshold_dist1)		{_valid_px1 += 1.;}
					
					float _check_hash = _check_depth_color.g;
					float _check_part = _check_depth_color.b;
					if (floor(_my_hash) != floor(_check_hash))	{_valid_px3 += 1.;}
					
					if (_my_dist_to_cam > _check_dist)
						{
							vec4 _check_sample = texture2D( surf_color, _check_texcoord );
							vec3 _check_color = vec3(decodeColor(_check_sample.r));
							if (_base_color.r + _base_color.g + _base_color.b < _check_color.r + _check_color.g + _check_color.b)
								{
									vec3 _check_normal = vec3(decodeColor(_check_sample.g));
									_check_normal = fromNormalColor(_check_normal);
									normalize(_check_normal);
									float _dotN = dot(_my_sample_normal,_check_normal);
							
									vec4 _check_xyz = texture2D( surf_xyz, _check_texcoord );
									if ((_my_xyz.z < _check_xyz.z)	&&	(_dotN > 0.)	&&	(_dotN < 0.99))
										{
											_valid_px2 += 1.;
										}
								}
						}
					if ((_my_hash != _mark_hash)	&& (_check_hash == _mark_hash))
						{
							_hash_pixel +=1.;
						}
					if ((_my_part != _mark_part)	&& (_check_part == _mark_part)	&& (_check_hash == _mark_hash))
						{
							_part_pixel +=1.;
						}
				}
		}
	if (_valid_px1 > 1.)
		{
			float _mul = _valid_px1 / (_check_range*_check_range);
			_base_color /= (1.+_mul);
			_base_color = vec4(_base_color.r,_base_color.g,_base_color.b,1.);
			
		}
	if (_valid_px2 > _line_tmax*_line_tmax)//*0.75)
		{	
			float _mul = _valid_px2 / (_check_range*_check_range);
			_base_color /= (1.+_mul);
			_base_color = vec4(_base_color.r,_base_color.g,_base_color.b,1.);
		}
	if (_valid_px3 > 1.)
		{
			float _mul = _valid_px3 / (_my_dist_to_cam);
			_base_color /= (1.+_mul);
			_base_color = vec4(_base_color.r,_base_color.g,_base_color.b,1.);
		}
	if (_hash_pixel > 0.)
		{
			_base_color = vec4(1.,1.,0.,1.);
		}
	if (_part_pixel > 0.)
		{
			_base_color = vec4(0.,0.,1.,1.);
		}
	if (_valid_px1 + _valid_px3 > 2.)	{gl_FragColor = _base_color;}
	else if	(_hash_pixel > 0. )			{gl_FragColor = _base_color;}
	else if	(_part_pixel > 0. )			{gl_FragColor = _base_color;}
    
}
