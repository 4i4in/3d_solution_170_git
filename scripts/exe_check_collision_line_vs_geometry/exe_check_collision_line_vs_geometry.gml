function exe_check_collision_line_vs_geometry(_colision_line)
{
	var _cp1 = _colision_line[0];
	var _cp2 = _colision_line[1];
		
	var _refer_to_arr = [];
	var _chunk_adress = exe_return_point_in_chunk(map3d.world_settings.chunknumber,	map3d.world_settings.chunksize,	_cp1);
	if is_array(_chunk_adress)	{_refer_to_arr = exe_push_adress_to_array(_refer_to_arr,_chunk_adress);};
	
	var _chunk_adress = exe_return_point_in_chunk(map3d.world_settings.chunknumber,	map3d.world_settings.chunksize,	_cp2);
	if is_array(_chunk_adress)	{_refer_to_arr = exe_push_adress_to_array(_refer_to_arr,_chunk_adress);};
	
	var _colision = [];
	for(var _rta = 0; _rta < array_length(_refer_to_arr); _rta++)
		{
			var _xref = _refer_to_arr[_rta][0];
			var _yref = _refer_to_arr[_rta][1];
			var _zref = _refer_to_arr[_rta][2];
			var _triangle_array_to_check = map3d.static_colider_arr[_xref][_yref][_zref];
			
			if array_length(_triangle_array_to_check) > 1	//first is time stamp from game_time
				{
					for(var _tia = 1; _tia < array_length(_triangle_array_to_check); _tia++)
						{
							var _triangle_here = _triangle_array_to_check[_tia];
							_colision = exe_calculate_line_vs_triangle3(_colision,_cp1,_cp2,_triangle_here);
						}
				}
		}
	return(_colision);
}