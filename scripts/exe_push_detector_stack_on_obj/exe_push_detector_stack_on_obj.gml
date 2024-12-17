function exe_push_detector_stack_on_obj(_carry,_obj)
{
	var _obj_defined = 0;
	if _obj != undefined
		{
			_obj_defined = 1;
			var _action =				_carry[0];
			var _pack =					_carry[1];
		}
	else
		{
			var _selected_object_type = _carry[0];
			var _selected_object_num =	_carry[1];
			var _action =				_carry[2];
			var _pack =					_carry[3];
			
			_obj = map3d[$ _selected_object_type][_selected_object_num];
		}
	switch(_action)
		{
			case "push":
				var _found = 0;
				for(var _ii = 0; _ii < array_length(_obj.part_detector_lines_load_reference); _ii++)
					{
						if string(_obj.part_detector_lines_load_reference[_ii]) == string(_pack)	{_found = 1;};
					}
				if _found < 1
					{
						array_push(_obj.part_detector_lines_load_reference,_pack);
					}
				break;
			case "remove":
				var _found = -1;
				for(var _ii = 0; _ii < array_length(_obj.part_detector_lines_load_reference); _ii++)
					{
						if string(_obj.part_detector_lines_load_reference[_ii]) == string(_pack)	{_found = _ii;};
					}
				if _found > -1
					{
						array_delete(_obj.part_detector_lines_load_reference,_found,1);
					}
				break;
			case "empty":
				_obj.part_detector_lines_load_reference = [];
				break;
		}		
	if _obj_defined > 0
		{
			return(_obj);
		}
	else
		{
			map3d[$ _selected_object_type][_selected_object_num] = _obj;
			reset_current_menu_array = 1;
		}
}