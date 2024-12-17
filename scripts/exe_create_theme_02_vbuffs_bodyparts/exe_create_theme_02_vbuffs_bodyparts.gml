function exe_create_theme_02_vbuffs_bodyparts()
{
	//bodyparts
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/ass_pivot_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	ass_pivot_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/theme_02/spine_01_theme_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	spine_01_theme_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/theme_02/spine_02_theme_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	spine_02_theme_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/theme_02/neck_01_theme_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	neck_01_theme_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/theme_02/neck_01_theme_02_heroic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	neck_01_theme_02_heroic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/theme_02/head_01_theme_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	head_01_theme_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/theme_02/jaw_01_theme_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	jaw_01_theme_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/theme_02/shoulder_R_01_theme_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shoulder_R_01_theme_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/theme_02/Uarm_R_01_theme_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uarm_R_01_theme_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/Farm_R_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	Farm_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/hand_R_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	hand_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/theme_02/shoulder_L_01_theme_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shoulder_L_01_theme_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/theme_02/Uarm_L_01_theme_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uarm_L_01_theme_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/Farm_L_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	Farm_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/hand_L_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	hand_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/hip_R_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	hip_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/Uleg_R_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	Uleg_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/theme_02/Lleg_R_01_theme_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Lleg_R_01_theme_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/foot_R_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	foot_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/toe_R_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	toe_R_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/hip_L_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	hip_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/Uleg_L_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	Uleg_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/theme_02/Lleg_L_01_theme_02.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Lleg_L_01_theme_02 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/foot_L_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	foot_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	//	var temp_buff_data = buffer_load("bodyparts/theme_02/toe_L_01_theme_01.vbuff");
	//	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	//	toe_L_01_theme_01 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	//	buffer_delete(temp_buff_data);
	
	
}