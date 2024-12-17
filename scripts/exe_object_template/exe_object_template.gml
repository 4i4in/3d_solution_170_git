function exe_object_template()
{
	var _object3d = 
		{
			//given
			character_sheet : [],
			control_method : [],
			camera : [],//cam_num, look at, look from, posMat, max distance, max angle
			
			part_naming : [],
			part_dependency : [],
			part_posMat : [],
			part_vsubmit : [],
			
			part_texture_load_reference : [],
			part_vbuff_load_reference : [],
			part_vbuff_colider_load_reference : [],
			
			part_texture_shader_setings : [],
			
			part_texture_helper_load_reference : [],
			part_vbuff_helper_load_reference : [],
			
			part_detector_lines_load_reference : [],
			
			part_dependency_load_reference : [],
			
			//calculated from given
			part_texture : [],//color, normal
			helper_texture : [],
			
			part_show_source : [],
			part_show_curent : [],
			
			part_helpers_source : [],
			part_helpers_curent : [],
			
			part_colision_method : [],
			part_colisions_source : [],
			part_colisions_curent : [],
			
			part_detection_method : [],
		}
		
	return(_object3d);
}