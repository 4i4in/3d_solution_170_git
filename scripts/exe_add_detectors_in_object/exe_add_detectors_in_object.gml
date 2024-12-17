function exe_add_detectors_in_object(_temp_o,_input,_template)
{
	for(var _ii = 0; _ii < array_length(_template.detector_naming); _ii++)
		{
			array_push(_temp_o.part_naming,	_template.detector_naming[_ii]);
			array_push(_temp_o.part_posMat,"set_me");
			array_push(_temp_o.part_vsubmit,"set_me");
			array_push(_temp_o.part_texture_load_reference,["tex_body_01_nomaterial","tex_normal_z"]);
			
			var _dvb = variable_clone(_template.detector_vbuffs[_ii]);
			_dvb[1] = string(_input.scale);
			array_push(_temp_o.part_vbuff_load_reference,_dvb);
			array_push(_temp_o.part_texture_shader_setings,[0.]);
			
			var _dvb = variable_clone(_template.detector_coliders[_ii]);
			_dvb[1] = string(_input.scale);
			array_push(_temp_o.part_vbuff_colider_load_reference,_dvb);
			array_push(_temp_o.part_texture_helper_load_reference,["tex_helpers","tex_normal_z"]);
			array_push(_temp_o.part_vbuff_helper_load_reference,["vbuff_dir_arrow",string(_input.scale),"N"]);
			array_push(_temp_o.part_dependency_load_reference,_template.detector_dependency[_ii]);
			array_push(_temp_o.part_colision_method,"info");
		}
	
		
	return(_temp_o);
}