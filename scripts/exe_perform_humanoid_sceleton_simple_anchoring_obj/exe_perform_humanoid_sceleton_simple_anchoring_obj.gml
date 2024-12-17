function exe_perform_humanoid_sceleton_simple_anchoring_obj(_obj,_thlprs,_result_interpratetion,_anchor_method,_main_id)
{
	var _sublist = _obj.part_detector_lines_results[_thlprs][2];
	var _refer_to_part = _obj.part_detector_lines_results[_thlprs][3];

	var _xyz0 =					_sublist[0][0];
	var _xyz1 =					_sublist[0][1];
	var _normal =				_sublist[0][2];
	var _hash_colided =			_sublist[0][3];
	var _who_colided =			_sublist[0][4];
	var _what_list =			_sublist[0][5];
	var _colision_type =		_sublist[0][6];	
					
	var _ground_or_climb = "ground";
	switch(_refer_to_part)
		{
			case "toe_R_01":	case "toe_L_01": 
				_ground_or_climb = "ground";	break;
			case "hand_R_01":	case "hand_L_01": 
				_ground_or_climb = "climb";	break;
		}
		
	if _colision_type == "solid"	&&	_ground_or_climb == "ground"
		{
			var _obj_g_vec = vec_normalize([_obj.control_method.gravity[0],_obj.control_method.gravity[1],_obj.control_method.gravity[2]]);
			switch(_result_interpratetion)
				{
					case "walk":	case "jog":	case "idle":
						var _coll_dot = dot_product_3d(_normal[0],_normal[1],_normal[2],_obj_g_vec[0],_obj_g_vec[1],_obj_g_vec[2]);
						var _cast = exe_return_direction_cast_vector(_obj,[-_normal[0],-_normal[1],-_normal[2]]);
							
						if _coll_dot > _obj.character_sheet.body_measures.walk_dot
							{
								if _coll_dot > _obj.character_sheet.body_measures.scrambling_dot
									{
										if _obj.character_sheet.body_measures.perform_climbing > 0
											{
												if _coll_dot > _obj.character_sheet.body_measures.climbing_dot
													{
														//_obj = exe_push_back_obj_from_nvec(_obj,_main_id,_normal,"falling");
														//return(_obj);
														
														var _colision_force = point_distance_3d(0,0,0,	_obj.control_method.intertia_translation[0][0],	_obj.control_method.intertia_translation[0][1],	_obj.control_method.intertia_translation[0][2]);
														_obj.control_method.intertia_translation[0] = [0,0,0];
												
														var _relation_to_coll = [_obj.part_posMat[_main_id][12] - _xyz1[0],	_obj.part_posMat[_main_id][13] - _xyz1[1],	_obj.part_posMat[_main_id][14] - _xyz1[2]	];
														var _cast_relation = exe_return_direction_cast_vector(_obj,_relation_to_coll,"real_revXY");
												
														_obj.control_method.ground_state = "start_hanging";
														_obj.control_method.carry_anim_info = [_cast_relation,_colision_force,_refer_to_part,_normal];
														_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
														_result_interpratetion = "reanchor";
													}
												else
													{
														var _colision_force = point_distance_3d(0,0,0,	_obj.control_method.intertia_translation[0][0],	_obj.control_method.intertia_translation[0][1],	_obj.control_method.intertia_translation[0][2]);
														_obj.control_method.intertia_translation[0] = [0,0,0];
												
														var _relation_to_coll = [_obj.part_posMat[_main_id][12] - _xyz1[0],	_obj.part_posMat[_main_id][13] - _xyz1[1],	_obj.part_posMat[_main_id][14] - _xyz1[2]	];
														var _cast_relation = exe_return_direction_cast_vector(_obj,_relation_to_coll,"real_revXY");
											
														_obj = exe_edge_exception_to_climb(_obj,_main_id,_normal);
														var _keep_gs = variable_clone(_obj.control_method.ground_state);
														
														_obj.control_method.ground_state = "start_climbing";
														_obj.control_method.carry_anim_info = [_cast_relation,_colision_force,_refer_to_part,_normal];
														_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
														_result_interpratetion = "reanchor";
														_xyz1 = exe_anchor_edge_exception_to_climb(_obj,_main_id,_xyz1,_keep_gs);
													}
											}
										else
											{
												_obj = exe_push_back_obj_from_nvec(_obj,_main_id,_normal,"falling");
												return(_obj);
											}
									}
								else
									{
										//scrambling 
										_obj.control_method.ground_state = "scrambling";
										_obj.control_method.carry_anim_info = [_cast];
										_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
										_result_interpratetion = "reanchor";
									}
							}
						break;
					
					case "start_climbing":
						var _coll_dot = dot_product_3d(_normal[0],_normal[1],_normal[2],_obj_g_vec[0],_obj_g_vec[1],_obj_g_vec[2]);
						var _cast = exe_return_direction_cast_vector(_obj,[-_normal[0],-_normal[1],-_normal[2]]);
					
						if _coll_dot > _obj.character_sheet.body_measures.scrambling_dot
							{
								//return(_obj);
								if _coll_dot > _obj.character_sheet.body_measures.climbing_dot
									{
										var _colision_force = point_distance_3d(0,0,0,	_obj.control_method.intertia_translation[0][0],	_obj.control_method.intertia_translation[0][1],	_obj.control_method.intertia_translation[0][2]);
										_obj.control_method.intertia_translation[0] = [0,0,0];
												
										var _relation_to_coll = [_obj.part_posMat[_main_id][12] - _xyz1[0],	_obj.part_posMat[_main_id][13] - _xyz1[1],	_obj.part_posMat[_main_id][14] - _xyz1[2]	];
										var _cast_relation = exe_return_direction_cast_vector(_obj,_relation_to_coll,"real_revXY");
												
										_obj.control_method.ground_state = "start_hanging";
										_obj.control_method.carry_anim_info = [_cast_relation,_colision_force,_refer_to_part,_normal];
										_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
										_result_interpratetion = "reanchor";
									}
								else
									{
										var _colision_force = point_distance_3d(0,0,0,	_obj.control_method.intertia_translation[0][0],	_obj.control_method.intertia_translation[0][1],	_obj.control_method.intertia_translation[0][2]);
										_obj.control_method.intertia_translation[0] = [0,0,0];
												
										var _relation_to_coll = [_obj.part_posMat[_main_id][12] - _xyz1[0],	_obj.part_posMat[_main_id][13] - _xyz1[1],	_obj.part_posMat[_main_id][14] - _xyz1[2]	];
										var _cast_relation = exe_return_direction_cast_vector(_obj,_relation_to_coll,"real_revXY");
												
										_obj.control_method.ground_state = "start_climbing";
										_obj.control_method.carry_anim_info = [_cast_relation,_colision_force,_refer_to_part,_normal];
										_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
										_result_interpratetion = "reanchor";
									}
							}
						else
							{
								if _obj.control_method.ground_state == "climb_jump"
									{
										var _colision_force = point_distance_3d(0,0,0,	_obj.control_method.intertia_translation[0][0],	_obj.control_method.intertia_translation[0][1],	_obj.control_method.intertia_translation[0][2]);
										_obj.control_method.ground_state = "landing";
										_obj.control_method.carry_anim_info = [_colision_force];
										_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
										_result_interpratetion = "reanchor";
									}
								else
									{
										var _colision_force = point_distance_3d(0,0,0,	_obj.control_method.intertia_translation[0][0],	_obj.control_method.intertia_translation[0][1],	_obj.control_method.intertia_translation[0][2]);
										_obj.control_method.intertia_translation[0] = [0,0,0];
												
										var _relation_to_coll = [_obj.part_posMat[_main_id][12] - _xyz1[0],	_obj.part_posMat[_main_id][13] - _xyz1[1],	_obj.part_posMat[_main_id][14] - _xyz1[2]	];
										var _cast_relation = exe_return_direction_cast_vector(_obj,_relation_to_coll,"real_revXY");
												
										_obj.control_method.ground_state = "backonfeet_climb";
										_obj.control_method.carry_anim_info = [_cast_relation,_colision_force,_refer_to_part,_normal];
										_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
										_result_interpratetion = "reanchor";
									}
							}
						break;
				}
				
			//add anchor
			var _return_anchor = [_refer_to_part,_xyz1];
			if _anchor_method == "reset"	{_obj.control_method.anchor = [];};
			array_push(_obj.control_method.anchor,_return_anchor);
			//change state, |	break animation, break behaviour_cycle >> exe_resolve_behaviour_cycle
			if _result_interpratetion != "reanchor"	{_obj.control_method.ground_state = _result_interpratetion;};

		}
		
	if _colision_type == "solid"	&&	_ground_or_climb == "climb"
		{
			var _obj_g_vec = vec_normalize([_obj.control_method.gravity[0],_obj.control_method.gravity[1],_obj.control_method.gravity[2]]);
			var _coll_dot = dot_product_3d(_normal[0],_normal[1],_normal[2],_obj_g_vec[0],_obj_g_vec[1],_obj_g_vec[2]);
			var _cast = exe_return_direction_cast_vector(_obj,[-_normal[0],-_normal[1],-_normal[2]],"real");
			
			var _relation_to_coll = [_obj.part_posMat[_main_id][12] - _xyz1[0],	_obj.part_posMat[_main_id][13] - _xyz1[1],	_obj.part_posMat[_main_id][14] - _xyz1[2]	];
			var _cast_relation = exe_return_direction_cast_vector(_obj,_relation_to_coll,"real_revXY");
			
			if _obj.character_sheet.body_measures.perform_climbing > 0
				{		
					var _colision_force = point_distance_3d(0,0,0,	_obj.control_method.intertia_translation[0][0],	_obj.control_method.intertia_translation[0][1],	_obj.control_method.intertia_translation[0][2]);
					_obj.control_method.intertia_translation[0] = [0,0,0];
					if _coll_dot > _obj.character_sheet.body_measures.walk_dot
						{
							if _coll_dot > _obj.character_sheet.body_measures.scrambling_dot
								{
									if _coll_dot > _obj.character_sheet.body_measures.climbing_dot
										{
											var _colision_force = point_distance_3d(0,0,0,	_obj.control_method.intertia_translation[0][0],	_obj.control_method.intertia_translation[0][1],	_obj.control_method.intertia_translation[0][2]);
											_obj.control_method.intertia_translation[0] = [0,0,0];
												
											var _relation_to_coll = [_obj.part_posMat[_main_id][12] - _xyz1[0],	_obj.part_posMat[_main_id][13] - _xyz1[1],	_obj.part_posMat[_main_id][14] - _xyz1[2]	];
											var _cast_relation = exe_return_direction_cast_vector(_obj,_relation_to_coll,"real_revXY");
												
											_obj.control_method.ground_state = "start_hanging";
											_obj.control_method.carry_anim_info = [_cast_relation,_colision_force,_refer_to_part,_normal];
											_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
											_result_interpratetion = "reanchor";
										}
									else
										{
											//exception for turing around when hanging to climbing edge; walk from edge
											_obj = exe_edge_exception_to_climb(_obj,_main_id,_normal);
											var _keep_gs = variable_clone(_obj.control_method.ground_state);
											//exception ends
											
											_obj.control_method.ground_state = "start_climbing";
											_obj.control_method.carry_anim_info = [_cast_relation,_colision_force,_refer_to_part,_normal];
											_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
											_result_interpratetion = "reanchor";
											_xyz1 = exe_anchor_edge_exception_to_climb(_obj,_main_id,_xyz1,_keep_gs);
										}
								}
							else
								{
									_obj.control_method.ground_state = "backonfeet_climb";
									_obj.control_method.carry_anim_info = [_cast_relation,_colision_force,_refer_to_part,_normal];
									_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
									_result_interpratetion = "reanchor";
								}
						}
					else
						{
							_obj.control_method.ground_state = "backonfeet_climb";
							_obj.control_method.carry_anim_info = [_cast_relation,_colision_force,_refer_to_part,_normal];
							_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
							_result_interpratetion = "reanchor";
						}
					//add anchor
					var _return_anchor = [_refer_to_part,_xyz1];
					if _anchor_method == "reset"	{_obj.control_method.anchor = [];};
					array_push(_obj.control_method.anchor,_return_anchor);
					//change state, |	break animation, break behaviour_cycle >> exe_resolve_behaviour_cycle
					if _result_interpratetion != "reanchor"	
						{
							_obj.control_method.ground_state = _result_interpratetion;
							if _result_interpratetion == "start_climbing"
								{_obj.control_method.carry_anim_info = [_cast_relation,_colision_force,_refer_to_part,_normal];};
						};
				}
			else
				{
					_obj = exe_push_back_obj_from_nvec(_obj,_main_id,_normal,"falling");
				}
		}
	return(_obj)
}