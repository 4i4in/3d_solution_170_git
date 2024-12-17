function exe_return_menus_struct()
{
	var _struct = 
		{
			menus_menu :			exe_return_menus_menu_struct(),
			test_menu :				exe_return_test_menu_struct(),
			mouse_menu :			exe_return_mouse_menu_struct(),
			keyboard_menu :			exe_return_keyboard_menu_struct(),
			pad_menu :				exe_return_pad_menu_struct(),
			cam_menu :				exe_return_cam_menu_struct(),
			obj_editor :			exe_return_obj_editor_menu_struct(),
			graphic_control :		exe_return_graphic_control_menu_struct(),
			srf_by_mouse_menu :		exe_return_srf_by_mouse_menu_struct(),
			time_control_menu :		exe_return_time_control_menu_struct(),
			
			simple_gameplay_menu :	exe_return_simple_gameplay_menu_struct(),
		};
	return(_struct);
}