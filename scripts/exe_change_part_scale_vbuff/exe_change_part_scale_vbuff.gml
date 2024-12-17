function exe_change_part_scale_vbuff(_carry)
{
	var _selected_object_type = _carry[0];
	var _selected_object_num =	_carry[1];
	var _selected_part_num =	_carry[2];
	//_carry[3] add or set
	//_carry[4] value or reset to main part scale
	var _affected =	_carry[5];	//part_vbuff_load_reference,	part_vbuff_helper_load_reference,	part_vbuff_colider_load_reference
	
	var _obj = map3d[$ _selected_object_type][_selected_object_num];
	
	
	if _affected[0] > 0
		{
			var _refer_to = "part_vbuff_load_reference";
			_obj[$ _refer_to][_selected_part_num][1] = exe_part_scale_value_change(_refer_to,_obj,_carry);
		}
	if _affected[1] > 0
		{
			var _refer_to = "part_vbuff_helper_load_reference";
			_obj[$ _refer_to][_selected_part_num][1] = exe_part_scale_value_change(_refer_to,_obj,_carry);
		}	
	if _affected[2] > 0
		{
			var _refer_to = "part_vbuff_colider_load_reference";
			_obj[$ _refer_to][_selected_part_num][1] = exe_part_scale_value_change(_refer_to,_obj,_carry);
		}	
		
	//finish
	//var _obj = map3d[$ _selected_object_type][_selected_object_num];
	_obj = exe_return_part_vbuff_by_reference(_obj, "visible",_selected_part_num);
	_obj = exe_return_part_vbuff_by_reference(_obj, "helper",_selected_part_num);
	_obj = exe_return_part_vbuff_by_reference(_obj, "colider",_selected_part_num);
	
	if _selected_object_type == "controlable_objects"	{_obj = exe_rotate_all_vbuffs(_obj,0,[0,0,1]);}
	else												{_obj = exe_rotate_all_vbuffs(_obj,0,_affected);}
	
	map3d[$ _selected_object_type][_selected_object_num] = _obj;
	
	
	mouse_struct.mtime = 3;
	reset_current_menu_array = 1;
}