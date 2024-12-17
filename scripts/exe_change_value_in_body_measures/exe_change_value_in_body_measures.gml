function exe_change_value_in_body_measures(_carry,_alt)
{
	var _selected_object_type = _carry[0];
	var _selected_object_num =	_carry[1];
	var _s_name = _carry[2];
	var _arr_num = _carry[3];
	var _operation = _carry[4];
	var _value_change = _carry[5];
	
	if _alt != undefined	//passed from function
		{
			var _obj = _alt;
		}
	else
		{
			var _obj = map3d[$ _selected_object_type][_selected_object_num];
		}
	
	if struct_get(_obj.character_sheet, "body_measures") != undefined
		{
			_carry = exe_process_body_measures_names_operation(_carry,_obj);
			_s_name = _carry[2];
			_arr_num = _carry[3];
			_operation = _carry[4];
			_value_change = _carry[5];
	
			if _arr_num < 0	{var _value_to_change =_obj.character_sheet.body_measures[$ _s_name];}
			else			{var _value_to_change =_obj.character_sheet.body_measures[$ _s_name][_arr_num];}
			
			switch(_operation)
				{
					case "add":
						_value_to_change += _value_change;
						if array_length(_carry) > 6
							{
								if _value_to_change < _carry[6]	{_value_to_change = _carry[6]};
								if _value_to_change > _carry[7]	{_value_to_change = _carry[7]};
							}
					mouse_info.txt = "";	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
						break;
						
					case "switch":
						_value_to_change = !_value_to_change;
					mouse_info.txt = "";	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
						break;
						
					case "minus_dcos":
						_value_to_change = darccos(-_value_to_change);
						_value_to_change += _value_change;
						if array_length(_carry) > 6
							{
								if _value_to_change < _carry[6]	{_value_to_change = _carry[6]};
								if _value_to_change > _carry[7]	{_value_to_change = _carry[7]};
							}
						_value_to_change = -dcos(_value_to_change);
					mouse_info.txt = "";	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
						break;
						
					case "noone":
					mouse_info.txt = "unchangable, hard coded or calculated \n in exe_calculate_character_body_measures;";	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
						break;
						
					//only in game by obj
					case "set":
						_value_to_change = _value_change;
						break;
						
					case "set_dcos":
						_value_to_change = -dcos(_value_change)
						break;
				}
				
			if _arr_num < 0	{_obj.character_sheet.body_measures[$ _s_name] = _value_to_change;}
			else			{_obj.character_sheet.body_measures[$ _s_name][_arr_num] = _value_to_change;}	

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