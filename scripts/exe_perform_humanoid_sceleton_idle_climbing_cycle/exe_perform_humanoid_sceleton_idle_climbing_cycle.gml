function exe_perform_humanoid_sceleton_idle_climbing_cycle(_obj,_posMat,_main_id,_inertial_translation)
{
	_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"light");
	
	var _control_on = 1;
	if struct_exists(_obj.control_method, "anim_stack")
		{
			var _dot_mainXY_to_anchor =  exe_return_mainXY_to_anchor(_obj);
			if abs(_dot_mainXY_to_anchor) > _obj.character_sheet.body_measures.dot_mainXY_to_anchor[1]	{	_control_on = 0;	};
				
			_obj = exe_rotate_mainXY_to_anchor(_obj,_main_id,_obj.character_sheet.body_measures.dot_mainXY_to_anchor[2]);
				
			if _obj.control_method.anim_stack[1] < 1
				{
					_obj = exe_next_pose_anim_next_in_cycle(_obj,0);
				};
		};
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
										_obj = exe_perform_humanoid_sceleton_simple_anchoring_obj(_obj,_thlprs,"start_climbing","reset",_main_id);
										
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
	//catching with hands
	_obj = exe_perform_reanchor(_obj,_main_id);
	_obj = exe_move_obj_to_anchor(_obj,_main_id);
	if _control_on > 0	{	_obj = exe_resolve_humanoid_controls("climb",_obj,_main_id);	};
	
	
	return(_obj)
}