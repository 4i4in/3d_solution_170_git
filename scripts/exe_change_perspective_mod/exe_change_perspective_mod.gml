function exe_change_perspective_mod(_carry)
{
	var _current_cam = menus.cam_menu.show_cam;
	var _current_cam_name = "cam"+string(_current_cam);
	
	cam_struct[$ _current_cam_name][$ "perspective_mod"] += _carry[0];
	
	if abs(cam_struct[$ _current_cam_name][$ "perspective_mod"]) < 1.
		{
			if sign(_carry[0])	< 0	{cam_struct[$ _current_cam_name][$ "perspective_mod"] = -1.;};
			if sign(_carry[0])	> 0	{cam_struct[$ _current_cam_name][$ "perspective_mod"] = 1.;};
			
			mouse_struct.mtime = 1;
		}
	else
		{
			mouse_struct.mtime = 5;
		}
	reset_current_menu_array = 1;
}