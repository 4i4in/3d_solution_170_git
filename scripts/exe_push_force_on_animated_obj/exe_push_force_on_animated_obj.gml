function exe_push_force_on_animated_obj(_obj,_inertial_translation,_main_id,_posMat,_force,_b_cycle)
{
	//how to solve detecting colisions on falling faster?
	//it is why it is spaghetti, mostly checking how to skip checking;
	var _delta = _force;
	
	var _force_length = point_distance_3d(0,_delta[0] - _inertial_translation[0][0],	0,_delta[1] - _inertial_translation[0][1],	0,_delta[2] - _inertial_translation[0][2]	);
	
	var _any_colision_anchor = 0;
	
	var _inertia_wort_checking = 0;
	if point_distance_3d(0,0,0,_inertial_translation[0][0],_inertial_translation[0][1],_inertial_translation[0][2]) > (_obj.character_sheet.body_measures.leg_L	+ _obj.character_sheet.body_measures.leg_R)/2	{_inertia_wort_checking = 1;};

	if _inertia_wort_checking > 0
		{
			_obj = exe_perform_colisions_on_obj(_obj,["info","ass_inertial",0]);
			var _any_colision_info = exe_temp_check_if_any_colisions(_obj,"info");
		}
	else	//short test, just move and check ground
		{
			var _inertia_delta = [	-_inertial_translation[0][0],-_inertial_translation[0][1],-_inertial_translation[0][2]	];
			_posMat = exe_delta_add_Mat(_delta,_posMat);
			_posMat = exe_delta_add_Mat(_inertia_delta,_posMat);
			
			_obj.part_vsubmit[_main_id] = exe_return_v_submit(_posMat,1);
			_obj.part_posMat[_main_id] = _posMat;
			_obj = exe_return_map_part_ref(_obj);
			
			_obj = exe_load_part_posMat_by_reference(_obj);
			
			_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
			var _colision_push_back = exe_temp_check_if_any_colisions(_obj,"pushback");
			if _colision_push_back > 0	{_b_cycle = "falling";	return([_obj,_any_colision_anchor,_b_cycle]);};
			
			_obj = exe_perform_colisions_on_obj(_obj,["anchor","any",0]);
			_any_colision_anchor = exe_temp_check_if_any_colisions(_obj,"anchor");	
			if _any_colision_anchor < 1
				{	_obj.control_method.intertia_translation = exe_inertial_translation_add_delta(_inertial_translation,_delta);	}
			return([_obj,_any_colision_anchor,_b_cycle]);
		}	//short test end 
		
	if _any_colision_info < 1
		{
			_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
			var _colision_push_back = exe_temp_check_if_any_colisions(_obj,"pushback");
			if _colision_push_back > 0	{_b_cycle = "falling";	return([_obj,_any_colision_anchor,_b_cycle]);};
			
			var _inertia_delta = [	-_inertial_translation[0][0],-_inertial_translation[0][1],-_inertial_translation[0][2]	];
			_posMat = exe_delta_add_Mat(_delta,_posMat);
			_posMat = exe_delta_add_Mat(_inertia_delta,_posMat);
			
			_obj.part_vsubmit[_main_id] = exe_return_v_submit(_posMat,1);
			_obj.part_posMat[_main_id] = _posMat;
			_obj = exe_return_map_part_ref(_obj);
		}
	else
		{
			var _precision = _force_length div (2*collision_resolution);//magic number
			if _precision < 1	{_precision=1;};
			var _translation_steps = ceil(_force_length/_precision);	if _translation_steps < 1	{_translation_steps = 1};

			var _delta_part =	[	_delta[0]/_translation_steps,							_delta[1]/_translation_steps,							_delta[2]/_translation_steps	];
			var _inertia_part = [	-_inertial_translation[0][0]/_translation_steps,		-_inertial_translation[0][1]/_translation_steps,		-_inertial_translation[0][2]/_translation_steps	];
			
			var _ts_start = 1;
			
			if _inertia_wort_checking > 0
				{
					var _colision_xyz = exe_return_colision_xyz_for(["info","ass_inertial"],_obj);
					if _colision_xyz != "noone"
						{
							var _dist_to_colision = point_distance_3d(_posMat[12],_posMat[13],_posMat[14],_colision_xyz[0],_colision_xyz[1],_colision_xyz[2]);
							if struct_get(_obj.character_sheet, "body_measures") != undefined
								{	_dist_to_colision -= (_obj.character_sheet.body_measures.leg_L	+ _obj.character_sheet.body_measures.leg_R)/2;	};
							if _dist_to_colision > 0
								{
									var _single_step_length = point_distance_3d(0,0,0,_delta_part[0],_delta_part[1],_delta_part[2]) + point_distance_3d(0,0,0,_inertia_part[0],_inertia_part[1],_inertia_part[2]);
									var _steps_to_jump_over = floor(_dist_to_colision/_single_step_length);
									if _steps_to_jump_over > 0
										{
											for(var _mt = 0; _mt < _steps_to_jump_over; _mt++)
												{
													_posMat = exe_delta_add_Mat(_delta_part,_posMat);
													_posMat = exe_delta_add_Mat(_inertia_part,_posMat);
													_obj.part_vsubmit[_main_id] = exe_return_v_submit(_posMat,1);
													_obj.part_posMat[_main_id] = _posMat;
													_obj = exe_return_map_part_ref(_obj);
												}
											_ts_start = _steps_to_jump_over;
										}
								}
						}
				}
				
			for(var _ts = _ts_start; _ts < _translation_steps +1; _ts++)
				{
					_posMat = exe_delta_add_Mat(_delta_part,_posMat);
					_posMat = exe_delta_add_Mat(_inertia_part,_posMat);
			
					_obj.part_vsubmit[_main_id] = exe_return_v_submit(_posMat,1);
					_obj.part_posMat[_main_id] = _posMat;
					_obj = exe_return_map_part_ref(_obj);
	
					_obj = exe_load_part_posMat_by_reference(_obj);
					
					_obj = exe_perform_pushback_sequence_on_obj(_obj,_main_id,"fall");
					var _colision_push_back = exe_temp_check_if_any_colisions(_obj,"pushback");
					if _colision_push_back > 0	{_b_cycle = "falling";	return([_obj,_any_colision_anchor,_b_cycle]);};
							
					_obj = exe_perform_colisions_on_obj(_obj,["anchor","any",0]);
					_any_colision_anchor = exe_temp_check_if_any_colisions(_obj,"anchor");
					if _any_colision_anchor > 0	{break;}
				}
		}
	if _any_colision_anchor < 1
		{
			_obj.control_method.intertia_translation = exe_inertial_translation_add_delta(_inertial_translation,_delta);
			_obj = exe_return_map_part_ref(_obj);
		}
	
	return([_obj,_any_colision_anchor,_b_cycle]);
}