function exe_add_camera_in_object(_temp_o,_input)
{
	struct_set(_temp_o.character_sheet, "load_camera",			variable_clone(_input.camera)	);
	_temp_o.control_method = exe_add_cam(_temp_o.control_method,_temp_o.character_sheet.load_camera);
	//switch later on
	if _input.camera[2] == "camera_back"
		{
			array_push(_temp_o.part_naming,"camera_back");
			array_push(_temp_o.part_posMat,"set_me");
			array_push(_temp_o.part_vsubmit,"set_me");
			array_push(_temp_o.part_texture_load_reference,["tex_helpers","tex_normal_z"]);
			array_push(_temp_o.part_vbuff_load_reference,["vbuff_empty","0.25","N"]);//["vbuff_camera_01","0.25","N"]);
			array_push(_temp_o.part_texture_shader_setings,[0.]);
			array_push(_temp_o.part_vbuff_colider_load_reference,["vbuff_empty","1","N"]);
			array_push(_temp_o.part_texture_helper_load_reference,["tex_helpers","tex_normal_z"]);
			array_push(_temp_o.part_vbuff_helper_load_reference,["vbuff_dir_arrow","2.","N"]);
			array_push(_temp_o.part_dependency_load_reference,[ "main_part",[ [ 0,0,0,-50*_input.scale,50*_input.scale,0,0,-30,0 ] ] ]);
			array_push(_temp_o.part_colision_method,"solid");
		}
		
		
	return(_temp_o);
}