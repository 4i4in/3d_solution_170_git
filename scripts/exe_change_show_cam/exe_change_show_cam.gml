function exe_change_show_cam(_carry)
{
	var _current_cam = menus.cam_menu.show_cam;
	var _cam_struct_names = struct_get_names(cam_struct);
	var _current_cam_name = "cam"+string(_current_cam);
	var _curent_in_array = -1;
	for(var _ii = 0; _ii < array_length(_cam_struct_names); _ii++)
		{
			if _cam_struct_names[_ii] == _current_cam_name
				{
					_curent_in_array = _ii; break;
				}
		}
	if _curent_in_array > -1
		{
			_curent_in_array += _carry[0];
		}
	else
		{
			_curent_in_array = 0;
		}
	if 	_curent_in_array < 0	{_curent_in_array = array_length(_cam_struct_names)-1;};
	if 	_curent_in_array > array_length(_cam_struct_names)-1	{_curent_in_array = 0;};	
	
	var _cam_name = string(_cam_struct_names[_curent_in_array]);
	_cam_name = string_delete(_cam_name,1,3);
	var _new_cam = real(_cam_name);
	menus.cam_menu.show_cam = _new_cam;
	
	reset_current_menu_array = 1;
}