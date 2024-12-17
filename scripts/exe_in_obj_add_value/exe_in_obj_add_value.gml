function exe_in_obj_add_value(_carry)
{
	var _selected_object_type = menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]];
	var _obj = map3d[$ _selected_object_type][menus.obj_editor.obj_num];
	
	
	switch(_carry[0][0])
		{
			case "struct2_array1":
				var _val = _obj[$ _carry[0][1]][$ _carry[0][2]][_carry[0][3]];
				var _add = _carry[2];
				_val += _add;
				if is_real(_carry[1][0])	{if _val < _carry[1][0]	{_val = _carry[1][0];}	};
				if is_real(_carry[1][1])	{if _val > _carry[1][1]	{_val = _carry[1][1];}	};
				_obj[$ _carry[0][1]][$ _carry[0][2]][_carry[0][3]] = _val;
				mouse_struct.mtime = 3;
				break;
		}
	reset_current_menu_array = 1;
}