function exe_create_basic_vbuffs_bodyparts()
{
	//bodyparts
	var temp_buff_data = buffer_load("bodyparts/basic/ass_pivot_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	ass_pivot_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/spine_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	spine_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/spine_02_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	spine_02_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/neck_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	neck_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/head_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	head_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/jaw_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	jaw_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/shoulder_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shoulder_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Uarm_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uarm_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Farm_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Farm_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/hand_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hand_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/shoulder_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	shoulder_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Uarm_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uarm_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Farm_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Farm_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/hand_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hand_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/hip_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hip_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Uleg_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uleg_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Lleg_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Lleg_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/foot_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	foot_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/toe_R_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	toe_R_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/hip_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	hip_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Uleg_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Uleg_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/Lleg_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	Lleg_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/foot_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	foot_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	var temp_buff_data = buffer_load("bodyparts/basic/toe_L_01_basic.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	toe_L_01_basic = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	
	
}