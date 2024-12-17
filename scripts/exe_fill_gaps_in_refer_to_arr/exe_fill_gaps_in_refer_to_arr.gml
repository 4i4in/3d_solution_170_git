function exe_fill_gaps_in_refer_to_arr(_refer_to_arr)
{
	var _x_min = 999;	var _x_max = -1;
	var _y_min = 999;	var _y_max = -1;
	var _z_min = 999;	var _z_max = -1;
	
	for(var _ii = 0; _ii < array_length(_refer_to_arr); _ii++)
		{
			if _refer_to_arr[_ii][0] < _x_min	{_x_min = variable_clone(_refer_to_arr[_ii][0]);};
			if _refer_to_arr[_ii][0] > _x_max	{_x_max = variable_clone(_refer_to_arr[_ii][0]);};
			
			if _refer_to_arr[_ii][1] < _y_min	{_y_min = variable_clone(_refer_to_arr[_ii][1]);};
			if _refer_to_arr[_ii][1] > _y_max	{_y_max = variable_clone(_refer_to_arr[_ii][1]);};
			
			if _refer_to_arr[_ii][2] < _z_min	{_z_min = variable_clone(_refer_to_arr[_ii][2]);};
			if _refer_to_arr[_ii][2] > _z_max	{_z_max = variable_clone(_refer_to_arr[_ii][2]);};
		}
		
	for(var _xx = _x_min - map3d.world_settings.chunk_check_range; _xx < _x_max + 1 + map3d.world_settings.chunk_check_range; _xx++)
		{
			for(var _yy = _y_min - map3d.world_settings.chunk_check_range; _yy < _y_max + 1 + map3d.world_settings.chunk_check_range; _yy++)
				{
					for(var _zz = _z_min - map3d.world_settings.chunk_check_range; _zz < _z_max + 1 + map3d.world_settings.chunk_check_range; _zz++)
						{
							var _out_of_range = 0;
							if _xx < 0	{_out_of_range = 1;};
							if _xx > map3d.world_settings.chunknumber-1 {_out_of_range = 1;};
							if _yy < 0	{_out_of_range = 1;};
							if _yy > map3d.world_settings.chunknumber-1 {_out_of_range = 1;};
							if _zz < 0	{_out_of_range = 1;};
							if _zz > map3d.world_settings.chunknumber-1 {_out_of_range = 1;};
	
							if _out_of_range < 1
								{
									var _chunk_adress = [_xx,_yy,_zz];
									_refer_to_arr = exe_push_adress_to_array(_refer_to_arr,_chunk_adress);
								}
						}
				}
		}
	
	return(_refer_to_arr);
}