function exe_map3d_add_helpers_grid(_map,_spread,_repeat)
{
	for(var _x = 0; _x < _repeat; _x++)
		{
			for(var _y = 0; _y < _repeat; _y++)
				{
					for(var _z = 0; _z < _repeat; _z++)
						{
							var _xx = _x * _spread;
							var _yy = _y * _spread;
							var _zz = _z * _spread;
							
							var _posMat = matrix_build(_xx, _yy, _zz, 0, 0, 0, 1, 1, 1);
							
							var _colision_model = -1;
							var _name = "grid_helper";
							var _control = -1;
							var _hash = sha1_string_unicode(string(map3d));
							
							var _v_submit = exe_return_v_submit(_posMat,1);
							
							var _vbuff1 = vbuff_bs_x_bs_cube_oriented;
							var _tex1 = sprite_get_texture(tex_cube_oriented,0);//color
							var _tex1n = sprite_get_texture(tex_cube_oriented,1);//color
							
							var _vbuffs = [[_vbuff1],[_tex1],[_tex1n]];
							var _obj = [_posMat,_vbuffs,_colision_model,_name,_control,_hash,_v_submit];
							array_push(_map.helpers,_obj);
						}
				}
		}
		
		
	var _posMat = matrix_build(500, 200, 500, 0, 0, 0, 1, 1, 1);
							
	var _colision_model = -1;
	var _name = "grid_helper";
	var _control = -1;
	var _hash = sha1_string_unicode(string(map3d));
							
	var _v_submit = exe_return_v_submit(_posMat,1);
							
	var _vbuff1 = wall512x256x64;
	var _tex1 = sprite_get_texture(tex_camo1,0);//color
	var _tex1n = sprite_get_texture(tex_camo1,1);//color
							
	var _vbuffs = [[_vbuff1],[_tex1],[_tex1n]];
	var _obj = [_posMat,_vbuffs,_colision_model,_name,_control,_hash,_v_submit];
	array_push(_map.helpers,_obj);
							
	
	
	
	
	
	var _posMat = matrix_build(550, 550, 350, 0, 0, 0, 1, 1, 1);
							
	var _colision_model = -1;
	var _name = "grid_helper";
	var _control = -1;
	var _hash = sha1_string_unicode(string(map3d));
							
	var _v_submit = exe_return_v_submit(_posMat,1);
							
	var _vbuff1 = vbuff_d20;
	var _tex1 = sprite_get_texture(tex_helpers,0);//color
	var _tex1n = sprite_get_texture(tex_helpers,1);//color
							
	var _vbuffs = [[_vbuff1],[_tex1],[_tex1n]];
	var _obj = [_posMat,_vbuffs,_colision_model,_name,_control,_hash,_v_submit];
	array_push(_map.helpers,_obj);
	
	
	
	
	
	var _posMat = matrix_build(500, 500, 500, 0, 0, 0, 1, 1, 1);
							
	var _colision_model = -1;
	var _name = "grid_helper";
	var _control = -1;
	var _hash = sha1_string_unicode(string(map3d));
							
	var _v_submit = exe_return_v_submit(_posMat,1);
							
	var _vbuff1 = vbuff_100x100_inverted_orientation;
	var _tex1 = sprite_get_texture(tex_cube_oriented_inside,0);//color
	var _tex1n = sprite_get_texture(tex_cube_oriented_inside,1);//color
							
	var _vbuffs = [[_vbuff1],[_tex1],[_tex1n]];
	var _obj = [_posMat,_vbuffs,_colision_model,_name,_control,_hash,_v_submit];
	array_push(_map.helpers,_obj);
							
	
	
	
	var _posMat = matrix_build(0, 0, 0, 0, 0, 0, 1, 1, 1);
							
	var _colision_model = -1;
	var _name = "grid_helper";
	var _control = -1;
	var _hash = sha1_string_unicode(string(map3d));
							
	var _v_submit = exe_return_v_submit(_posMat,1);
							
	var _vbuff1 = vbuff_dir_arrow;
	var _tex1 = sprite_get_texture(tex_helpers,0);//color
	var _tex1n = sprite_get_texture(tex_helpers,1);//color
							
	var _vbuffs = [[_vbuff1],[_tex1],[_tex1n]];
	var _obj = [_posMat,_vbuffs,_colision_model,_name,_control,_hash,_v_submit];
	array_push(_map.helpers,_obj);
							
	
	
	var _posMat = matrix_build(0, 0, 0, 0, 0, 0, 1, 1, 1);
							
	var _colision_model = -1;
	var _name = "grid_helper";
	var _control = -1;
	var _hash = sha1_string_unicode(string(map3d));
							
	var _v_submit = exe_return_v_submit(_posMat,1);
							
	var _vbuff1 = vbuff_flat_terrain;
	var _tex1 = sprite_get_texture(tex_terrain,0);//color
	var _tex1n = sprite_get_texture(tex_terrain,1);//color
							
	var _vbuffs = [[_vbuff1],[_tex1],[_tex1n]];
	var _obj = [_posMat,_vbuffs,_colision_model,_name,_control,_hash,_v_submit];
	array_push(_map.helpers,_obj);
	
	
	return(_map);
}