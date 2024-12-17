function exe_check_collision_line_list_vs_geometry(_colision_line_list,_check_precision,_colisions,_inbuff)
{
	for(var _line = 0;_line < array_length(_colision_line_list); _line++)
		{
			var _line_here = _colision_line_list[_line];
			var _points_to_check = [];
			
			//here we calculating point
			//now we are faking only start of the line	usign _check_precision
			var _point = _line_here[0];
			array_push(_points_to_check,_point);
			var _point = _line_here[1];
			array_push(_points_to_check,_point);
			
			switch(_check_precision)
				{
					case 1:	var _point = _line_here[0];	array_push(_points_to_check,_point);	break;
				}
			
			for(var _check_point = 0;_check_point < array_length(_points_to_check)-1;_check_point++ )
				{
					var _this_point = _points_to_check[_check_point];
					var _second_point = _points_to_check[_check_point+1];
					
					var _refer_to_arr = [];
					var _chunk_adress = exe_return_point_in_chunk(map3d.world_settings.chunknumber,	map3d.world_settings.chunksize,	_this_point);
					_refer_to_arr = exe_push_adress_to_array(_refer_to_arr,_chunk_adress);
					var _chunk_adress = exe_return_point_in_chunk(map3d.world_settings.chunknumber,	map3d.world_settings.chunksize,	_second_point);
					_refer_to_arr = exe_push_adress_to_array(_refer_to_arr,_chunk_adress);
					
					if array_length(_refer_to_arr) > 1
						{
							_refer_to_arr = exe_fill_refer_to_arr(_refer_to_arr);
						}
					
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
											_colisions = exe_calculate_line_vs_triangle(_colisions,_this_point,_second_point,_triangle_here,_inbuff,"static");
										}
								}
						}
				}
		}
	return(_colisions);
}