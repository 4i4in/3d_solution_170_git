function exe_return_obj_and_array(_hash)
{
	var _obj_nr = -1;
	var _page = -1;
	
	for(var _ii = 0; _ii < array_length(map3d.static_objects); _ii++)
		{
			var _obj3d = map3d.static_objects[_ii];
			var _obj3d_hash = _obj3d.character_sheet.hash;
			if _obj3d_hash == _hash
				{
					_page = 2; //see exe_return_obj_editor_menu_struct	page1_names
					_obj_nr = _ii;
					var _return = [_page,_obj_nr];
					return(_return)
				}
		}
		
	for(var _ii = 0; _ii < array_length(map3d.controlable_objects); _ii++)
		{
			var _obj3d = map3d.controlable_objects[_ii];
			var _obj3d_hash = _obj3d.character_sheet.hash;
			if _obj3d_hash == _hash
				{
					_page = 0; //see exe_return_obj_editor_menu_struct	page1_names
					_obj_nr = _ii;
					var _return = [_page,_obj_nr];
					return(_return);
				}
		}
	
	var _return = [_page,_obj_nr];
	return(_return);
}