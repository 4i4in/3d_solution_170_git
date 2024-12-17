function exe_resolve_behaviour_cycle_humanoid_sceleton(_obj)
{
	var _anim_power = _obj.control_method.carry_anim_info;
	switch(_obj.control_method.ground_state)
		{
#region	falling
			case "falling":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_01";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_01";
				
				var _str = "faling_cycle";
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				break;
#endregion
#region landing	
			case "landing":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_01";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_01";
				
				var _max_anim_power = 0;
				for(var _ii = 0; _ii < array_length(_anim_power); _ii++)
					{
						if _anim_power[_ii] > _max_anim_power	{_max_anim_power = _anim_power[_ii];};
					}			
				var _anim_power_str = "light"; //magic numbers to resolve later on
				if _max_anim_power > 20	{_anim_power_str = "medium"};
				if _max_anim_power > 40	{_anim_power_str = "hard"};
	
				var _dirstr = exe_resolve_anchor_letter(_obj);
				var _str = "landing_" + string(_anim_power_str) + _dirstr;
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				_obj.control_method.intertia_translation[0] = [0,0,0];
				break;
#endregion
#region idle		
			case "idle":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_01";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_01";
				
				if string_starts_with(_obj.control_method.behaviour_cycle,"idle") 
					{
						if _anim_power == "recovery_exception"
							{
								_obj.control_method.behaviour_timers[0]++;
								var _dirstr = exe_resolve_anchor_letter(_obj);
								var _str = "idle_start" + _dirstr;
								_obj.control_method.behaviour_cycle = _str;
								_obj = exe_given_pose_anim_in_cycle(_obj,0);
							}
						else
							{
								if string_starts_with(_obj.control_method.behaviour_cycle,"idle_start")
									{
										_obj.control_method.behaviour_timers[0] = 0;//reset cycle counter
										var _dirstr = exe_resolve_anchor_letter(_obj);
										var _str = "idle" + _dirstr + "_01";
										_obj.control_method.behaviour_cycle = _str;
									}
								else
									{
										var _anim_num = (_anim_power[0] mod _anim_power[1])+1;
										var _dirstr = exe_resolve_anchor_letter(_obj);
										var _str = "idle" + _dirstr + "_0" + string(_anim_num);
										_obj.control_method.behaviour_cycle = _str;
										_obj = exe_given_pose_anim_in_cycle(_obj,0);
									}
							}
					}
				else	//cycle starts for first time
					{
						var _dirstr = exe_resolve_anchor_letter(_obj);
						var _str = "idle_start" + _dirstr; 
						_obj.control_method.behaviour_cycle = _str;
						_obj.control_method.anim_stack[1] = 0;
					}
				break;
#endregion
#region walk			
			case "walk":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_09";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_09";
				
				var _step_up = 0;
				var _step_flat = 0;
				var _step_down = 0;
				_obj = exe_perform_colisions_on_obj(_obj,["info","anchor_fwd_ground_C",0]);
				_step_up = exe_temp_check_if_any_colisions(_obj,"info");
				if _step_up < 1
					{
						_obj = exe_perform_colisions_on_obj(_obj,["info","fwd_step_up",0]);
						_step_up = exe_temp_check_if_any_colisions(_obj,"info");
						if _step_up < 1
							{		
								_obj = exe_perform_colisions_on_obj(_obj,["info","fwd_step_flat",0]);
								_step_flat = exe_temp_check_if_any_colisions(_obj,"info");
								if _step_flat < 1
									{
										_obj = exe_perform_colisions_on_obj(_obj,["info","fwd_step_down",0]);
										_step_down = exe_temp_check_if_any_colisions(_obj,"info");
									}
							}
					}
				if string_starts_with(_obj.control_method.behaviour_cycle,"walk") 
					{	
						var _bc_str = string(_obj.control_method.behaviour_cycle);
						var _bc_switch = string_delete(_bc_str,8,99);
						switch(_bc_switch)
							{
								case "walk_L_":	_bc_str = string_replace(_bc_str,"_L_","_R_");	break;
								case "walk_R_":	_bc_str = string_replace(_bc_str,"_R_","_L_");	break;
							}
						_bc_str = string_delete(_bc_str,8,99);
						if		_step_up > 0	{	_bc_str += "01_stepup";		}
						else if _step_flat > 0	{	_bc_str += "01_flat";		}
						//else if _step_down > 0	{	_bc_str += "01_stepdown";	}
						else					{	_bc_str += "01_stepdown";	}
						
						_obj.control_method.behaviour_cycle = _bc_str;
						_obj.control_method.anim_stack[1] = 0;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				else	//cycle starts for first time
					{
						var _dirstr = exe_resolve_anchor_letter(_obj);
						
						if		_step_up > 0		{	var _str = "walk" + _dirstr + "_01_stepup";		}
						else if	_step_flat > 0		{	var _str = "walk" + _dirstr + "_01_flat";		}
						//else if	_step_down > 0		{	var _str = "walk" + _dirstr + "_01_stepdown";	}
						else						{	var _str = "walk" + _dirstr + "_01_stepdown";	}
						
						_obj.control_method.behaviour_cycle = _str;
						_obj.control_method.anim_stack[1] = 0;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				break;
#endregion
#region jump		
			case "jump":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_02";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_02";
				
				if string_starts_with(_obj.control_method.behaviour_cycle,"jump")
					{
						switch(_obj.control_method.behaviour_cycle)
							{
								case "jump_up_start_L": _obj.control_method.behaviour_cycle = "jump_up_continue_L";break;
								case "jump_up_start_R": _obj.control_method.behaviour_cycle = "jump_up_continue_R";break;
								
								case "jump_fwd_start_L": _obj.control_method.behaviour_cycle = "jump_fwd_continue_L";break;
								case "jump_fwd_start_R": _obj.control_method.behaviour_cycle = "jump_fwd_continue_R";break;
								
								case "jump_back_start_L": _obj.control_method.behaviour_cycle = "jump_back_continue_L";break;
								case "jump_back_start_R": _obj.control_method.behaviour_cycle = "jump_back_continue_R";break;
								
								case "jump_left_start_L": _obj.control_method.behaviour_cycle = "jump_left_continue_L";break;
								case "jump_left_start_R": _obj.control_method.behaviour_cycle = "jump_left_continue_R";break;
								
								case "jump_right_start_L": _obj.control_method.behaviour_cycle = "jump_right_continue_L";break;
								case "jump_right_start_R": _obj.control_method.behaviour_cycle = "jump_right_continue_R";break;
							}
							
						_obj.control_method.anchor = [];
						
						_obj.control_method.intertia_translation[0] = variable_clone(_anim_power);	_obj.control_method.carry_anim_info	= [0,0,0];
						_obj.control_method.anim_stack[1] = 0;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				else
					{
						var _jump_dir_name = exe_return_direction_cast_vector(_obj,_anim_power);
						switch(_jump_dir_name)
							{
								case "down":	_jump_dir_name = "up";	break;
							}
						var _dirstr = exe_resolve_anchor_letter(_obj);
						var _str = "jump_"+ _jump_dir_name +"_start" + _dirstr;
						_obj.control_method.anim_stack[1] = 0;
						_obj.control_method.behaviour_cycle = _str;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				break;
#endregion
#region jog
			case "jog":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_02";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_02";
				
				
				if string_starts_with(_obj.control_method.behaviour_cycle,"jog1") 
					{	
						//to jump in jog
						if string_starts_with(_obj.control_method.behaviour_cycle,"jog1_L_01_flat")
							{	_obj.control_method.behaviour_cycle = "jog2_L_01_flat";	};
						if string_starts_with(_obj.control_method.behaviour_cycle,"jog1_R_01_flat")
							{	_obj.control_method.behaviour_cycle = "jog2_R_01_flat";	};
							
						if string_starts_with(_obj.control_method.behaviour_cycle,"jog1_L_01_stepup")
							{	_obj.control_method.behaviour_cycle = "jog2_L_01_stepup";	};
						if string_starts_with(_obj.control_method.behaviour_cycle,"jog1_R_01_stepup")
							{	_obj.control_method.behaviour_cycle = "jog2_R_01_stepup";	};
							
						if string_starts_with(_obj.control_method.behaviour_cycle,"jog1_L_01_stepdown")
							{	_obj.control_method.behaviour_cycle = "jog2_L_01_stepdown";	};
						if string_starts_with(_obj.control_method.behaviour_cycle,"jog1_R_01_stepdown")
							{	_obj.control_method.behaviour_cycle = "jog2_R_01_stepdown";	};	
								
							
						_obj.control_method.anchor = [];
						
						_obj.control_method.intertia_translation[0] = variable_clone(_anim_power);	_obj.control_method.carry_anim_info	= [0,0,0];
						_obj.control_method.anim_stack[1] = 0;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
			
					}
				else if string_starts_with(_obj.control_method.behaviour_cycle,"jog2") 
					{	
						if string_starts_with(_obj.control_method.behaviour_cycle,"jog2_L_01_flat")
							{	_obj.control_method.behaviour_cycle = "jog3_L_01_flat";	};
						if string_starts_with(_obj.control_method.behaviour_cycle,"jog2_R_01_flat")
							{	_obj.control_method.behaviour_cycle = "jog3_R_01_flat";	};
						
						if string_starts_with(_obj.control_method.behaviour_cycle,"jog2_L_01_stepup")
							{	_obj.control_method.behaviour_cycle = "jog3_L_01_stepup";	};
						if string_starts_with(_obj.control_method.behaviour_cycle,"jog2_R_01_stepup")
							{	_obj.control_method.behaviour_cycle = "jog3_R_01_stepup";	};
						
						if string_starts_with(_obj.control_method.behaviour_cycle,"jog2_L_01_stepdown")
							{	_obj.control_method.behaviour_cycle = "jog3_L_01_stepdown";	};
						if string_starts_with(_obj.control_method.behaviour_cycle,"jog3_R_01_stepdown")
							{	_obj.control_method.behaviour_cycle = "jog3_R_01_stepdown";	};
						
						_obj.control_method.anim_stack[1] = 0;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				else if string_starts_with(_obj.control_method.behaviour_cycle,"jog3") 
					{
						//TBD how hard landed
						//var _anim_power_str = "light"; //magic numbers to resolve later on
						//if _max_anim_power > 20	{_anim_power_str = "medium"};
						//if _max_anim_power > 40	{_anim_power_str = "hard"};
	
						var _dirstr = exe_resolve_anchor_letter(_obj);
						switch(_dirstr)
							{
								case "_L":	var _str = "jog4_L_01_flat";break;
								case "_R":	var _str = "jog4_R_01_flat"	break;
							}
						if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
						_obj.control_method.behaviour_cycle = _str;
						_obj.control_method.intertia_translation[0] = [0,0,0];
					}
				else	//cycle starts for first time or continue
					{	
						var _step_up = 0;
						var _step_flat = 0;
						var _step_down = 0;
						
						//jog starting = always up
						if !string_starts_with(_obj.control_method.behaviour_cycle,"jog")	{_step_up = 1;}; 
						
						//continue jog check
						_obj = exe_perform_colisions_on_obj(_obj,["info","anchor_fwd_ground_C",0]);
						_step_up = exe_temp_check_if_any_colisions(_obj,"info");
						if _step_up < 1
							{	
								_obj = exe_perform_colisions_on_obj(_obj,["info","fwd_step_up",0]);
								_step_up = exe_temp_check_if_any_colisions(_obj,"info");
								if _step_up < 1
									{		
										_obj = exe_perform_colisions_on_obj(_obj,["info","fwd_step_flat",0]);
										_step_flat = exe_temp_check_if_any_colisions(_obj,"info");
										if _step_flat < 1
											{
												_obj = exe_perform_colisions_on_obj(_obj,["info","fwd_step_down",0]);
												_step_down = exe_temp_check_if_any_colisions(_obj,"info");
											}
									}
							}
						if		string_starts_with(_obj.control_method.behaviour_cycle,"jog4_L") {var _dirstr = "_L";}
						else if string_starts_with(_obj.control_method.behaviour_cycle,"jog4_R") {var _dirstr = "_R";}
						else	{var _dirstr = exe_resolve_anchor_letter(_obj);}
						
				
						if		_step_up > 0		{	var _str = "jog1" + _dirstr + "_01_stepup";		}
						else if	_step_flat > 0		{	var _str = "jog1" + _dirstr + "_01_flat";		}
						else						{	var _str = "jog1" + _dirstr + "_01_stepdown";	}
				
						//var _str = "jog1" + _dirstr + "_01_flat";
						
						_obj.control_method.behaviour_cycle = _str;
						_obj.control_method.anim_stack[1] = 0;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				break;
#endregion
#region scrambling
			case "scrambling":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_03";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_03";
				
				//fix function return : exe_return_direction_cast_vector
				_anim_power = exe_fix_scrambling_anim_power(_anim_power);
				
				switch(_anim_power[0])
					{
						case "up":	_anim_power[0] = "fwd";	break;
						case "down":	_anim_power[0] = "back";	break;
					}
				
				if string_starts_with(_obj.control_method.behaviour_cycle,"scrambling_") 
					{	
						var _bc_str = string(_obj.control_method.behaviour_cycle);
						var _bc_switch = string_delete(_bc_str,14,99);
						switch(_bc_switch)
							{
								case "scrambling_L_":	_bc_str = string_replace(_bc_str,"_L_","_R_");	break;
								case "scrambling_R_":	_bc_str = string_replace(_bc_str,"_R_","_L_");	break;
							}
						_bc_str = string_delete(_bc_str,14,99);
						_bc_str += string(_anim_power[0]) + "_01";//_anim_power[0] from exe_return_direction_cast_vector;
						
						_obj.control_method.behaviour_cycle = _bc_str;
						_obj.control_method.anim_stack[1] = 0;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				else	//cycle starts for first time
					{
						//_anim_power[0] from exe_return_direction_cast_vector;
						var _dirstr = exe_resolve_anchor_letter(_obj);
						var _str = "scrambling" + _dirstr + "_" + string(_anim_power[0]) + "_01";
						
						_obj.control_method.behaviour_cycle = _str;
						_obj.control_method.anim_stack[1] = 0;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				break;
#endregion
#region	start_climbing
			case "start_climbing":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_04";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_04";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "start_climbing";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "_RN"; break;	
						case "hand_L_01":	_str += "_LN"; break;
						case "toe_R_01":	_str += "_NR"; break;	
						case "toe_L_01":	_str += "_NL"; break;
					}
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				//reset jumping
				_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[2];
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				break;
#endregion
#region climbing_idle
			case "climbing_idle":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_04";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_04";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "climbing_idle";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "_RN"; break;	
						case "hand_L_01":	_str += "_LN"; break;
						case "toe_R_01":	_str += "_RN"; break;	
						case "toe_L_01":	_str += "_LN"; break;
					}
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				break;
#endregion
#region climb_up
			case "climb_up":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_05";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_05";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "climb_up";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "_RN"; break;	
						case "hand_L_01":	_str += "_LN"; break;
						case "toe_R_01":	_str += "_RN"; break;	
						case "toe_L_01":	_str += "_LN"; break;	
					}
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				break;
#endregion
#region climb_down
			case "climb_down":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_05";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_05";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "climb_down";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "_RN"; break;	
						case "hand_L_01":	_str += "_LN"; break;
						case "toe_R_01":	_str += "_RN"; break;	
						case "toe_L_01":	_str += "_LN"; break;	
					}
				if string(_obj.control_method.behaviour_cycle) != 	_str
					{
						_obj.control_method.anim_stack[1] = 0;
						_obj.control_method.behaviour_cycle = _str;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				else
					{
						if _obj.control_method.anim_stack[1] < 1	{_obj = exe_next_pose_anim_next_in_cycle(_obj,0);}
						else										{_obj.control_method.anim_stack[1]--;};
					}
				break;
#endregion
#region climb_left
			case "climb_left":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_04";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_04";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "climb_left_RN"; break;	
						case "hand_L_01":	_str += "switch_hand_to_RN_from_LN"; break;	
						case "toe_R_01":	_str += "switch_hand_to_RN_from_LN"; break;	
						case "toe_L_01":	_str += "switch_hand_to_RN_from_LN"; break;
					}
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				break;
#endregion
#region climb_right
			case "climb_right":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_04";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_04";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "switch_hand_to_LN_from_RN"; break;	
						case "hand_L_01":	_str += "climb_right_LN"; break;	
						case "toe_R_01":	_str += "switch_hand_to_LN_from_RN"; break;	
						case "toe_L_01":	_str += "switch_hand_to_LN_from_RN"; break;						
					}
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				break;
#endregion
#region climb_leftup
			case "climb_leftup":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_04";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_04";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "climb_leftup_RN"; break;	
						case "hand_L_01":	_str += "switch_hand_to_RN_from_LN"; break;	
						case "toe_R_01":	_str += "switch_hand_to_RN_from_LN"; break;	
						case "toe_L_01":	_str += "switch_hand_to_RN_from_LN"; break;
					}
					
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				break;
#endregion
#region climb_leftdown
			case "climb_leftdown":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_04";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_04";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "climb_leftdown_RN"; break;	
						case "hand_L_01":	_str += "switch_hand_to_RN_from_LN"; break;	
						case "toe_R_01":	_str += "switch_hand_to_RN_from_LN"; break;	
						case "toe_L_01":	_str += "switch_hand_to_RN_from_LN"; break;
					}
				if string(_obj.control_method.behaviour_cycle) != 	"climb_leftdown_RN"
					{
						if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
						_obj.control_method.behaviour_cycle = _str;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				else
					{
						if _obj.control_method.anim_stack[1] < 1	{_obj = exe_next_pose_anim_next_in_cycle(_obj,0);}
						else										{_obj.control_method.anim_stack[1]--;};
					}
				break;
#endregion
#region climb_rightup
			case "climb_rightup":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_04";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_04";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "switch_hand_to_LN_from_RN"; break;	
						case "hand_L_01":	_str += "climb_rightup_LN"; break;	
						case "toe_R_01":	_str += "switch_hand_to_LN_from_RN"; break;	
						case "toe_L_01":	_str += "switch_hand_to_LN_from_RN"; break;
					}
					
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				break;
#endregion
#region climb_rightdown
			case "climb_rightdown":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_04";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_04";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "switch_hand_to_LN_from_RN"; break;	
						case "hand_L_01":	_str += "climb_rightdown_LN"; break;	
						case "toe_R_01":	_str += "switch_hand_to_LN_from_RN"; break;	
						case "toe_L_01":	_str += "switch_hand_to_LN_from_RN"; break;
					}
				if string(_obj.control_method.behaviour_cycle) != 	"climb_rightdown_LN"
					{
						if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
						_obj.control_method.behaviour_cycle = _str;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				else
					{
						if _obj.control_method.anim_stack[1] < 1	{_obj = exe_next_pose_anim_next_in_cycle(_obj,0);}
						else										{_obj.control_method.anim_stack[1]--;};
					}
				break;
#endregion
#region backonfeet_climb
			case "backonfeet_climb":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_05";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_05";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
					
				var _str = "";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "backonfeet_climb_R"; break;	
						case "hand_L_01":	_str += "backonfeet_climb_L"; break;	
						case "toe_R_01":	_str += "backonfeet_climb_R"; break;	
						case "toe_L_01":	_str += "backonfeet_climb_L"; break;
					}
				if	(string(_obj.control_method.behaviour_cycle) != 	"backonfeet_climb_L"	&&
					string(_obj.control_method.behaviour_cycle) != 	"backonfeet_climb_R")
					{
						if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
						_obj.control_method.behaviour_cycle = _str;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				else
					{
						if _obj.control_method.anim_stack[1] < 1	{_obj = exe_next_pose_anim_next_in_cycle(_obj,0);}
						else										{_obj.control_method.anim_stack[1]--;};
					}
				break;
#endregion
#region climb_jump		
			case "climb_jump":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_06";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_06";
				
				if string_starts_with(_obj.control_method.behaviour_cycle,"climb_jump_")
					{
						var _skip_push = 0;
						switch(_obj.control_method.behaviour_cycle)
							{
								case "climb_jump_up_start_L": _obj.control_method.behaviour_cycle = "climb_jump_up_continue_L";break;
								case "climb_jump_up_start_R": _obj.control_method.behaviour_cycle = "climb_jump_up_continue_R";break;
								
								case "climb_jump_down_start_L": _obj.control_method.behaviour_cycle = "climb_jump_down_continue_L";break;
								case "climb_jump_down_start_R": _obj.control_method.behaviour_cycle = "climb_jump_down_continue_R";break;
								
								case "climb_jump_back_start_L": _obj.control_method.behaviour_cycle = "climb_jump_back_continue_L";break;
								case "climb_jump_back_start_R": _obj.control_method.behaviour_cycle = "climb_jump_back_continue_R";break;
								
								case "climb_jump_left_start_L": _obj.control_method.behaviour_cycle = "climb_jump_left_continue_L";break;
								case "climb_jump_left_start_R": _obj.control_method.behaviour_cycle = "climb_jump_left_continue_R";break;
								
								case "climb_jump_right_start_L": _obj.control_method.behaviour_cycle = "climb_jump_right_continue_L";break;
								case "climb_jump_right_start_R": _obj.control_method.behaviour_cycle = "climb_jump_right_continue_R";break;
								
								
								case "climb_jump_up_continue_L": _obj.control_method.behaviour_cycle = "climb_jump_up_continue2_L";	_skip_push = 1;	break;
								case "climb_jump_up_continue_R": _obj.control_method.behaviour_cycle = "climb_jump_up_continue2_R";	_skip_push = 1;	break;
								
								case "climb_jump_down_continue_L": _obj.control_method.behaviour_cycle = "climb_jump_down_continue2_L";	_skip_push = 1;	break;
								case "climb_jump_down_continue_R": _obj.control_method.behaviour_cycle = "climb_jump_down_continue2_R";	_skip_push = 1;	break;
								
								case "climb_jump_back_continue_L": _obj.control_method.behaviour_cycle = "climb_jump_back_continue2_L";	_skip_push = 1;	break;
								case "climb_jump_back_continue_R": _obj.control_method.behaviour_cycle = "climb_jump_back_continue2_R";	_skip_push = 1;	break;
								
								case "climb_jump_left_continue_L": _obj.control_method.behaviour_cycle = "climb_jump_left_continue2_L";	_skip_push = 1;	break;
								case "climb_jump_left_continue_R": _obj.control_method.behaviour_cycle = "climb_jump_left_continue2_R";	_skip_push = 1;	break;
								
								case "climb_jump_right_continue_L": _obj.control_method.behaviour_cycle = "climb_jump_right_continue2_L";	_skip_push = 1;	break;
								case "climb_jump_right_continue_R": _obj.control_method.behaviour_cycle = "climb_jump_right_continue2_R";	_skip_push = 1;	break;
							}
						//push back a bit;
						if _skip_push < 1
							{
								_obj.part_posMat[0][12] += _obj.part_posMat[0][0] *1;
								_obj.part_posMat[0][13] += _obj.part_posMat[0][1] *1;
								_obj.part_posMat[0][14] += _obj.part_posMat[0][2] *1;
								_obj.control_method.intertia_translation[0] = variable_clone(_anim_power);	_obj.control_method.carry_anim_info	= [0,0,0];
							}
							
						_obj.control_method.anchor = [];		
						_obj.control_method.anim_stack[1] = 0;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				else
					{
						var _jump_dir_name = exe_return_direction_cast_vector(_obj,_anim_power);
						var _dirstr = exe_resolve_anchor_letter(_obj);
						var _str = "climb_jump_"+ _jump_dir_name +"_start" + _dirstr;
						_obj.control_method.anim_stack[1] = 0;
						_obj.control_method.behaviour_cycle = _str;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				break;
#endregion
#region	start_hanging
			case "start_hanging":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_07";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_07";
				
				var _keep_previous_cycle = variable_clone(_obj.control_method.behaviour_cycle);
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "start_hanging";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "_RN"; break;	
						case "hand_L_01":	_str += "_LN"; break;
						case "toe_R_01":	_str += "_NR"; break;	
						case "toe_L_01":	_str += "_NL"; break;
					}
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				//reset jumping
				_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[2];
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				
				//pause controls for hanging to not get back to climb
				if !string_starts_with(_keep_previous_cycle,"hang_")
					{	_obj.character_sheet.body_measures.hang_controls_pause[0] = _obj.character_sheet.body_measures.hang_controls_pause[1];	};
				break;
#endregion
#region hanging_idle
			case "hanging_idle":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_07";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_07";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "hanging_idle";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "_RN"; break;	
						case "hand_L_01":	_str += "_LN"; break;
						case "toe_R_01":	_str += "_RN"; break;	
						case "toe_L_01":	_str += "_LN"; break;
					}
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				break;
#endregion
#region hang_fwd
			case "hang_fwd":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_07";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_07";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "hang_fwd";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "_RN"; break;	
						case "hand_L_01":	_str += "_LN"; break;
						case "toe_R_01":	_str += "_RN"; break;	
						case "toe_L_01":	_str += "_LN"; break;	
					}
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				break;
#endregion
#region hang_back
			case "hang_back":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_07";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_07";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "hang_back";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "_RN"; break;	
						case "hand_L_01":	_str += "_LN"; break;
						case "toe_R_01":	_str += "_RN"; break;	
						case "toe_L_01":	_str += "_LN"; break;	
					}
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				break;
#endregion
#region hang_left
			case "hang_left":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_08";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_08";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "hanging_go_left_RN"; break;	
						case "hand_L_01":	_str += "hanging_switch_hand_from_LN_to_RN"; break;	
						case "toe_R_01":	_str += "hanging_switch_hand_from_LN_to_RN"; break;	
						case "toe_L_01":	_str += "hanging_switch_hand_from_LN_to_RN"; break;
					}
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				break;
#endregion
#region hang_right
			case "hang_right":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_08";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_08";
				
				_anim_power = exe_fix_climb_anim_power(_anim_power);
				
				var _str = "";
				switch(_anim_power[2])
					{
						case "hand_R_01":	_str += "hanging_switch_hand_from_RN_to_LN"; break;	
						case "hand_L_01":	_str += "hanging_go_right_LN"; break;	
						case "toe_R_01":	_str += "hanging_switch_hand_from_RN_to_LN"; break;	
						case "toe_L_01":	_str += "hanging_switch_hand_from_RN_to_LN"; break;						
					}
				if _obj.control_method.behaviour_cycle != _str	{_obj.control_method.anim_stack[1] = 0;};
				_obj.control_method.behaviour_cycle = _str;
				_obj = exe_given_pose_anim_in_cycle(_obj,0);
				break;
