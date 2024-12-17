function exe_change_obj_in_editor_menu(_carry)
{
	var _selected_object_type = string(menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]]);
	var _selected_obj = menus.obj_editor.obj_num + _carry[2];
	//var _selected_obj = menus[$ _carry[0]][$ _carry[1]] + _carry[2];
	
	var _target_array = map3d[$ _selected_object_type];
	if array_length(_target_array) < 1	{menus.obj_editor.obj_num = -1;	menus.obj_editor.obj_hash = -1; exit;}; //no objects in array
	
	
	if _selected_obj > array_length(_target_array) - 1
		{
			_selected_obj = 0;	
		}
	if _selected_obj < 0
		{
			_selected_obj = array_length(_target_array) - 1;
		}
	menus.obj_editor.obj_num = _selected_obj;
	
	var _obj = map3d[$ _selected_object_type][menus.obj_editor.obj_num];
	menus.obj_editor.obj_hash = _obj.character_sheet.hash;
	
	reset_current_menu_array = 1;
}