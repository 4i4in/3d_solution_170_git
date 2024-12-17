function exe_perform_humanoid_sceleton_move_3dmove(_obj)
{
	var _main_id = -1;
	for(var _ii = 0; _ii < array_length(_obj.part_naming); _ii++)
		{
			if _main_id > -1	{break;};
			if _obj.part_naming[_ii] == "main_part"	{_main_id = _ii;};
		}
	//var _input_call = _obj.control_method.temporary_values;
	var _inertial_translation = exe_initialize_inertial_translation_array(_obj.control_method.intertia_translation,1.);
	var _posMat = _obj.part_posMat[_main_id];
	
	switch(_obj.control_method.behaviour_cycle)
		{
			case "faling_cycle":	
				_obj = exe_perform_humanoid_sceleton_faling_cycle(_obj,_posMat,_main_id,_inertial_translation,"landing");	
				break;
			
			case "landing_light_R":	case "landing_medium_R":	case "landing_hard_R":
			case "landing_light_L":	case "landing_medium_L":	case "landing_hard_L":
				_obj = exe_perform_humanoid_sceleton_landing_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
			
			case "idle_start_R":	case "idle_start_L":		
			case "idle_R_01":		case "idle_L_01":
			case "idle_R_02":		case "idle_L_02":
				_obj = exe_perform_humanoid_sceleton_idle_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
			
			case "scrambling_R_fwd_01":		case "scrambling_L_fwd_01":
			case "scrambling_R_back_01":	case "scrambling_L_back_01":
			case "scrambling_R_left_01":	case "scrambling_L_left_01":
			case "scrambling_R_right_01":	case "scrambling_L_right_01":
			
			case "walk_L_01_flat":		case "walk_R_01_flat":
			case "walk_L_01_stepup":	case "walk_R_01_stepup":
			case "walk_L_01_stepdown":	case "walk_R_01_stepdown":
				_obj = exe_perform_humanoid_sceleton_walk_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
				
			case "jump_up_start_L":		case "jump_up_start_R":
			case "jump_fwd_start_L":	case "jump_fwd_start_R":
			case "jump_back_start_L":	case "jump_back_start_R":
			case "jump_left_start_L":	case "jump_left_start_R":
			case "jump_right_start_L":	case "jump_right_start_R":
			
			case "jump_up_continue_L":		case "jump_up_continue_R":
			case "jump_fwd_continue_L":		case "jump_fwd_continue_R":
			case "jump_back_continue_L":	case "jump_back_continue_R":
			case "jump_left_continue_L":	case "jump_left_continue_R":
			case "jump_right_continue_L":	case "jump_right_continue_R":
				_obj = exe_perform_humanoid_sceleton_jumping_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
				
			case "jog1_L_01_flat":	case "jog1_R_01_flat":
			case "jog2_L_01_flat":	case "jog2_R_01_flat":
			case "jog4_L_01_flat":	case "jog4_R_01_flat":
			case "jog1_L_01_stepup":	case "jog1_R_01_stepup":
			case "jog2_L_01_stepup":	case "jog2_R_01_stepup":
			case "jog1_L_01_stepdown":	case "jog1_R_01_stepdown":
			case "jog2_L_01_stepdown":	case "jog2_R_01_stepdown":
				_obj = exe_perform_humanoid_sceleton_jog_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
			case "jog3_L_01_flat":		case "jog3_R_01_flat":	
			case "jog3_L_01_stepup":	case "jog3_R_01_stepup":	
			case "jog3_L_01_stepdown":	case "jog3_R_01_stepdown":	
				_obj = exe_perform_humanoid_sceleton_faling_cycle(_obj,_posMat,_main_id,_inertial_translation,"jog");		
				break;
				
			case "start_climbing_LN":	case "start_climbing_RN":
			case "start_climbing_NL":	case "start_climbing_NR":
				_obj = exe_perform_humanoid_sceleton_start_climbing_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
				
			case "climbing_idle_LN":	case "climbing_idle_RN":
				_obj = exe_perform_humanoid_sceleton_idle_climbing_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
			
			case "climb_up_LN":					case "climb_up_RN":
			case "climb_down_LN":				case "climb_down_RN":
			case "switch_hand_to_LN_from_RN":	case "switch_hand_to_RN_from_LN":
			case "climb_left_RN":				case "climb_right_LN":
			case "climb_leftup_RN":				case "climb_rightup_LN":
			case "climb_leftdown_RN":			case "climb_rightdown_LN":
				_obj = exe_perform_humanoid_sceleton_climbing_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
				
			case "backonfeet_climb_L":		case "backonfeet_climb_R":
				_obj = exe_perform_humanoid_sceleton_end_climbing_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
				
			case "climb_jump_up_start_L":			case "climb_jump_up_start_R":
			case "climb_jump_down_start_L":			case "climb_jump_down_start_R":
			case "climb_jump_back_start_L":			case "climb_jump_back_start_R":
			case "climb_jump_left_start_L":			case "climb_jump_left_start_R":
			case "climb_jump_right_start_L":		case "climb_jump_right_start_R":
			
			case "climb_jump_up_continue_L":		case "climb_jump_up_continue_R":
			case "climb_jump_down_continue_L":		case "climb_jump_down_continue_R":
			case "climb_jump_back_continue_L":		case "climb_jump_back_continue_R":
			case "climb_jump_left_continue_L":		case "climb_jump_left_continue_R":
			case "climb_jump_right_continue_L":		case "climb_jump_right_continue_R":
			
			
				_obj = exe_perform_humanoid_sceleton_climb_jumping_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
				
			case "climb_jump_up_continue2_L":		case "climb_jump_up_continue2_R":
			case "climb_jump_down_continue2_L":		case "climb_jump_down_continue2_R":
			case "climb_jump_back_continue2_L":		case "climb_jump_back_continue2_R":
			case "climb_jump_left_continue2_L":		case "climb_jump_left_continue2_R":
			case "climb_jump_right_continue2_L":	case "climb_jump_right_continue2_R":	
			
			case "hang_jump_fwd_continue2_L":		case "hang_jump_fwd_continue2_R":
			case "hang_jump_down_continue2_L":		case "hang_jump_down_continue2_R":
			case "hang_jump_back_continue2_L":		case "hang_jump_back_continue2_R":
			case "hang_jump_left_continue2_L":		case "hang_jump_left_continue2_R":
			case "hang_jump_right_continue2_L":		case "hangb_jump_right_continue2_R":	
				_obj = exe_perform_humanoid_sceleton_faling_cycle(_obj,_posMat,_main_id,_inertial_translation,"start_climbing");
				break;
				
			case "start_hanging_LN":	case "start_hanging_RN":
			case "start_hanging_NL":	case "start_hanging_NR":
				_obj = exe_perform_humanoid_sceleton_start_hanging_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
			
			case "hanging_idle_LN":	case "hanging_idle_RN":
				_obj = exe_perform_humanoid_sceleton_idle_hanging_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
				
			case "hang_fwd_LN":							case "hang_fwd_RN":
			case "hang_back_LN":						case "hang_back_RN":
			case "hanging_switch_hand_from_LN_to_RN":	case "hanging_switch_hand_from_RN_to_LN":
			case "hanging_go_left_RN":					case "hanging_go_right_LN":
				_obj = exe_perform_humanoid_sceleton_hanging_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
				
			case "hang_jump_fwd_start_L":			case "hang_jump_fwd_start_R":
			case "hang_jump_down_start_L":			case "hang_jump_down_start_R":
			case "hang_jump_back_start_L":			case "hang_jump_back_start_R":
			case "hang_jump_left_start_L":			case "hang_jump_left_start_R":
			case "hang_jump_right_start_L":			case "hang_jump_right_start_R":
			
			case "hang_jump_fwd_continue_L":		case "hang_jump_fwd_continue_R":
			case "hang_jump_down_continue_L":		case "hang_jump_down_continue_R":
			case "hang_jump_back_continue_L":		case "hang_jump_back_continue_R":
			case "hang_jump_left_continue_L":		case "hang_jump_left_continue_R":
			case "hang_jump_right_continue_L":		case "hang_jump_right_continue_R":
				_obj = exe_perform_humanoid_sceleton_hang_jumping_cycle(_obj,_posMat,_main_id,_inertial_translation);	
				break;
				
		
		}
	
	
	
	return(_obj);
}