#endregion
#region hang_jump		
			case "hang_jump":
				_obj.character_sheet.anim_pack = "humanoid_sceleton_anim_pack_10";
				_obj.character_sheet.anim_cycles = "humanoid_sceleton_anim_cycle_10";
				
				if string_starts_with(_obj.control_method.behaviour_cycle,"hang_jump_")
					{
						var _skip_push = 0;
						var _flip_rot = 0;
						switch(_obj.control_method.behaviour_cycle)
							{
								case "hang_jump_down_start_L": _obj.control_method.behaviour_cycle = "hang_jump_down_continue_L";break;
								case "hang_jump_down_start_R": _obj.control_method.behaviour_cycle = "hang_jump_down_continue_R";break;
								
								case "hang_jump_fwd_start_L": _obj.control_method.behaviour_cycle = "hang_jump_fwd_continue_L";break;
								case "hang_jump_fwd_start_R": _obj.control_method.behaviour_cycle = "hang_jump_fwd_continue_R";break;
								
								case "hang_jump_back_start_L": _obj.control_method.behaviour_cycle = "hang_jump_back_continue_L";	_flip_rot = 1;break;
								case "hang_jump_back_start_R": _obj.control_method.behaviour_cycle = "hang_jump_back_continue_R";	_flip_rot = 1;break;
								
								case "hang_jump_left_start_L": _obj.control_method.behaviour_cycle = "hang_jump_left_continue_L";break;
								case "hang_jump_left_start_R": _obj.control_method.behaviour_cycle = "hang_jump_left_continue_R";break;
								
								case "hang_jump_right_start_L": _obj.control_method.behaviour_cycle = "hang_jump_right_continue_L";break;
								case "hang_jump_right_start_R": _obj.control_method.behaviour_cycle = "hang_jump_right_continue_R";break;
								
								
								case "hang_jump_fwd_continue_L": _obj.control_method.behaviour_cycle = "hang_jump_fwd_continue2_L";	_skip_push = 1;	break;
								case "hang_jump_fwd_continue_R": _obj.control_method.behaviour_cycle = "hang_jump_fwd_continue2_R";	_skip_push = 1;	break;
								
								case "hang_jump_down_continue_L": _obj.control_method.behaviour_cycle = "hang_jump_down_continue2_L";	_skip_push = 1;	break;
								case "hang_jump_down_continue_R": _obj.control_method.behaviour_cycle = "hang_jump_down_continue2_R";	_skip_push = 1;	break;
								
								case "hang_jump_back_continue_L": _obj.control_method.behaviour_cycle = "hang_jump_back_continue2_L";	_skip_push = 1;	break;
								case "hang_jump_back_continue_R": _obj.control_method.behaviour_cycle = "hang_jump_back_continue2_R";	_skip_push = 1;	break;
								
								case "hang_jump_left_continue_L": _obj.control_method.behaviour_cycle = "hang_jump_left_continue2_L";	_skip_push = 1;	break;
								case "hang_jump_left_continue_R": _obj.control_method.behaviour_cycle = "hang_jump_left_continue2_R";	_skip_push = 1;	break;
								
								case "hang_jump_right_continue_L": _obj.control_method.behaviour_cycle = "hang_jump_right_continue2_L";	_skip_push = 1;	break;
								case "hang_jump_right_continue_R": _obj.control_method.behaviour_cycle = "hang_jump_right_continue2_R";	_skip_push = 1;	break;
							}
						//push back a bit;
						if _skip_push < 1
							{
								_obj.part_posMat[0][12] += _obj.part_posMat[0][8] *1;
								_obj.part_posMat[0][13] += _obj.part_posMat[0][9] *1;
								_obj.part_posMat[0][14] += _obj.part_posMat[0][10] *1;
								_obj.control_method.intertia_translation[0] = variable_clone(_anim_power);	_obj.control_method.carry_anim_info	= [0,0,0];
							}
						//rot 180deg in jumping back;
						if _flip_rot > 0	{	_obj = exe_humanoid_in_cycle_rotate(_obj,0,179);	};
						
						_obj.control_method.anchor = [];		
						_obj.control_method.anim_stack[1] = 0;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				else
					{
						var _jump_dir_name = exe_return_direction_cast_vector(_obj,_anim_power,"hang_revXY");

						var _dirstr = exe_resolve_anchor_letter(_obj);
show_debug_message("_jump_dir_name : " + string(_jump_dir_name));
						var _str = "hang_jump_"+ _jump_dir_name +"_start" + _dirstr;
show_debug_message("_str : " + string(_str));
						_obj.control_method.anim_stack[1] = 0;
						_obj.control_method.behaviour_cycle = _str;
						_obj = exe_given_pose_anim_in_cycle(_obj,0);
					}
				break;
#endregion
		}
	
	return(_obj);
}