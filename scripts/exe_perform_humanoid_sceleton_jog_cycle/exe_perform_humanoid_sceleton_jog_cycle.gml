function exe_perform_humanoid_sceleton_jog_cycle(_obj,_posMat,_main_id,_inertial_translation)
{
	if struct_exists(_obj.control_method, "anim_stack")
		{
			if	string_starts_with(_obj.control_method.behaviour_cycle,"jog1_")	||
				string_starts_with(_obj.control_method.behaviour_cycle,"jog4_")
				{
					_obj = exe_perform_reanchor(_obj,_main_id);
						
					var _anim_in_this_cycle = exe_return_is_anim_in_this_cycle(_obj);
					if _anim_in_this_cycle < 0	{_obj = exe_given_pose_anim_in_cycle(_obj,0);}
					else if _obj.control_method.anim_stack[1] < 1
						{
							
							_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"light");
							var _colision_push_back = exe_temp_check_if_any_colisions(_obj,"pushback");
							if _colision_push_back > 0	
								{
									_obj = exe_humanoid_in_cycle_idle(_obj,_main_id,0);
									return(_obj);
								}
							
							var _end_of_cycle = exe_return_anim_cycle_end(_obj);
							if _end_of_cycle > 0
								{	
									//execute jump i jog;
									if	string_starts_with(_obj.control_method.behaviour_cycle,"jog1_")
										{
											var _jump_or_not = exe_check_if_jump_is_reasonable(_obj,_main_id,"jog");
											if _jump_or_not < 1
												{	_obj = exe_humanoid_in_cycle_walk(_obj,_main_id,1);	}
										}
									_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
								}
							else
								{	
									_obj = exe_next_pose_anim_next_in_cycle(_obj,0);	
								}
						}
					_obj = exe_move_obj_to_anchor(_obj,_main_id);
				}
			if string_starts_with(_obj.control_method.behaviour_cycle,"jog2_")
				{
					var _any_colision_anchor = 0;
					var _b_cycle = "jog";
					var _force = [-_obj.control_method.gravity[0]/game_speed,-_obj.control_method.gravity[1]/game_speed,-_obj.control_method.gravity[2]/game_speed];
					var _return_pack = exe_push_force_on_animated_obj(_obj,_inertial_translation,_main_id,_posMat,_force,_b_cycle);
					_obj = _return_pack[0];
					_any_colision_anchor = _return_pack[1];
					_b_cycle = _return_pack[2];
					
					if _b_cycle != "jog"
						{	
							_obj.control_method.intertia_translation[0] = [0,0,0];	
							_obj = exe_humanoid_in_cycle_idle(_obj,_main_id,0);	
							return(_obj);
						}
					
					if _any_colision_anchor < 1
						{
							if struct_exists(_obj.control_method, "anim_stack")
								{
									//potential next step calculation
									var _inertial_translation2 = exe_initialize_inertial_translation_array(_obj.control_method.intertia_translation,1.);
									var _pnxtstep = exe_inertial_translation_add_delta(_inertial_translation2,_force);
									var _dot_inert_vs_gravity = dot_product_3d_normalized(_pnxtstep[0][0],_pnxtstep[0][1],_pnxtstep[0][2],	_obj.control_method.gravity[0],_obj.control_method.gravity[1],_obj.control_method.gravity[2]);	
									
									if _dot_inert_vs_gravity > 0
										{
											_obj.control_method.behaviour_timers[0] = -1;
											_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
										}
									else
										{
											_obj = exe_next_pose_anim_next_in_cycle(_obj,0);
										}
								}
							else	{	_obj = exe_next_pose_anim_random_in_cycle(_obj,"any");	}
						}
					else	//mostly catching with hands
						{
							for(var _thlprs = 0; _thlprs < array_length(_obj.part_detector_lines_results);	_thlprs++)
								{
									if array_length(_obj.part_detector_lines_results[_thlprs][2]) > 0
										{
											var _reason_for_check = _obj.part_detector_lines_results[_thlprs][4];
											switch(_reason_for_check)
												{
													case "anchor":
														_obj = exe_perform_humanoid_sceleton_simple_anchoring_obj(_obj,_thlprs,"jog","reset",_main_id);
										
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
			//if string_starts_with(_obj.control_method.behaviour_cycle,"jog3_")
			// is in exe_perform_humanoid_sceleton_faling_cycle
			
		}
	else	{	_obj = exe_next_pose_anim_next_in_cycle(_obj,0);	}
	
	_obj = exe_resolve_humanoid_controls("jog",_obj,_main_id);
	
	return(_obj)
}