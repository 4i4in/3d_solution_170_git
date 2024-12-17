function exe_create_controlled_objects_v2()
{
	
	var _temp_o = exe_add_camera_01();
	_temp_o = exe_finish_obj_operations(_temp_o);
	map3d = exe_map3d_add_controlled_objects_v2(map3d,_temp_o);
	
	var _temp_o = exe_add_camera_02();
	_temp_o = exe_finish_obj_operations(_temp_o);
	map3d = exe_map3d_add_controlled_objects_v2(map3d,_temp_o);
	
	/*
	var _temp_o = exe_add_test_sceleton_01();
	_temp_o = exe_finish_obj_operations(_temp_o);
	map3d = exe_map3d_add_controlled_objects_v2(map3d,_temp_o);
	
	var _temp_o = exe_add_test_sceleton_02();
	_temp_o = exe_finish_obj_operations(_temp_o);
	map3d = exe_map3d_add_controlled_objects_v2(map3d,_temp_o);
	*/
	
	
	
	var _input = {	scale : 1, name : "humanoid_0" + string(2),		directory : "controlled/",
					controler : "pad0",	load_phy : ["humanoid_sceleton"],	respawn_point : [1905,3448,1201,0,300],//xyz,time stamp, maxtime
					texture : ["tex_body_01_nomaterial","tex_normal_z"],
					anim_pack : "humanoid_sceleton_anim_pack_01",	camera:	[1,"cam2","camera_back","rot_lerp"],
					detector_pack : "humanoid_sceleton_detector_lines_pack_01",	items_swaps : "humanoid_sceleton_items_swaps",
					};
	_input.skin_set = exe_return_humanoid_skin_set("full_equip_for_testing",_input.scale);
	var _temp_o = exe_spawn_humanoid(_input);
	_temp_o = exe_finish_obj_operations(_temp_o,"character",_input);
	map3d = exe_map3d_add_controlled_objects_v2(map3d,_temp_o);
	
	
	var _input = {	scale : 1, name : "hero_0" + string(3),		directory : "controlled/",
					controler : "pad0",	load_phy : ["humanoid_sceleton"],	respawn_point : [1805,3548,1001,0,300],//xyz,time stamp, maxtime
					texture : ["tex_body_01_nomaterial","tex_normal_z"],
					anim_pack : "humanoid_sceleton_anim_pack_01",	camera:	[1,"cam2","camera_back","rot_lerp"],
					detector_pack : "humanoid_sceleton_detector_lines_pack_01",	items_swaps : "humanoid_sceleton_items_swaps",
					};
	_input.skin_set = exe_return_humanoid_skin_set("armored_for_testing",_input.scale);
	var _temp_o = exe_spawn_humanoid(_input);
	_temp_o = exe_finish_obj_operations(_temp_o,"character",_input);
	map3d = exe_map3d_add_controlled_objects_v2(map3d,_temp_o);
	
	
	//exe_save_object_to_file(_temp_o);
	
	//var _file_name = _temp_o.character_sheet.file_name
	//var _file_directory = _temp_o.character_sheet.file_directory
	
	//var _temp_o = exe_load_object_from_txt_file(_file_directory,_file_name);//fixing _temp_o
	
	
	//map3d = exe_map3d_add_controlled_objects_v2(map3d,_temp_o);
	//clipboard_set_text(string(_temp_o));
	//clipboard_set_text(json_stringify(_temp_o,1));
}