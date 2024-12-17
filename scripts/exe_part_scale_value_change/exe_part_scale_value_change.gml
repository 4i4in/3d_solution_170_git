function exe_part_scale_value_change(_refer_to,_obj,_carry)
{
	var _selected_part_num =	_carry[2];
	var _string_val = real(_obj[$ _refer_to][_selected_part_num][1]);
	switch(_carry[3])
		{
			case "add":
				_string_val += _carry[4];
				if _string_val < 0.1 {_string_val = 0.1};
				break;
			case "set":
				if _carry[4] == "main_part"
					{	_string_val = real(_obj[$ _refer_to][0][1]);	}
				else
					{	_string_val = _carry[4];	}
				break;
		}
		
	return(_string_val);
}