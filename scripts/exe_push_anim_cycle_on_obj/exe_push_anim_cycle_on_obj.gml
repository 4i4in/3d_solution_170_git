function exe_push_anim_cycle_on_obj(_carry,_alt)
{
	if _alt != undefined	//passed from function
		{
			var _obj = _alt;
		}
	else	//passed from object editor
		{
			var _selected_object_type = _carry[0];
			var _selected_object_num =	_carry[1];
			

			var _obj = map3d[$ _selected_object_type][_selected_object_num];
		}
	var _cycle =					_carry[2];
			
	if struct_get(_obj.control_method, "behaviour_cycle") != undefined
		{
			struct_set(_obj.control_method, "behaviour_cycle",	_cycle);
			if _cycle == "noone_cycle"
				{
					_obj = exe_remove_anchor_in_object([-1,-1,"all"],_obj);
					_obj.control_method.ground_state = "faling";
				}
			else
				{
					var _str = string(_cycle);
					var _pos_del = string_pos("_",_str);
					if _pos_del > 0
						{
							_str = string_delete(_str,_pos_del,99);
							_obj.control_method.ground_state = _str;
						}
				}
			
		}
	else
		{
			show_debug_message("no behaviour_cycle on character_sheet in obj; \n struct_get(_obj.character_sheet, behaviour_cycle) != undefined");
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