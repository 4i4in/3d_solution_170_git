function exe_check_all_camera_for(_question)
{
	var _sum = 0;
	var _cam_names = struct_get_names(cam_struct);
	switch(array_length(_question))
		{
			case 2:
				for(var _ii = 0; _ii < array_length(_cam_names); _ii++)
					{
						_sum += cam_struct[$ _cam_names[_ii] ][$ _question[0] ][$ _question[1] ];
					}
				break;
		
		
		}
	
	return(_sum);
}