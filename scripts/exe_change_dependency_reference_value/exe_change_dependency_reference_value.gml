function exe_change_dependency_reference_value(_carry)
{
	var _selected_object_type = _carry[0];
	var _selected_object_num =	_carry[1];
	var _selected_part_num =	_carry[2];
	
	var _value = map3d[$ _selected_object_type][_selected_object_num][$ "part_dependency_load_reference"][_selected_part_num][1][_carry[3]][_carry[4]];

	switch(_carry[5])
		{
			case "add":
				_value += _carry[6];
				break;
			case "set":
				_value = _carry[6];
				break;
		}
	map3d[$ _selected_object_type][_selected_object_num][$ "part_dependency_load_reference"][_selected_part_num][1][_carry[3]][_carry[4]] = _value;
	
	//enforce pose change because of in game anim optimisation excluded execution
	var _obj = map3d[$ _selected_object_type][_selected_object_num];
	_obj = exe_load_part_posMat_by_reference(_obj);
	if _selected_object_type == "controlable_objects"	{_obj = exe_rotate_all_vbuffs(_obj,1,[0,0,1]);};
	else												{_obj = exe_rotate_all_vbuffs(_obj,1,[1,1,1]);}
	map3d[$ _selected_object_type][_selected_object_num] = _obj;
	//=============================================================
	
	
	if _carry[7] > 0	{mouse_struct.mtime = _carry[7];};
	
	reset_current_menu_array = 1;
}