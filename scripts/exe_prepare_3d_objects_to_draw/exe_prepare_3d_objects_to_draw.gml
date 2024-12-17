function exe_prepare_3d_objects_to_draw(_current_cam)
{
	//if array_length(draw_3d_array_static) < 1	{	draw_3d_array_static = exe_grab_static_to_array(_current_cam);};
	var _draw_3d_array = exe_grab_static_to_array(_current_cam,1,1,0);
	_draw_3d_array = exe_grab_controled_to_array(_current_cam,_draw_3d_array,1,1,0);

	return(_draw_3d_array);
}