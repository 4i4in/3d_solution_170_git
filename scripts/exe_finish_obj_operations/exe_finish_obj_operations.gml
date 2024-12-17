function exe_finish_obj_operations(_temp_o,_type,_skin_operation)
{
	_temp_o = exe_fetch_posMat_dependency(_temp_o);
	_temp_o = exe_load_part_posMat_by_reference(_temp_o);
	
	_temp_o = exe_return_part_texture(_temp_o, "visible");
	_temp_o = exe_return_part_texture(_temp_o, "helper");
	
	_temp_o = exe_return_part_vbuff_by_reference(_temp_o, "visible");
	_temp_o = exe_return_part_vbuff_by_reference(_temp_o, "helper");
	_temp_o = exe_return_part_vbuff_by_reference(_temp_o, "colider");
	
	//vbuffs
	if _type != undefined
		{
			if _type = "character"	{_temp_o = exe_rotate_all_vbuffs(_temp_o,0,[0,0,1]);};
		}
	else
		{
			_temp_o = exe_rotate_all_vbuffs(_temp_o,0,[1,1,1]);
		}
	//skining	
	if _skin_operation != undefined
		{
			_temp_o = exe_skin_by_skinset(_temp_o,_skin_operation);
			_temp_o = exe_push_anim_stack_on_obj([-1,-1,"basic_pose",1,[1,1,1]],_temp_o);
			
			var _pose_to = _temp_o.control_method.anim_stack[0];
			var _pose_step = _temp_o.control_method.anim_stack[1];
			var _affected = _temp_o.control_method.anim_stack[2];
			_temp_o = exe_lerp_to_pose_on_obj(_temp_o,_pose_to,_pose_step,_affected);
			_temp_o = exe_load_part_posMat_by_reference(_temp_o);
			_temp_o = exe_rotate_all_vbuffs(_temp_o,1,[0,0,1]);
			
			_temp_o = exe_calculate_character_body_measures(_temp_o);
		}
		
	return(_temp_o);
}