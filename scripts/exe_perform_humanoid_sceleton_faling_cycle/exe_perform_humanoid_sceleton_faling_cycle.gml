function exe_perform_humanoid_sceleton_faling_cycle(_obj,_posMat,_main_id,_inertial_translation,_b_cycle)
{
	//lookup
	//_obj = exe_perform_colisions_on_obj(_obj,["info","ass_inertial"]);
	//var _any_colision = exe_temp_check_if_any_colisions(_obj,"anchor");
	
	var _any_colision_anchor = 0;
	var _force = [-_obj.control_method.gravity[0]/game_speed,-_obj.control_method.gravity[1]/game_speed,-_obj.control_method.gravity[2]/game_speed];
	var _return_pack = exe_push_force_on_animated_obj(_obj,_inertial_translation,_main_id,_posMat,_force,_b_cycle);
	_obj = _return_pack[0];
	_any_colision_anchor = _return_pack[1];
	_b_cycle = _return_pack[2];	
	
	if _any_colision_anchor < 1
		{
			if struct_exists(_obj.control_method, "anim_stack")
				{
					if _obj.control_method.anim_stack[1] < 1
						{
							_obj = exe_next_pose_anim_next_in_cycle(_obj,0);//2nd arg is first pose to choose in loop
						}
				}
			else	{	_obj = exe_next_pose_anim_random_in_cycle(_obj,"any");	}
			_obj = exe_still_inertia_push_up_exception(_obj,_main_id);
		}
	
	if _any_colision_anchor > 0
		{
			if array_length(_obj.control_method.anchor) > 0	{return(_obj);};
			_obj.control_method.carry_anim_info = [];
			for(var _thlprs = 0; _thlprs < array_length(_obj.part_detector_lines_results);	_thlprs++)
				{
					if array_length(_obj.part_detector_lines_results[_thlprs][2]) > 0
						{
							
							var _reason_for_check = _obj.part_detector_lines_results[_thlprs][4];
							switch(_reason_for_check)
								{
									case "anchor":
										var _inertial_l = point_distance_3d(0,0,0,_obj.control_method.intertia_translation[0][0],_obj.control_method.intertia_translation[0][1],_obj.control_method.intertia_translation[0][2]);
										array_push(_obj.control_method.carry_anim_info,_inertial_l);
										
										_obj = exe_perform_humanoid_sceleton_simple_anchoring_obj(_obj,_thlprs,_b_cycle,"reset",_main_id);
										if array_length(_obj.control_method.anchor) > 0
											{
												_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
												_obj = exe_move_obj_to_anchor(_obj,_main_id);
											}
										break;
								}
						}
				}
			
		}
	
	return(_obj)
}