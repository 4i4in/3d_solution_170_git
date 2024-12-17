function exe_create_static_objects_v2()
{
	//var _temp_o = exe_add_object_terrain_03();
	//_temp_o = exe_finish_obj_operations(_temp_o);
	//map3d = exe_map3d_add_static_objects_v2(map3d,_temp_o);
	
	//var _temp_o = exe_add_object_terrain_04();
	//_temp_o = exe_finish_obj_operations(_temp_o);
	//map3d = exe_map3d_add_static_objects_v2(map3d,_temp_o);
	
	//var _temp_o = exe_add_object_terrain_06();
	//_temp_o = exe_finish_obj_operations(_temp_o);
	//map3d = exe_map3d_add_static_objects_v2(map3d,_temp_o);
	
	
	var _temp_o = exe_add_object_terrain_09();
	_temp_o = exe_finish_obj_operations(_temp_o);
	map3d = exe_map3d_add_static_objects_v2(map3d,_temp_o);
	
	
	//var _temp_o = exe_add_object_terrain01();
	//_temp_o = exe_finish_obj_operations(_temp_o);
	//map3d = exe_map3d_add_static_objects_v2(map3d,_temp_o);
	
	//var _temp_o = exe_add_object_direction_sign_01();
	//_temp_o = exe_finish_obj_operations(_temp_o);
	//map3d = exe_map3d_add_static_objects_v2(map3d,_temp_o);
	
	//exe_save_object_to_file(_temp_o);
	
	var _file_name = _temp_o.character_sheet.file_name
	var _file_directory = _temp_o.character_sheet.file_directory
	
	//var _temp_o = exe_load_object_from_txt_file(_file_directory,_file_name);//fixing _temp_o
	
	
	
	//clipboard_set_text(string(_temp_o));
	//clipboard_set_text(json_stringify(_temp_o,1));
}