function exe_process_body_measures_names_operation(_carry,_obj)
{
	var _s_name = _carry[2];
	var _arr_num = _carry[3];
	var _operation = _carry[4];
	var _value_change = _carry[5];
	
	var _minmax = -1;
	var _val_min = 0;
	var _val_max = 0;
	
	//_s_name from exe_calculate_character_body_measures
	switch(_s_name)
		{
			//those are calculated:
			case "stride_width":	case "stride_length_R":	case "stride_length_L":
			case "leg_L":	case "leg_R":
			case "main_part":	case "ass_pivot_01":	case "spine_01":	case "spine_02":
			case "neck_01":	case "head_01":	case "jaw_01":	case "helmet_01":	case "visor_01":
			case "shoulder_R_01":	case "Uarm_R_01":	case "Farm_R_01":		case "hand_R_01":
			case "shoulder_L_01":	case "Uarm_L_01":	case "Farm_L_01":		case "hand_L_01":
			case "hip_R_01":	case "Uleg_R_01":	case "Lleg_R_01":	case "foot_R_01":	case "toe_R_01":
			case "hip_L_01":	case "Uleg_L_01":	case "Lleg_L_01":	case "foot_L_01":	case "toe_L_01":
			//hard coded
			case "max_idle_states":	case "keep_camera_back":
			case "det_past_main_part":
			if _operation != "set"	{_operation = "noone";};
				break;
			
			//max from arr
			case "cam_minus_pitch":
			if _arr_num == 3	{	_value_change = 0.1 * sign(_value_change);	};
			case "idle_rot_speed":	case "walk_rot_speed":	case "jog_rot_speed":
			case "walk_speed_up":	case "jog_speed_up":
			if _arr_num == 0
				{
					_minmax = 1;
					_val_min = 0
					_val_max = _obj.character_sheet.body_measures[$ _s_name][1];
				}
			else
				{
					_minmax = 1;
					_val_min = 0
					_val_max = 999;
				}
				break;
			
			//frac
			case "cam_pitch_mul":	case "det_col_ass_back":
			case "det_col_ass_fwd":	case "det_col_shoulderR_right":	case "det_col_shoulderL_left":
			_value_change = 0.1 * sign(_value_change);
				break;
				
			//on off switch
			case "perform_climbing":
			if _operation != "set"	{_operation = "switch";};
				break;
			
			//minus dot
			case "walk_dot":	case "scrambling_dot":
			if _operation != "set"	{_operation = "minus_dcos";}
			else					{_operation = "set_dcos";};
				break;
		}
	_carry[2] = _s_name;
	_carry[3] = _arr_num;
	_carry[4] = _operation;
	_carry[5] = _value_change;
	
	if _minmax > 0
		{
			array_push(_carry,_val_min);	array_push(_carry,_val_max);
		}
		
	return(_carry);
}