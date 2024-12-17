//precision highp float;

varying vec2 v_vTexcoord;
varying vec3 v_Normal;
//varying highp float v_DistanceToCamera;
varying float v_DistanceToCamera;

varying vec3 v_WorldPosition;//real world xyz

uniform float draw_grid;
uniform float gridSpacingX;
uniform float gridSpacingY;
uniform float gridSpacingZ;
uniform float gridXtreshold;
uniform float gridYtreshold;
uniform float gridZtreshold;

uniform float is_material;//material true or texture

float cartoon_tex_shift = 0.0625;
float cartoon_shades = 4.;

uniform float dgw;
uniform float dgh;
uniform float cartoon_on;
uniform float game_time;

//uniform highp float obj_hash;
uniform float obj_hash;
uniform float chosen_obj_hash;
uniform float obj_part_num;

uniform sampler2D noise_normal_texture;

float tex_size = 256.;
//uniform highp float obj_hash;
uniform float _sol_vec[3];
uniform float _sol_col[3];
uniform float _NdotL_min_max[2];
uniform float _NdotL_mul[4];
uniform float _NdotL_lowpass[4];

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
	//grid calc
	float _is_grid_lineX = 0.;	float _is_grid_lineY = 0.;	float _is_grid_lineZ = 0.;
	if (draw_grid > 0.)
		{
			if (mod(v_WorldPosition.x,gridSpacingX) < gridXtreshold)	{_is_grid_lineX = 1.;};
			if (mod(v_WorldPosition.x,gridSpacingX) > gridSpacingX - gridXtreshold)	{_is_grid_lineX = 1.;};
			
			if (mod(v_WorldPosition.y,gridSpacingY) < gridYtreshold)	{_is_grid_lineY = 1.;};
			if (mod(v_WorldPosition.y,gridSpacingY) > gridSpacingY - gridYtreshold)	{_is_grid_lineY = 1.;};
			
			if (mod(v_WorldPosition.z,gridSpacingZ) < gridZtreshold)	{_is_grid_lineZ = 1.;};
			if (mod(v_WorldPosition.z,gridSpacingZ) > gridSpacingZ - gridZtreshold)	{_is_grid_lineZ = 1.;};
		}
	//grid calc
	
	vec4 _base_color = texture2D( gm_BaseTexture, v_vTexcoord );
	
	float _is_color = 0.;
	float _is_transparent = 0.;
	float _is_glow = 0.;
	
	if (_base_color.a < 0.75)	{	_is_color = 0.;	_is_transparent = 1.;}
	else						{	_is_color = 1.;	};
	
	
	vec3 tex_WorldPosition = vec3(v_WorldPosition.x/tex_size,v_WorldPosition.y/tex_size,v_WorldPosition.z/tex_size);
	vec4 _normal_displace = vec4(0.,0.,1.,1.);	vec3 _sample_normal_v3 = vec3(0.,0.,1.);	vec3 _wrong_sample_normal_v3 = vec3(0.,0.,1.);	
	
	
	if (is_material > 0.)//noisy normal
		{
			vec4 _normal_displace1 = texture2D(noise_normal_texture, vec2(tex_WorldPosition.x,tex_WorldPosition.y) );
			vec4 _normal_displace2 = texture2D(noise_normal_texture, vec2(tex_WorldPosition.x,tex_WorldPosition.z) );
			vec4 _normal_displace3 = texture2D(noise_normal_texture, vec2(tex_WorldPosition.y,tex_WorldPosition.z) );
	
			_normal_displace = (_normal_displace1 + _normal_displace2 + _normal_displace3)/3. -0.5;
			_normal_displace *2.;
		}
	else
		{
			_normal_displace = texture2D(noise_normal_texture,v_vTexcoord);
			_normal_displace -=0.5;	_normal_displace *2.;
		}
	vec4 _wrong_normal_displace = _normal_displace;
	
	_normal_displace.z = 1.;
	_normal_displace = normalize(_normal_displace);
	_sample_normal_v3 = vec3(
							v_Normal.x * _normal_displace.x	+v_Normal.x * _normal_displace.y	+v_Normal.x * _normal_displace.z,
							v_Normal.y * _normal_displace.x	+v_Normal.y * _normal_displace.y	+v_Normal.y * _normal_displace.z,
							v_Normal.z * _normal_displace.x	+v_Normal.z * _normal_displace.y	+v_Normal.z * _normal_displace.z
							);
	normalize(_sample_normal_v3);	
	
	if (is_material > 0.)//noisy normal
		{
			_wrong_normal_displace = normalize(_wrong_normal_displace);
			_wrong_sample_normal_v3 = vec3(
									v_Normal.x * _wrong_normal_displace.x	+v_Normal.x * _wrong_normal_displace.y	+v_Normal.x * _wrong_normal_displace.z,
									v_Normal.y * _wrong_normal_displace.x	+v_Normal.y * _wrong_normal_displace.y	+v_Normal.y * _wrong_normal_displace.z,
									v_Normal.z * _wrong_normal_displace.x	+v_Normal.z * _wrong_normal_displace.y	+v_Normal.z * _wrong_normal_displace.z
									);
		}
	
	
	
	//sol
	
	vec3 lightDirection = vec3(_sol_vec[0],_sol_vec[1],_sol_vec[2]);
	lightDirection = normalize(lightDirection);
	vec3 light_color = vec3(_sol_col[0],_sol_col[1],_sol_col[2]);
	
	/*
	float amplitude = 1.0;
	float frequency = 0.005;
	float _x = sin(game_time * frequency) * amplitude;
	float _y = cos(game_time * frequency) * amplitude;
	vec3 lightDirection = normalize(vec3(_x, _y, -1.));
	*/
	//vec3 lightDirection = normalize(vec3(1, 1, -1));
	
	
	
	vec3 _result_color = vec3(0.,0.,0.);
	float _keep_NdotL_dark_vision = 0.;
	if (cartoon_on == 1.)
		{
			float NdotL = -dot(_sample_normal_v3, lightDirection);
			
			//in shade low pass
			if (_NdotL_lowpass[0] > 0.)
				{
					if (NdotL < _NdotL_lowpass[2])
						{
							float _diff = abs(_NdotL_lowpass[1]) + abs(_NdotL_lowpass[2]);
							NdotL += _diff;
							NdotL /= max(_diff,_NdotL_lowpass[3]);
							
							if (NdotL > _NdotL_lowpass[2])	{NdotL = _NdotL_lowpass[2];};
						}
				}
				
			float _NdotL_multipler = _NdotL_mul[0];
			if ((_NdotL_mul[1] > 0.)	&& (NdotL > _NdotL_mul[2]))	{_NdotL_multipler = _NdotL_mul[3];}//force bliding colors for dark vision
			
			NdotL *= _NdotL_multipler;
			light_color *= NdotL;
			
			float _NdotL_min = _NdotL_min_max[0];
			float _NdotL_max = _NdotL_min_max[1];
			if (NdotL < _NdotL_min)	{NdotL = _NdotL_min;};
			if (NdotL > _NdotL_max)	{NdotL = _NdotL_max;};
				
			if (is_material > 0.)//noisy normal
				{
					float _wrong_NdotL = -dot(_wrong_sample_normal_v3, lightDirection);
					//_wrong_NdotL = (_wrong_NdotL + NdotL)/2.;
					
					float _Ushift = _wrong_normal_displace.x *cartoon_shades;
					if (abs(_wrong_normal_displace.y) > abs(_wrong_normal_displace.x))	{_Ushift = _wrong_normal_displace.y*cartoon_shades;};
					if (abs(_wrong_normal_displace.z) > abs(_Ushift))				{_Ushift = _wrong_normal_displace.z*cartoon_shades;};
					_Ushift = clamp(_Ushift,-2.,2.);
					float _Vshift = clamp((NdotL * cartoon_shades), -2.,2.);
					
					_base_color = texture2D( gm_BaseTexture, vec2(	v_vTexcoord.x - sign(_Ushift) * floor(abs(_Ushift)) *cartoon_tex_shift,
																	v_vTexcoord.y - sign(_Vshift) * floor(abs(_Vshift)) *cartoon_tex_shift) );
					vec4 _bc_min = texture2D( gm_BaseTexture, vec2(	v_vTexcoord.x - 2. *cartoon_tex_shift,	v_vTexcoord.y + 2. *cartoon_tex_shift) );
					vec4 _bc_max = texture2D( gm_BaseTexture, vec2(	v_vTexcoord.x + 2. *cartoon_tex_shift,	v_vTexcoord.y - 2. *cartoon_tex_shift) );
					_result_color =	vec3(
									_base_color.r * light_color.r + sign(_wrong_NdotL) *_wrong_NdotL*_wrong_NdotL*_base_color.r,
									_base_color.g * light_color.g + sign(_wrong_NdotL) *_wrong_NdotL*_wrong_NdotL*_base_color.g,
									_base_color.b * light_color.b + sign(_wrong_NdotL) *_wrong_NdotL*_wrong_NdotL*_base_color.b
								);
					_result_color = clamp(_result_color, vec3(_bc_min.r,_bc_min.g,_bc_min.b),vec3(_bc_max.r,_bc_max.g,_bc_max.b));
					
				}
			else	//no material
				{
					//in shade low pass
					_result_color =	vec3(
									_base_color.r * light_color.r + sign(NdotL) *NdotL*NdotL*_base_color.r,
									_base_color.g * light_color.g + sign(NdotL) *NdotL*NdotL*_base_color.g,
									_base_color.b * light_color.b + sign(NdotL) *NdotL*NdotL*_base_color.b
								);
					if (_NdotL_lowpass[0] > 0.)
						{	
							if (NdotL < _NdotL_lowpass[2]/2.)
								{
									_result_color = clamp(_result_color, vec3(_NdotL_lowpass[2]/2.,_NdotL_lowpass[2]/2.,_NdotL_lowpass[2]/2.),vec3(1.,1.,1.));
								}
						}
					
				}
			_keep_NdotL_dark_vision = NdotL;
		}
	else
		{
			vec4 lightAmbient = vec4(0.4, 0.4, 0.4, 1);
			float NdotL = max(0.0, -dot(_sample_normal_v3, lightDirection));
			_base_color = _base_color * vec4(min(lightAmbient + NdotL, vec4(1)).rgb, _base_color.a);
			_result_color = vec3(_base_color.r,_base_color.g,_base_color.b);
		};
	
	/* another shader
	if (chosen_obj == obj_hash)
		{
			float blink_value = sin(game_time/15.);
			if (blink_value < 0.)
				{
					_base_color.r += -blink_value/5.;
				    _base_color.g += -blink_value/5.;
					_base_color.b += (1.0 + blink_value)/5.;
				}
			else
				{
					_base_color.r += (1.0 - blink_value)/5.;
				    _base_color.g += blink_value/5.;
					_base_color.b += (1.0 - blink_value)/5.;
				}
			
		}
	*/
	
	
	//exception discardning color
	if (draw_grid > 0.)
		{
			if (_is_grid_lineX > 0.)	{_result_color = vec3(_is_grid_lineX,_is_grid_lineY,_is_grid_lineZ);};
			if (_is_grid_lineY > 0.)	{_result_color = vec3(_is_grid_lineX,_is_grid_lineY,_is_grid_lineZ);};
			if (_is_grid_lineZ > 0.)	{_result_color = vec3(_is_grid_lineX,_is_grid_lineY,_is_grid_lineZ);};
		}
		
	_result_color = clamp(_result_color,vec3(0.0), vec3(1.0));
	
	//hash selected obj
	if (chosen_obj_hash == obj_hash)
		{
			float _mix = abs(sin(	(game_time + v_WorldPosition.x + v_WorldPosition.y + v_WorldPosition.z) * 0.05	));
			_mix = clamp(_mix,0.,.5);
			float _mixR = abs(cos(	(game_time + v_WorldPosition.x + v_WorldPosition.y - v_WorldPosition.z) * 0.07	));
			float _mixG = abs(sin(	(game_time + v_WorldPosition.x - v_WorldPosition.y + v_WorldPosition.z) * 0.08	));
			float _mixB = abs(cos(	(game_time - v_WorldPosition.x + v_WorldPosition.y + v_WorldPosition.z) * 0.09	));
			_result_color = mix(_result_color,vec3(_mixR,_mixG,_mixB),_mix);
		}
	//hash selected obj
	
	vec4 _encoded_color_surf = vec4(0.,0.,0.,1);
	if (_is_color > 0.)			{_encoded_color_surf.r = encodeColor(_result_color);};
	
	_encoded_color_surf.g =		encodeColor(vec3(toNormalColor(_sample_normal_v3)));
	_encoded_color_surf.b =		_keep_NdotL_dark_vision;
	
	vec4 _encoded_color_effects = vec4(0.,0.,0.,1);
	
	gl_FragData[0] = _encoded_color_surf;	//color,normal,transparent
	gl_FragData[1] = _encoded_color_effects;
	gl_FragData[2] = vec4(v_DistanceToCamera,obj_hash,obj_part_num,1.);
	gl_FragData[3] = vec4(v_WorldPosition.x,v_WorldPosition.y,v_WorldPosition.z,1.);
}
