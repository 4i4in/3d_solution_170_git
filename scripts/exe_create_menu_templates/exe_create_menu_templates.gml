function exe_create_menu_templates()
{
	var _menu_templates = [];
	
	var _push_name = "menus_menu";
	var _push_menu = exe_create_menus_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "test_menu";
	var _push_menu = exe_create_test_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "mouse_menu";
	var _push_menu = exe_create_mouse_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "keyboard_menu";
	var _push_menu = exe_create_keyboard_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "pad_menu";
	var _push_menu = exe_create_pad_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "cam_menu";
	var _push_menu = exe_create_cam_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "obj_editor";
	var _push_menu = exe_create_obj_editor_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "graphic_control_menu";
	var _push_menu = exe_create_graphic_control_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "srf_by_mouse_menu";
	var _push_menu = exe_create_srf_by_mouse_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "time_control_menu";
	var _push_menu = exe_create_time_control_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "simple_gameplay_menu";
	var _push_menu = exe_create_simple_gameplay_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	return(_menu_templates);
}