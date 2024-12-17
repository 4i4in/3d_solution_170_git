function exe_push_anim_stack_on_obj(_carry,_alt)
{
	if _alt != undefined	//passed from function
		{
			_obj = _alt;
		}
	else	//passed from object editor
		{
			var _selected_object_type = _carry[0];
			var _selected_object_num =	_carry[1];
			

			var _obj = map3d[$ _selected_object_type][_selected_object_num];
		}
	var _pose =					_carry[2];
	var _time =					_carry[3];
	var _affected =				_carry[4];

	if struct_get(_obj.character_sheet, "body_measures") != undefined
		{
			_time = exe_calculate_anim_speed_change_for_character(_obj,[_pose,_time,_affected]);
		}	
			
	if struct_get(_obj.character_sheet, "anim_pack") != undefined
		{
			struct_set(_obj.control_method, "anim_stack",	[_pose,_time,_affected]);
		}
	else
		{
			show_debug_message("no anim_pack on character_sheet in obj; \n struct_get(_obj.character_sheet, anim_pack) != undefined");
			//execute_function("show_rclick_info",-1,"no anim_pack on character_sheet in obj; \n struct_get(_obj.character_sheet, anim_pack) != undefined");
		}
		
		
	if _alt != undefined
		{
			return(_obj);
		}
	else
		{
			map3d[$ _selected_object_type][_selected_object_num] = _obj;
			reset_current_menu_array = 1;
		}
}