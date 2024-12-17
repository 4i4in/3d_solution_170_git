function exe_vbuff_flat_terrain(_sqr_size,_spacing,_randomnes,_input_spr,_input_scale,_tesel_spacing_mul,_pallete_colors)
{
	vbuff_flat_terrain = vertex_create_buffer();
	var _vbuff_keep = vbuff_flat_terrain;
	vertex_begin(_vbuff_keep, vformat);
	
	
	var _sqr_pl_size = ceil(_sqr_size/_spacing);
	
	var _temp_surf = surface_create(_sqr_pl_size,_sqr_pl_size);
	surface_set_target(_temp_surf);
	draw_clear(c_black);
	draw_sprite_ext(_input_spr,0,0,0,	ceil(sprite_get_width(_input_spr)/_sqr_pl_size),
										ceil(sprite_get_height(_input_spr)/_sqr_pl_size),
										0,-1,1);
	surface_reset_target();
	
	
	var _pl = array_create(_sqr_pl_size);
	for(var _i = 0; _i < array_length(_pl); _i++)
		{
			_pl[_i] = array_create(_sqr_pl_size);
		}
	for(var _xx = 0; _xx < array_length(_pl); _xx++)
		{
			for(var _yy = 0; _yy < array_length(_pl[_xx]); _yy++)
				{
					var _get_color = surface_getpixel(_temp_surf,_xx,_yy);
					var _h_value = (color_get_red(_get_color) * 1/_spacing) * _input_scale[0];
					var _h_boost = (color_get_blue(_get_color) * 1/_spacing) * _input_scale[1];
					
					var _point = [	_xx * _spacing + irandom(_randomnes)-_randomnes/2,
									_yy * _spacing + irandom(_randomnes)-_randomnes/2,
									irandom(_randomnes*2)	+ _h_value + _h_boost];
									
					if _point[2] > _sqr_size	{_point[2] = _sqr_size;};
					_pl[_xx][_yy] = _point;
				}
		}
	surface_free(_temp_surf);	
	
	//add one x more and fit positions
	array_push(_pl,variable_clone(_pl[0]));
	var _fix_array = _pl[array_length(_pl)-1];
	for(var _ix = 0; _ix < array_length(_fix_array); _ix++)
		{
			_fix_array[_ix][0] += map3d.world_settings.world_sqr_size; 
		}
	for(var _xx = 0; _xx < array_length(_pl); _xx++)
		{
			var _first_pos = variable_clone(_pl[_xx][0]);
			_first_pos[1] += map3d.world_settings.world_sqr_size;
			array_push(_pl[_xx],variable_clone(_first_pos));
		}
	
		
	for(var _xx = 0; _xx < array_length(_pl)-1; _xx++)
		{
			for(var _yy = 0; _yy < array_length(_pl[_xx])-1; _yy++)
				{
					if (_xx + _yy) mod 2 == 0
						{
							var _p1_t1 = _pl[_xx][_yy];		var _p2_t1 = _pl[_xx+1][_yy];	var _p3_t1 = _pl[_xx+1][_yy+1];
							var _p1_t2 = _pl[_xx+1][_yy+1];	var _p2_t2 = _pl[_xx][_yy+1];	var _p3_t2 = _pl[_xx][_yy];
				
							var _tex_part = [	_pallete_colors[0][0],_pallete_colors[0][1],0.0625];
							//if _xx == 0	{_tex_part = [_pallete_colors[0][0]+2,_pallete_colors[0][1],0.0625]};
							//if _xx == array_length(_pl[_xx])-2	{_tex_part = [_pallete_colors[0][0]+3,_pallete_colors[0][1],0.0625];};
							//if _yy == 0	{_tex_part = [_pallete_colors[0][0]+4,_pallete_colors[0][1],0.0625];};
							//if _yy == array_length(_pl[_xx])-2	{_tex_part = [_pallete_colors[0][0]+5,_pallete_colors[0][1],0.0625];};
							
							if	exe_check_triangle_size(_p1_t1,_p2_t1,_p3_t1,_tesel_spacing_mul*_spacing) > 0	&&
								exe_check_triangle_size(_p1_t2,_p2_t2,_p3_t2,_tesel_spacing_mul*_spacing) > 0
								{
									
									var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
									_vbuff_keep = exe_create_triangle(_vbuff_keep, _p1_t1, _p2_t1, _p3_t1,_uv_mode);
							
									var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
									_vbuff_keep = exe_create_triangle(_vbuff_keep, _p1_t2, _p2_t2, _p3_t2,_uv_mode);
								}
							else	{_vbuff_keep = exe_tesselate(_p1_t1,_p2_t1,_p3_t1,	_p1_t2,_p2_t2,_p3_t2,	0,	_tex_part,	_spacing,_vbuff_keep,_randomnes,_tesel_spacing_mul);};
							
							
						}
					else
						{
							var _p1_t1 = _pl[_xx][_yy];		var _p2_t1 = _pl[_xx+1][_yy];	var _p3_t1 = _pl[_xx][_yy+1];
							var _p1_t2 = _pl[_xx][_yy+1];	var _p2_t2 = _pl[_xx+1][_yy];	var _p3_t2 = _pl[_xx+1][_yy+1];
							
							var _tex_part = [	_pallete_colors[1][0],_pallete_colors[1][1],0.0625];
							//if _xx == 0	{_tex_part = [_pallete_colors[0][0]+2,_pallete_colors[0][1],0.0625]};
							//if _xx == array_length(_pl[_xx])-2	{_tex_part = [_pallete_colors[0][0]+3,_pallete_colors[0][1],0.0625];};
							//if _yy == 0	{_tex_part = [_pallete_colors[0][0]+4,_pallete_colors[0][1],0.0625];};
							//if _yy == array_length(_pl[_xx])-2	{_tex_part = [_pallete_colors[0][0]+5,_pallete_colors[0][1],0.0625];};
							
							if	exe_check_triangle_size(_p1_t1,_p2_t1,_p3_t1,_tesel_spacing_mul*_spacing) > 0	&&
								exe_check_triangle_size(_p1_t2,_p2_t2,_p3_t2,_tesel_spacing_mul*_spacing) > 0
								{
									var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
									_vbuff_keep = exe_create_triangle(_vbuff_keep, _p1_t1, _p2_t1, _p3_t1,_uv_mode);
							
									var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
									_vbuff_keep = exe_create_triangle(_vbuff_keep, _p1_t2, _p2_t2, _p3_t2,_uv_mode);
								}
							else	{_vbuff_keep = exe_tesselate(_p1_t1,_p2_t1,_p3_t1,	_p1_t2,_p2_t2,_p3_t2,	1,	_tex_part,	_spacing,_vbuff_keep,_randomnes,_tesel_spacing_mul);};
						}
				}
		}

	vertex_end(_vbuff_keep);
	//vertex_freeze(_vbuff_keep);
}