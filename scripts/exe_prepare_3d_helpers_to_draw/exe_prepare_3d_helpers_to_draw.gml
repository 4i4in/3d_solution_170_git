function exe_prepare_3d_helpers_to_draw(_current_cam)
{
	//if array_length(draw_3d_array_static) < 1	{	draw_3d_array_static = exe_grab_static_to_array(_current_cam);};
	

	if array_length(map3d.temporary_helpers) > 0
		{
			var _draw_3d_array = [];
			_draw_3d_array = exe_grab_temporary_helpers_to_array(_current_cam,_draw_3d_array);	
		}
	else
		{
			var _draw_3d_array = exe_grab_static_to_array(_current_cam,0,0,1);
			_draw_3d_array = exe_grab_controled_to_array(_current_cam,_draw_3d_array,0,0,1);
		}
	
	return(_draw_3d_array);
}