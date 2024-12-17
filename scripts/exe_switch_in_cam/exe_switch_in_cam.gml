function exe_switch_in_cam(_carry)
{
	var _current_cam = menus.cam_menu.show_cam;
	var _current_cam_name = "cam"+string(_current_cam);
	
	cam_struct[$ _current_cam_name][$ _carry[0]][$ _carry[1]] = !cam_struct[$ _current_cam_name][$ _carry[0]][$ _carry[1]];
	
	reset_current_menu_array = 1;
}