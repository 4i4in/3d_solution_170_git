function exe_create_basic_vbuffs()
{
	//keep empty vbuff first
	vbuff_empty = exe_create_empty_vbuff();
	
	exe_vbuff_bs_x_bs_cube_oriented(10);
	
	exe_vbuff_d20(10);
	
	exe_vbuff_100x100_inverted_orientation(map3d.world_settings.world_sqr_size);	//global helper for orientation
	
	exe_vbuff_dir_arrow(5);
	exe_vbuff_dir_arrow_50(25);
	
	exe_vbuff_dgw_dgh();
	
	var _pallete_colors = [[2,2],[2,2]];
	var _input_scale = [50,100];	//scale z value red, z boost blue
	exe_vbuff_flat_terrain(map3d.world_settings.world_sqr_size,50,10,terrain_1_input,_input_scale,2,_pallete_colors);
	
	/*
	var temp_buff_data = buffer_load("terrain/terrain_03.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_terrain_03 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("terrain/terrain_04.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_terrain_04 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("terrain/terrain_06.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_terrain_06 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	*/
	
	var temp_buff_data = buffer_load("terrain/terr_09a.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_terrain_09a = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("terrain/terr_09b.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_terrain_09b = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("terrain/terr_09c.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_terrain_09c = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("terrain/terr_09d.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_terrain_09d = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	
	
	
	var temp_buff_data = buffer_load("utylity_vbuff/camera.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_camera_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("utylity_vbuff/pntrdir.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_pntrdir_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("utylity_vbuff/big_pointer.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_big_pointer = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("utylity_vbuff/pointer_orange.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_pointer_orange = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("utylity_vbuff/pointer_green.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_pointer_green = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("utylity_vbuff/main_part_01.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	main_part_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("utylity_vbuff/main_part_low.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	main_part_low = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("utylity_vbuff/main_part_total.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	main_part_total = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("utylity_vbuff/direction_sign.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	vbuff_direction_sign_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	exe_create_basic_vbuffs_bodyparts_coliders();//load set
	exe_create_basic_vbuffs_bodyparts();//load set
	exe_create_theme_01_vbuffs_bodyparts();//load set
	exe_create_theme_02_vbuffs_bodyparts();//load set
	exe_create_theme_03_vbuffs_bodyparts();//load set
	exe_create_theme_04_vbuffs_bodyparts();//load set
	
	exe_create_standard_weapons();//load set
	exe_create_standard_helmets();//load set
	
	exe_create_basic_equipment();//load set
	
	exe_create_standard_shields();//load set
	
}