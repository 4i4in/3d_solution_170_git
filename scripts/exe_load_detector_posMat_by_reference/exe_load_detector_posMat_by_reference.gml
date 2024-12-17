function exe_load_detector_posMat_by_reference(_posMat,_ii,_obj)
{
	switch(_obj.part_naming[_ii])
		{
			case "det_innertial_dir_length":
				_posMat[12] += _obj.control_method.intertia_translation[0][0];
				_posMat[13] += _obj.control_method.intertia_translation[0][1];
				_posMat[14] += _obj.control_method.intertia_translation[0][2];
				
				if struct_get(_obj.character_sheet, "body_measures") != undefined
					{	
						var _vecdidl = vec_normalize([	_obj.control_method.intertia_translation[0][0],_obj.control_method.intertia_translation[0][1],_obj.control_method.intertia_translation[0][2]	]);
						var _mul = (_obj.character_sheet.body_measures.leg_L	+ _obj.character_sheet.body_measures.leg_R)/2;
						_posMat[12] += _vecdidl[0] * _mul;
						_posMat[13] += _vecdidl[1] * _mul;
						_posMat[14] += _vecdidl[2] * _mul;
					}
				break;
			case "det_innertial_dir_length_raw":
				_posMat[12] += _obj.control_method.intertia_translation[0][0];
				_posMat[13] += _obj.control_method.intertia_translation[0][1];
				_posMat[14] += _obj.control_method.intertia_translation[0][2];
				break;
				
			case "det_anchor":
				if array_length(_obj.control_method.anchor) > 0
					{
						var _expected_anchor_position = _obj.control_method.anchor[0][1];
						_posMat[12] = _expected_anchor_position[0];
						_posMat[13] = _expected_anchor_position[1];
						_posMat[14] = _expected_anchor_position[2];
										
						var _up = 0;
						if struct_get(_obj.character_sheet, "body_measures") != undefined
							{
								if string_starts_with(_obj.control_method.anchor[0][0],"toe_R_")	{	_up = _obj.character_sheet.body_measures.toe_R_01;	};
								if string_starts_with(_obj.control_method.anchor[0][0],"toe_L_")	{	_up = _obj.character_sheet.body_measures.toe_L_01;	};
							}
							
						var _delta = [0,0,0];
						_delta = exe_move_updown(_delta,_posMat,_up);
						_posMat = exe_delta_add_Mat(_delta,_posMat);
					}
				break;
							
			case "det_anchor_real":
				if array_length(_obj.control_method.anchor) > 0
					{
						var _expected_anchor_position = _obj.control_method.anchor[0][1];
						_posMat[12] = _expected_anchor_position[0];
						_posMat[13] = _expected_anchor_position[1];
						_posMat[14] = _expected_anchor_position[2];
					}
				break;
								
			case "det_fwd_ground_C":
				if array_length(_obj.control_method.anchor) > 0
					{
						if string_starts_with(_obj.control_method.anchor[0][0],"toe_")
							{
								var _ref = _obj.part_dependency[_ii][array_length(_obj.part_dependency[_ii])-2]; if _ref < 0 {_ref=0;};
								_posMat =  variable_clone(_obj.part_posMat[_ref]);
								
								if struct_get(_obj.character_sheet, "body_measures") != undefined
									{
										var _stride_length = _obj.character_sheet.body_measures.stride_length_R;
										
										//no use of stride width, just messy, check by curent anchor directly forward
										//var _stride_width = _obj.character_sheet.body_measures.stride_width;
										//if string_starts_with(_obj.control_method.anchor[0][0],"toe_L_")	{_stride_width = -_stride_width;	_stride_length = _obj.character_sheet.body_measures.stride_length_L;};
										//if string_starts_with(_obj.control_method.anchor[0][0],"toe_R_")	{_stride_width = _stride_width;		_stride_length = _obj.character_sheet.body_measures.stride_length_R;};
										
										if string_starts_with(_obj.control_method.anchor[0][0],"toe_L_")	{_stride_length = _obj.character_sheet.body_measures.stride_length_L;};
										if string_starts_with(_obj.control_method.anchor[0][0],"toe_R_")	{_stride_length = _obj.character_sheet.body_measures.stride_length_R;};
								
										var _delta = [0,0,0];
										_delta = exe_move_fb(_delta,_posMat,_stride_length);
										//_delta = exe_move_sides(_delta,_posMat,_stride_width);
										_posMat = exe_delta_add_Mat(_delta,_posMat);
									}
							}
					}
				break;
				
			case "det_fwd_ground_C_up":
				if struct_get(_obj.character_sheet, "body_measures") != undefined
					{
						var _ref = _obj.part_dependency[_ii][array_length(_obj.part_dependency[_ii])-2]; if is_undefined(_ref) {_ref=0;};
						_posMat =  variable_clone(_obj.part_posMat[_ref]);
						var _step_height = (_obj.character_sheet.body_measures.foot_R_01 + _obj.character_sheet.body_measures.foot_L_01)/2;
				
						var _delta = [0,0,0];
						_delta = exe_move_updown(_delta,_posMat,_step_height);
						_posMat = exe_delta_add_Mat(_delta,_posMat);
					}
				break;
				
			case "det_fwd_ground_C_down":
				if struct_get(_obj.character_sheet, "body_measures") != undefined
					{
						var _ref = _obj.part_dependency[_ii][array_length(_obj.part_dependency[_ii])-2]; if is_undefined(_ref) {_ref=0;};
						_posMat =  variable_clone(_obj.part_posMat[_ref]);
						var _step_height = -(_obj.character_sheet.body_measures.foot_R_01 + _obj.character_sheet.body_measures.foot_L_01)/2;
				
						var _delta = [0,0,0];
						_delta = exe_move_updown(_delta,_posMat,_step_height);
						_posMat = exe_delta_add_Mat(_delta,_posMat);
					}
				break;
				
			case "det_fwd_ground_C_2down":
				if struct_get(_obj.character_sheet, "body_measures") != undefined
					{
						var _ref = _obj.part_dependency[_ii][array_length(_obj.part_dependency[_ii])-2]; if is_undefined(_ref) {_ref=0;};
						_posMat =  variable_clone(_obj.part_posMat[_ref]);
						var _step_height = -(_obj.character_sheet.body_measures.foot_R_01 + _obj.character_sheet.body_measures.foot_L_01);
				
						var _delta = [0,0,0];
						_delta = exe_move_updown(_delta,_posMat,_step_height);
						_posMat = exe_delta_add_Mat(_delta,_posMat);
					}
				break;
				
			case "det_col_ass_fwd":
				if struct_get(_obj.character_sheet, "body_measures") != undefined
					{
						var _ref = _obj.part_dependency[_ii][array_length(_obj.part_dependency[_ii])-2]; if is_undefined(_ref) {_ref=0;};
						_posMat =  variable_clone(_obj.part_posMat[_ref]);
						var _fwd = _obj.character_sheet.body_measures.det_col_ass_fwd;
				
						var _delta = [0,0,0];
						_delta = exe_move_fb(_delta,_posMat,_fwd);
						_posMat = exe_delta_add_Mat(_delta,_posMat);
					}
				break;
				
			case "det_col_shoulderR_right":
				if struct_get(_obj.character_sheet, "body_measures") != undefined
					{
						var _ref = _obj.part_dependency[_ii][array_length(_obj.part_dependency[_ii])-2]; if is_undefined(_ref) {_ref=0;};
						_posMat =  variable_clone(_obj.part_posMat[_ref]);
						var _fwd = -_obj.character_sheet.body_measures.det_col_shoulderR_right;
				
						var _delta = [0,0,0];
						_delta = exe_move_sides(_delta,_posMat,_fwd);
						_posMat = exe_delta_add_Mat(_delta,_posMat);
					}
				break;
				
			case "det_col_shoulderL_left":
				if struct_get(_obj.character_sheet, "body_measures") != undefined
					{
						var _ref = _obj.part_dependency[_ii][array_length(_obj.part_dependency[_ii])-2]; if is_undefined(_ref) {_ref=0;};
						_posMat =  variable_clone(_obj.part_posMat[_ref]);
						var _fwd = _obj.character_sheet.body_measures.det_col_shoulderL_left;
				
						var _delta = [0,0,0];
						_delta = exe_move_sides(_delta,_posMat,_fwd);
						_posMat = exe_delta_add_Mat(_delta,_posMat);
					}
				break;
				
			case "det_col_ass_back":
				if struct_get(_obj.character_sheet, "body_measures") != undefined
					{
						var _ref = _obj.part_dependency[_ii][array_length(_obj.part_dependency[_ii])-2]; if is_undefined(_ref) {_ref=0;};
						_posMat =  variable_clone(_obj.part_posMat[_ref]);
						var _bck = _obj.character_sheet.body_measures.det_col_ass_back;
				
						var _delta = [0,0,0];
						_delta = exe_move_fb(_delta,_posMat,_bck);
						_posMat = exe_delta_add_Mat(_delta,_posMat);
					}
				break;
				
			case "det_past_main_part":
				if struct_get(_obj.character_sheet, "body_measures") != undefined
					{
						var _ref = _obj.part_dependency[_ii][array_length(_obj.part_dependency[_ii])-2]; if is_undefined(_ref) {_ref=0;};
						_posMat =  variable_clone(_obj.part_posMat[_ref]);
						
						var _past_position = _obj.character_sheet.body_measures.det_past_main_part;
				
						_posMat[12] = _past_position[0];
						_posMat[13] = _past_position[1];
						_posMat[14] = _past_position[2];
						
						if struct_get(_obj.control_method, "anim_stack") != undefined
							{
								var _exclusion = 0;
								switch(_obj.control_method.behaviour_cycle)
									{
										case "jog3_L_01_flat":		case "jog3_R_01_flat":	
										case "jog3_L_01_stepup":	case "jog3_R_01_stepup":	
										case "jog3_L_01_stepdown":	case "jog3_R_01_stepdown":	
										
											_exclusion = 1;	break;
									}
								
								if _obj.control_method.anim_stack[1] < 1	&& _exclusion < 1
									{
										_obj.character_sheet.body_measures.det_past_main_part[0] = _obj.part_posMat[_ref][12];
										_obj.character_sheet.body_measures.det_past_main_part[1] = _obj.part_posMat[_ref][13];
										_obj.character_sheet.body_measures.det_past_main_part[2] = _obj.part_posMat[_ref][14];
									}
							}
					}
				break;
		}

	return(_posMat);
}