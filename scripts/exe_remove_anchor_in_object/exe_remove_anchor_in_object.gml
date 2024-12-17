function exe_remove_anchor_in_object(_carry,_alt)
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
	var _anch_num =	_carry[2];		
	
	if _anch_num == "all"
		{
			_obj.control_method.anchor = [];
		}
	else
		{
			array_delete(_obj.control_method.anchor,_anch_num,1);
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