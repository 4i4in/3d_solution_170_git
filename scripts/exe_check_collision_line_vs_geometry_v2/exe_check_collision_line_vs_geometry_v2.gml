function exe_check_collision_line_vs_geometry_v2(_cp1,_cp2,_inbuff,_precision,_fast_check)
{
	_fast_check = 0; //locked for now, source: map3d.world_settings.perform_fast_check
	var _refer_to_arr = [];
	if _fast_check < 1
		{
			var _chunk_adress = exe_return_point_in_chunk(map3d.world_settings.chunknumber,	map3d.world_settings.chunksize,	_cp1);
			if is_array(_chunk_adress)	{_refer_to_arr = exe_push_adress_to_array(_refer_to_arr,_chunk_adress);};
	
			var _chunk_adress = exe_return_point_in_chunk(map3d.world_settings.chunknumber,	map3d.world_settings.chunksize,	_cp2);
			if is_array(_chunk_adress)	{_refer_to_arr = exe_push_adress_to_array(_refer_to_arr,_chunk_adress);};
	
			//fill gaps to check
			if array_length(_refer_to_arr) > 0	{_refer_to_arr = exe_fill_gaps_in_refer_to_arr(_refer_to_arr);};
		}
	else	{_refer_to_arr = map3d.world_settings.fast_check_scheeme;};
		
	var _colisions = [];
	
	var _length = point_distance_3d(_cp1[0],_cp1[1],_cp1[2],_cp2[0],_cp2[1],_cp2[2]);
	var _mul_max = ceil(_length/_precision);
	var _dir_vec = vec_normalize(vec3d_subtract(_cp1,_cp2));
	_dir_vec[0] *= _precision;	_dir_vec[1] *= _precision;	_dir_vec[2] *= _precision;
	
	for(var _lcheck = 0; _lcheck < _mul_max; _lcheck++)
		{
			if _lcheck == _mul_max -1
				{
					var _p1 = [_cp1[0] + _lcheck * _dir_vec[0],_cp1[1] + _lcheck * _dir_vec[1],_cp1[2] + _lcheck * _dir_vec[2]];
					var _p2 = _cp2;
				}
			else
				{
					var _p1 = [_cp1[0] + _lcheck * _dir_vec[0],_cp1[1] + _lcheck * _dir_vec[1],_cp1[2] + _lcheck * _dir_vec[2]];
					var _p2 = [_cp1[0] + (_lcheck+1) * _dir_vec[0],_cp1[1] + (_lcheck+1) * _dir_vec[1],_cp1[2] + (_lcheck+1) * _dir_vec[2]];
				}
			if array_length(_refer_to_arr) > 0
				{
					for(var _rta = 0; _rta < array_length(_refer_to_arr); _rta++)
						{
							var _xref = _refer_to_arr[_rta][0];
							var _yref = _refer_to_arr[_rta][1];
							var _zref = _refer_to_arr[_rta][2];
					
							var _triangle_array_to_check = map3d.static_colider_arr[_xref][_yref][_zref];
							if array_length(_triangle_array_to_check) > 0
								{
									for(var _tia = 0; _tia < array_length(_triangle_array_to_check); _tia++)
										{
											var _triangle_here = _triangle_array_to_check[_tia];
											_colisions = exe_calculate_line_vs_triangle(_colisions,_p1,_p2,_triangle_here,_inbuff,"static");
										}
								}
						}
				}
		}
	return(_colisions);
}