function exe_perform_humanoid_sceleton_start_hanging_cycle(_obj,_posMat,_main_id,_inertial_translation)
{
	_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"light");
	
	if struct_exists(_obj.control_method, "anim_stack")
		{
			var _anim_in_this_cycle = exe_return_is_anim_in_this_cycle(_obj);
			if _anim_in_this_cycle < 0	{_obj = exe_given_pose_anim_in_cycle(_obj,0);}
			else if _obj.control_method.anim_stack[1] < 1
				{
					var _end_of_cycle = exe_return_anim_cycle_end(_obj);
					if _end_of_cycle > 0
						{
							if	_obj.control_method.behaviour_cycle == "start_hanging_LN" ||
								_obj.control_method.behaviour_cycle == "start_hanging_RN"
								{
									_obj.control_method.ground_state = "hanging_idle";
									_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
								}
							else
								{
									_obj = exe_next_pose_anim_next_in_cycle(_obj,0);	
								}
						}
					else
						{
							_obj = exe_next_pose_anim_next_in_cycle(_obj,0);
						}
				}
				
			//feet recatch to hands
			if	_obj.control_method.behaviour_cycle == "start_hanging_NL" ||
				_obj.control_method.behaviour_cycle == "start_hanging_NR"
				{
					_obj = exe_perform_colisions_on_obj(_obj,["anchor","any",0]);
					var _any_colision_anchor = exe_temp_check_if_any_colisions(_obj,"anchor");
					if _any_colision_anchor > 0
						{
							for(var _thlprs = 0; _thlprs < array_length(_obj.part_detector_lines_results);	_thlprs++)
								{
									if array_length(_obj.part_detector_lines_results[_thlprs][2]) > 0
										{
											var _reason_for_check = _obj.part_detector_lines_results[_thlprs][4];
											switch(_reason_for_check)
												{
													case "anchor":
														_obj = exe_perform_humanoid_sceleton_simple_anchoring_obj(_obj,_thlprs,"climb","reset",_main_id);
										
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
				}
			//catching with hands
		}
	else	{	_obj = exe_next_pose_anim_next_in_cycle(_obj,0);	}
	_obj = exe_perform_reanchor(_obj,_main_id);
	_obj = exe_move_obj_to_anchor(_obj,_main_id);
	_obj = exe_resolve_humanoid_controls("hang",_obj,_main_id);
	
	return(_obj)
}