function exe_vbuff_item_in_objcet_change(_carry, _alt)
{
	if _alt != undefined	//passed from function
		{
			var _selected_part_name =	_carry[2];
			var _selected_part_num = -1;
			var _new_part_name =	_carry[3];
			var force_scale =	_carry[4];
			
			var _obj = _alt;
			
			for(var _ii = 0; _ii <  array_length(_obj.part_naming); _ii++)
				{
					if _selected_part_name == _obj.part_naming [_ii]
						{
							_selected_part_num = _ii; break;
						}
				}
					
			if _selected_part_num < 0	{return(_obj);}
			else
				{
					if struct_exists(reference_struct[$ _obj.character_sheet.items_swaps][$ _selected_part_name],	_new_part_name)
						{
							var _new_part = variable_clone(reference_struct[$ _obj.character_sheet.items_swaps][$ _selected_part_name][$ _new_part_name]);
						}
					else	{	show_debug_message("!!! ALARM in exe_vbuff_item_in_objcet_change; _new_part_name : " + string(_new_part_name) + " do not exist in reference_struct[$ _obj.character_sheet.items_swaps] : " + string(_obj.character_sheet.items_swaps) + " at : " +string(_selected_part_name));
								return(_obj);};
				}
		}
	else
		{
			var _selected_object_type = _carry[0];
			var _selected_object_num =	_carry[1];
			var _selected_part_num =	_carry[2];
			var _new_part =	variable_clone(_carry[3]);
			var force_scale =	_carry[4];
			
			var _obj = map3d[$ _selected_object_type][_selected_object_num];
		}
	
	if struct_exists(_new_part, "show")
		{
			var _current_scale = 1;
			if _new_part.show[1] == "N"	{	_current_scale = real(_obj.part_vbuff_load_reference[_selected_part_num][1]);	}
			else						{	_current_scale = real(_new_part.show[1]);	}
			
			if force_scale > 0 {_current_scale = force_scale;};
			_new_part.show[1] = string(_current_scale);
			
			_obj.part_vbuff_load_reference[_selected_part_num] = variable_clone(_new_part.show);
		}
	if struct_exists(_new_part, "colider")
		{
			var _current_scale = 1;
			if _new_part.colider[1] == "N"	{	_current_scale = real(_obj.part_vbuff_colider_load_reference[_selected_part_num][1]);	}
			else							{	_current_scale = real(_new_part.colider[1]);	}
			
			if force_scale > 0 {_current_scale = force_scale;};
			_new_part.colider[1] = string(_current_scale);
			
			_obj.part_vbuff_colider_load_reference[_selected_part_num] = variable_clone(_new_part.colider);
		}
		
	_obj = exe_return_part_vbuff_by_reference(_obj, "visible",_selected_part_num);
	_obj = exe_return_part_vbuff_by_reference(_obj, "helper",_selected_part_num);
	_obj = exe_return_part_vbuff_by_reference(_obj, "colider",_selected_part_num);
	_obj = exe_rotate_all_vbuffs(_obj,1,[0,0,1]);
	
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