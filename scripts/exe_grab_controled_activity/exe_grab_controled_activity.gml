function exe_grab_controled_activity(_carry)
{
	var _return_array = [];
	if _carry != undefined	{reset_current_menu_array = 1;};//reset
	else
		{
			for(var _ii = 0; _ii < array_length(map3d.controlable_objects); _ii++)
				{
					var _obj = map3d.controlable_objects[_ii];
			
					var _name = _obj.character_sheet.name;
					var _hash = _obj.character_sheet.hash;
					var _active = _obj.control_method.active[0];
					var _always_active = 0;
					var _step_active = _obj.control_method.active[0];
			
					var _set = [_name,_hash,_active,_always_active,_step_active];
					array_push(_return_array,_set);
				}
		}
		
	return(_return_array);
}