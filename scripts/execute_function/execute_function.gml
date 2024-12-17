function execute_function(_func,_carry,_txt)
{
	var _fexe = 0; // function_executed
	switch(_func)
		{
			//right clisk info
			case "show_rclick_info":
				if string(_txt) == string(mouse_info.txt)	{_txt="";};
				mouse_info.txt = _txt;	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
				_fexe = 1;	break;
			
			
			//menu operations
			case "exe_move_menu_by_click":	exe_move_menu_by_click(_carry);	_fexe = 1;	break;
			case "exe_min_max_menu" : exe_min_max_menu_by_click(_carry); _fexe = 1;	break;
			case "exe_swich_help_in_menu" : exe_swich_help_in_menu(_carry); _fexe = 1;	break;
			case "exe_switch_load_to_screen" : exe_switch_load_to_screen(_carry); _fexe = 1;	break;
			case "exe_change_page_in_menu" : exe_change_page_in_menu(_carry); _fexe = 1;	break;
			case "exe_start_typing_and_return" : exe_start_typing_and_return(_carry); _fexe = 1;	break;
			
			// pad menu operations
			case "exe_change_show_pad" : exe_change_show_pad(_carry); _fexe = 1;	break;
			
			// cam menu operations
			case "exe_change_show_cam" : exe_change_show_cam(_carry); _fexe = 1;	break;
			case "exe_switch_in_cam" : exe_switch_in_cam(_carry); _fexe = 1;	break;
			case "exe_change_perspective_mod" :		exe_change_perspective_mod(_carry); _fexe = 1;	break;
			case "exe_change_perspective_range" : exe_change_perspective_range(_carry); _fexe = 1;	break;
			case "exe_change_shader_settings_in_cam" : exe_change_shader_settings_in_cam(_carry); _fexe = 1;	break;
			
			// obj menu
			case "exe_change_obj_in_editor_menu" : exe_change_obj_in_editor_menu(_carry); _fexe = 1;	break;
			case "exe_obj_editor_01_switch" : exe_obj_editor_01_switch(_carry); _fexe = 1;	break;
			
			case "exe_in_obj_add_value" : exe_in_obj_add_value(_carry); _fexe = 1;	break;
			case "exe_change_dependency_reference_value" : exe_change_dependency_reference_value(_carry); _fexe = 1;	break;
			case "exe_set_clipboard_with_carry" : exe_set_clipboard_with_carry(_carry); _fexe = 1;	break;
			case "exe_enforce_pose_on_obj" : exe_enforce_pose_on_obj(_carry); _fexe = 1;	break;
			case "exe_push_anim_stack_on_obj" : exe_push_anim_stack_on_obj(_carry); _fexe = 1;	break;
			case "exe_push_detector_stack_on_obj" : exe_push_detector_stack_on_obj(_carry); _fexe = 1;	break;
			
			case "exe_obj_editor_change_anim_lerp_timer" : exe_obj_editor_change_anim_lerp_timer(_carry); _fexe = 1;	break;
			case "exe_change_part_scale_vbuff" : exe_change_part_scale_vbuff(_carry); _fexe = 1;	break;
			
			case "exe_push_anim_cycle_on_obj" : exe_push_anim_cycle_on_obj(_carry); _fexe = 1;	break;
			case "exe_remove_anchor_in_object" : exe_remove_anchor_in_object(_carry); _fexe = 1;	break;
			
			case "exe_change_controller_in_object" : exe_change_controller_in_object(_carry); _fexe = 1;	break;
			case "exe_change_in_cam_in_object" : exe_change_in_cam_in_object(_carry); _fexe = 1;	break;
			
			case "exe_vbuff_item_in_objcet_change" : exe_vbuff_item_in_objcet_change(_carry); _fexe = 1;	break;
			
			case "exe_switch_anim_pack_anim_cycles_in_obj" : exe_switch_anim_pack_anim_cycles_in_obj(_carry); _fexe = 1;	break;
			
			case "exe_change_value_in_body_measures" : exe_change_value_in_body_measures(_carry); _fexe = 1;	break;
			
			// static obj menu operations
			case "exe_change_show_static_obj_num" : exe_change_show_static_obj_num(_carry); _fexe = 1;	break;
			case "exe_move_static_obj" :	exe_move_static_obj(_carry); _fexe = 1;	break;
			case "exe_rotate_static_obj" :	exe_rotate_static_obj(_carry); _fexe = 1;	break;
			
			
			//graphic control menu operations
			case "exe_switch_show_surf" : exe_switch_show_surf(_carry); _fexe = 1;	break;
			case "exe_switch_split_screen" : exe_switch_split_screen(_carry); _fexe = 1;	break;
			
			
			//time_control_menu operations
			case "exe_time_control_pause" : exe_time_control_pause(_carry); _fexe = 1;	break;
			case "exe_activity_control" :	exe_activity_control(_carry); _fexe = 1;	break;
			case "exe_time_control_menu_click_speed" :	exe_time_control_menu_click_speed(_carry); _fexe = 1;	break;
			
			//simple_gameplay_control
			case "exe_simple_gameplay_control" :	exe_simple_gameplay_control(_carry); _fexe = 1;	break;
		}
	mouse_struct.function_executed = _fexe;
}