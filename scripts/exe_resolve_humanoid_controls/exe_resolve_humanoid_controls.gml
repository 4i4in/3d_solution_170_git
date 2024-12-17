function exe_resolve_humanoid_controls(_cycle,_obj,_main_id)
{
	switch(_cycle)
		{
#region idle
			case "idle":
				if array_length(_obj.control_method.anchor) > 0
					{
					//save respawn point
					if _obj.control_method.temporary_values.action1 != 0	{_obj = exe_save_respawn_point(_obj,"current")};
					//rotation
						if _obj.control_method.temporary_values.yaw != 0	
							{	
								var _value = _obj.control_method.temporary_values.yaw * _obj.character_sheet.body_measures.idle_rot_speed[0];
								_obj = exe_humanoid_in_cycle_rotate(_obj,_main_id,_value);
								
								//speed up rotation
								_obj.character_sheet.body_measures.idle_rot_speed[0] +=	(	abs(_obj.control_method.temporary_values.yaw)/game_speed	) * _obj.character_sheet.body_measures.idle_rot_speed[3];
								if _obj.character_sheet.body_measures.idle_rot_speed[0] > _obj.character_sheet.body_measures.idle_rot_speed[1]	{_obj.character_sheet.body_measures.idle_rot_speed[0] = _obj.character_sheet.body_measures.idle_rot_speed[1];};
							}
						//reset rotation speed
						else	{_obj.character_sheet.body_measures.idle_rot_speed[0] = _obj.character_sheet.body_measures.idle_rot_speed[2];}
					//==========
					
						if _obj.control_method.temporary_values.strafe_fb > 0	&&	_obj.control_method.temporary_values.jump == 0		
							{
								_obj.character_sheet.body_measures.walk_speed_up[0] = _obj.character_sheet.body_measures.walk_speed_up[2];
								
								var _value = _obj.control_method.temporary_values.strafe_fb;
								_obj = exe_humanoid_in_cycle_walk(_obj,_main_id,_value);
							};
						
					//mod camera
						if	_obj.control_method.temporary_values.yaw != 0 || _obj.control_method.temporary_values.pitch != 0
							{
								var _cam_rot = _obj.character_sheet.body_measures.idle_rot_speed[0] * _obj.character_sheet.body_measures.cam_rot_speed	* sign(_obj.control_method.temporary_values.yaw);
								var _cam_pitch = _obj.character_sheet.body_measures.cam_pitch_speed	* _obj.control_method.temporary_values.pitch;
								
								if abs(_obj.control_method.temporary_values.pitch) > 0.9
									{
										_obj.character_sheet.body_measures.cam_minus_pitch[0] += _obj.control_method.temporary_values.pitch * _obj.character_sheet.body_measures.cam_minus_pitch[3];
									}
								else if abs(_obj.control_method.temporary_values.pitch) < 0.3
									{
										_obj.character_sheet.body_measures.cam_minus_pitch[0] -= sign(_obj.character_sheet.body_measures.cam_minus_pitch[0]);
										//reset
										if abs(_obj.character_sheet.body_measures.cam_minus_pitch[0]) < _obj.character_sheet.body_measures.cam_minus_pitch[2]
											{_obj.character_sheet.body_measures.cam_minus_pitch[0] = 0;}
									}
								if abs(_obj.character_sheet.body_measures.cam_minus_pitch[0]) > _obj.character_sheet.body_measures.cam_minus_pitch[1]	
									{	_obj.character_sheet.body_measures.cam_minus_pitch[0] = sign(_obj.character_sheet.body_measures.cam_minus_pitch[0]) * _obj.character_sheet.body_measures.cam_minus_pitch[1]	}
								
									
								var _cam_minus_pitch = _obj.character_sheet.body_measures.cam_minus_pitch[0];
								
								_obj.character_sheet.body_measures.mod_camera_back = [0,_cam_pitch + _cam_minus_pitch,_cam_rot,0,0,0,0,0,0];
								for(var _mcb = 0; _mcb < array_length(_obj.character_sheet.body_measures.mod_camera_back); _mcb++)
									{
										_obj.character_sheet.body_measures.mod_camera_back[_mcb] += _obj.character_sheet.body_measures.keep_camera_back[_mcb];
									}
							}
						else
							{
								_obj.character_sheet.body_measures.mod_camera_back = variable_clone(_obj.character_sheet.body_measures.keep_camera_back);
								_obj.character_sheet.body_measures.cam_minus_pitch[0] -= sign(_obj.character_sheet.body_measures.cam_minus_pitch[0]);
								//reset
								if abs(_obj.character_sheet.body_measures.cam_minus_pitch[0]) < _obj.character_sheet.body_measures.cam_minus_pitch[2]
									{_obj.character_sheet.body_measures.cam_minus_pitch[0] = 0;}
							}
					//jumping	
						if _obj.control_method.temporary_values.jump > 0		
							{
								_obj.character_sheet.body_measures.jump_arr[0] += _obj.character_sheet.body_measures.jump_arr[3];
								if _obj.character_sheet.body_measures.jump_arr[0] > _obj.character_sheet.body_measures.jump_arr[1]
									{
										//execute jump;
										var _jump_or_not = exe_check_if_jump_is_reasonable(_obj,_main_id,"idle");
										if _jump_or_not > 0
											{	_obj = exe_humanoid_in_cycle_jump(_obj,_main_id);	};
										//reset	
										_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[2];
									}
							}
						else
							{
								if _obj.character_sheet.body_measures.jump_arr[0] > 0
									{
										//execute jump;
										var _jump_or_not = exe_check_if_jump_is_reasonable(_obj,_main_id,"idle");
										if _jump_or_not > 0
											{	_obj = exe_humanoid_in_cycle_jump(_obj,_main_id);	};
										//reset	
										_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[2];
									}
							}
					//=============
					}
				break;
#endregion
#region walk
			case "walk":
				if array_length(_obj.control_method.anchor) > 0
					{
					//rotation
						if _obj.control_method.temporary_values.yaw != 0	||	_obj.control_method.temporary_values.strafe_sides != 0
							{	
								var _rot_input = _obj.control_method.temporary_values.yaw;
								if abs(_obj.control_method.temporary_values.strafe_sides) < 0.75
									{	_rot_input += _obj.control_method.temporary_values.strafe_sides;	};
								
								var _value = _rot_input * _obj.character_sheet.body_measures.walk_rot_speed[0];
								_obj = exe_humanoid_in_cycle_rotate(_obj,_main_id,_value);
								
								//speed up rotation
								_obj.character_sheet.body_measures.walk_rot_speed[0] +=	(	abs(_rot_input)/game_speed	) * _obj.character_sheet.body_measures.walk_rot_speed[3];
								if _obj.character_sheet.body_measures.walk_rot_speed[0] > _obj.character_sheet.body_measures.walk_rot_speed[1]	{_obj.character_sheet.body_measures.walk_rot_speed[0] = _obj.character_sheet.body_measures.walk_rot_speed[1];};
							}
						//reset rotation speed
						else	{_obj.character_sheet.body_measures.walk_rot_speed[0] = _obj.character_sheet.body_measures.walk_rot_speed[2];}
					//==========
						
						if _obj.control_method.temporary_values.strafe_fb > 0		
							{
								_obj.character_sheet.body_measures.walk_speed_up[0] -=	(	abs(_obj.control_method.temporary_values.strafe_fb)/game_speed	) * _obj.character_sheet.body_measures.walk_speed_up[3];
								if _obj.character_sheet.body_measures.walk_speed_up[0] < -_obj.control_method.temporary_values.strafe_fb *_obj.character_sheet.body_measures.walk_speed_up[1]	{_obj.character_sheet.body_measures.walk_speed_up[0] = -_obj.control_method.temporary_values.strafe_fb *_obj.character_sheet.body_measures.walk_speed_up[1]};
								if _obj.character_sheet.body_measures.walk_speed_up[0] > _obj.control_method.temporary_values.strafe_fb *_obj.character_sheet.body_measures.walk_speed_up[1]		{_obj.character_sheet.body_measures.walk_speed_up[0] = _obj.control_method.temporary_values.strafe_fb *_obj.character_sheet.body_measures.walk_speed_up[1]};
							}
					
						if _obj.control_method.temporary_values.strafe_fb == 0		
							{
								_obj.character_sheet.body_measures.walk_speed_up[0] = _obj.character_sheet.body_measures.walk_speed_up[2];
								
								var _value = _obj.control_method.temporary_values.strafe_fb;
								_obj = exe_humanoid_in_cycle_idle(_obj,_main_id,_value);
							};
						
						if _obj.control_method.temporary_values.strafe_fb < 0		
							{
								_obj.character_sheet.body_measures.walk_speed_up[0] = _obj.character_sheet.body_measures.walk_speed_up[2];
								
								var _value = _obj.control_method.temporary_values.strafe_fb;
								_obj = exe_humanoid_in_cycle_idle(_obj,_main_id,_value);
							};
							
						//mod camera
						if	_obj.control_method.temporary_values.yaw != 0	||	_obj.control_method.temporary_values.strafe_sides != 0 ||
							_obj.control_method.temporary_values.strafe_fb != 0 || _obj.control_method.temporary_values.pitch != 0
							{	
								var _cam_rot = _obj.character_sheet.body_measures.walk_rot_speed[0] * _obj.character_sheet.body_measures.cam_rot_speed	* sign(_obj.control_method.temporary_values.yaw);
								var _move_speed = -_obj.character_sheet.body_measures.walk_speed_up[0] * _obj.character_sheet.body_measures.cam_pitch_mul;
								var _cam_pitch = _obj.character_sheet.body_measures.cam_pitch_speed	* _obj.control_method.temporary_values.pitch;
								
								//camera adapt to walking down
								if string_starts_with(_obj.control_method.behaviour_cycle,"scrambling_") 
									{	
										var _fix_pitch = 0;
										if !is_array(_obj.control_method.carry_anim_info)			{_fix_pitch = 1;};
										else if _obj.control_method.carry_anim_info[0] == "back"	{_fix_pitch = 1;};
										
										if _fix_pitch > 0	{_cam_pitch += _obj.character_sheet.body_measures.scrambling_cam_pitch;};
									}
								
								_obj.character_sheet.body_measures.mod_camera_back = [0,_move_speed+_cam_pitch,_cam_rot,0,0,0,0,0,0];
								for(var _mcb = 0; _mcb < array_length(_obj.character_sheet.body_measures.mod_camera_back); _mcb++)
									{
										_obj.character_sheet.body_measures.mod_camera_back[_mcb] += _obj.character_sheet.body_measures.keep_camera_back[_mcb];
									}
							}
						else
							{
								_obj.character_sheet.body_measures.mod_camera_back = variable_clone(_obj.character_sheet.body_measures.keep_camera_back);
							}
						//jumping	
						if _obj.control_method.temporary_values.jump > 0		
							{
								_obj.character_sheet.body_measures.jump_arr[0] += _obj.character_sheet.body_measures.jump_arr[3];
								if _obj.character_sheet.body_measures.jump_arr[0] > _obj.character_sheet.body_measures.jump_arr[1]
									{
										//execute jump;
										var _jump_or_not = exe_check_if_jump_is_reasonable(_obj,_main_id,"walk");
										if _jump_or_not > 0
											{	_obj = exe_humanoid_in_cycle_jump(_obj,_main_id);	};
										//reset	
										_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[2];
									}
							}
						else
							{
								if _obj.character_sheet.body_measures.jump_arr[0] > 0
									{
										//execute jump;
										var _jump_or_not = exe_check_if_jump_is_reasonable(_obj,_main_id,"walk");
										if _jump_or_not > 0
											{	_obj = exe_humanoid_in_cycle_jump(_obj,_main_id);	};
										//reset	
										_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[2];
									}
							}
						//=============
						//action	walk to run
						if _obj.control_method.temporary_values.action > 0	&& _obj.control_method.temporary_values.strafe_fb > 0	
							{
								//no run in scrambling
								if string_starts_with(_obj.control_method.behaviour_cycle,"scrambling_")	{}
								else
									{
										_obj.character_sheet.body_measures.walk_speed_up[0] -=	(	abs(_obj.control_method.temporary_values.strafe_fb)/game_speed	) * _obj.character_sheet.body_measures.walk_speed_up[3];
										if _obj.character_sheet.body_measures.walk_speed_up[0] < -_obj.control_method.temporary_values.strafe_fb *_obj.character_sheet.body_measures.walk_speed_up[1]
											{
												_obj = exe_humanoid_in_cycle_jog(_obj,_main_id,-1);
											}
									}
							}
					}
				break;
#endregion
#region jog				
			case "jog":
				if array_length(_obj.control_method.anchor) > 0
					{
					//rotation
						if _obj.control_method.temporary_values.yaw != 0	||	_obj.control_method.temporary_values.strafe_sides != 0
							{	
								var _rot_input = _obj.control_method.temporary_values.yaw;
								if abs(_obj.control_method.temporary_values.strafe_sides) < 0.75
									{	_rot_input += _obj.control_method.temporary_values.strafe_sides;	};
								
								var _value = _rot_input * _obj.character_sheet.body_measures.jog_rot_speed[0];
								_obj = exe_humanoid_in_cycle_rotate(_obj,_main_id,_value);
								
								//speed up rotation
								_obj.character_sheet.body_measures.jog_rot_speed[0] +=	(	abs(_rot_input)/game_speed	) * _obj.character_sheet.body_measures.jog_rot_speed[3];
								if _obj.character_sheet.body_measures.jog_rot_speed[0] > _obj.character_sheet.body_measures.jog_rot_speed[1]	{_obj.character_sheet.body_measures.jog_rot_speed[0] = _obj.character_sheet.body_measures.jog_rot_speed[1];};
							}
						//reset rotation speed
						else	{_obj.character_sheet.body_measures.jog_rot_speed[0] = _obj.character_sheet.body_measures.jog_rot_speed[2];}
					//==========
						
						if _obj.control_method.temporary_values.strafe_fb > 0		
							{
								_obj.character_sheet.body_measures.jog_speed_up[0] -=	(	abs(_obj.control_method.temporary_values.strafe_fb)/game_speed	) * _obj.character_sheet.body_measures.jog_speed_up[3];
								if _obj.character_sheet.body_measures.jog_speed_up[0] < -_obj.control_method.temporary_values.strafe_fb *_obj.character_sheet.body_measures.jog_speed_up[1]		{_obj.character_sheet.body_measures.jog_speed_up[0] = -_obj.control_method.temporary_values.strafe_fb *_obj.character_sheet.body_measures.jog_speed_up[1]};
								if _obj.character_sheet.body_measures.jog_speed_up[0] > _obj.control_method.temporary_values.strafe_fb *_obj.character_sheet.body_measures.jog_speed_up[1]		{_obj.character_sheet.body_measures.jog_speed_up[0] = _obj.control_method.temporary_values.strafe_fb *_obj.character_sheet.body_measures.jog_speed_up[1]};
							}
					
						if _obj.control_method.temporary_values.strafe_fb == 0		
							{
								_obj.character_sheet.body_measures.jog_speed_up[0] = _obj.character_sheet.body_measures.jog_speed_up[2];
								
								_obj = exe_humanoid_in_cycle_walk(_obj,_main_id,-1);
							};
						
						if _obj.control_method.temporary_values.strafe_fb < 0		
							{
								_obj.character_sheet.body_measures.jog_speed_up[0] = _obj.character_sheet.body_measures.jog_speed_up[2];
								
								var _value = _obj.control_method.temporary_values.strafe_fb;
								_obj = exe_humanoid_in_cycle_idle(_obj,_main_id,_value);
							};
							
						//mod camera
						if	_obj.control_method.temporary_values.yaw != 0	||	_obj.control_method.temporary_values.strafe_sides != 0 ||
							_obj.control_method.temporary_values.strafe_fb != 0 || _obj.control_method.temporary_values.pitch != 0
							{	
								var _cam_rot = _obj.character_sheet.body_measures.jog_rot_speed[0] * _obj.character_sheet.body_measures.cam_rot_speed	* sign(_obj.control_method.temporary_values.yaw);
								var _move_speed = -_obj.character_sheet.body_measures.jog_speed_up[0] * _obj.character_sheet.body_measures.cam_pitch_mul;
								var _cam_pitch = _obj.character_sheet.body_measures.cam_pitch_speed	* _obj.control_method.temporary_values.pitch;
								
								_obj.character_sheet.body_measures.mod_camera_back = [0,_move_speed+_cam_pitch,_cam_rot,0,0,0,0,0,0];
								for(var _mcb = 0; _mcb < array_length(_obj.character_sheet.body_measures.mod_camera_back); _mcb++)
									{
										_obj.character_sheet.body_measures.mod_camera_back[_mcb] += _obj.character_sheet.body_measures.keep_camera_back[_mcb];
									}
							}
						else
							{
								_obj.character_sheet.body_measures.mod_camera_back = variable_clone(_obj.character_sheet.body_measures.keep_camera_back);
							}
						
						//jumping	
						if _obj.control_method.temporary_values.jump > 0		
							{
								_obj.character_sheet.body_measures.jump_arr[0] += _obj.character_sheet.body_measures.jump_arr[3];
								if	_obj.character_sheet.body_measures.jump_arr[0] > _obj.character_sheet.body_measures.jump_arr[1]
									{_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[1];};
							}	//reset and resolving in exe_check_if_jump_is_reasonable
					}
				else
					{
						//in air
						//jumping	
						if _obj.control_method.temporary_values.jump > 0		
							{
								_obj.character_sheet.body_measures.jump_arr[0] += _obj.character_sheet.body_measures.jump_arr[3];
								if	_obj.character_sheet.body_measures.jump_arr[0] > _obj.character_sheet.body_measures.jump_arr[1]
									{_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[1];};
							}	//reset and resolving in exe_check_if_jump_is_reasonable
					}
				break;
#endregion
#region climb	
			case "climb":
				var _legal_state = 0;
				switch(_obj.control_method.ground_state)
					{
						case "start_climbing":	case "climbing_idle":	
						case "climb_up":		case "climb_down":			case "climb_left":		case "climb_right":
						case "climb_leftup":	case "climb_leftdown":		case "climb_rightup":	case "climb_rightdown":
						_legal_state = 1; 
							break;
					}
				if array_length(_obj.control_method.anchor) > 0	&& _legal_state > 0
					{
						//movement
						if _obj.control_method.temporary_values.strafe_fb != 0	||	_obj.control_method.temporary_values.strafe_sides != 0
							{
								var _direction = exe_return_climb_plane_direction(_obj.control_method.temporary_values.strafe_sides,_obj.control_method.temporary_values.strafe_fb);
								if _direction == ""
									{
										_obj.control_method.ground_state = "climbing_idle";
										_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
									}
								else
									{
										var _gs = "climb_" + _direction;
										if _obj.control_method.ground_state !=	_gs
											{
												_obj.control_method.ground_state = _gs;
												_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
											}
									}
							}
						else
							{
								var _change_state = 1;
								switch(_obj.control_method.ground_state)
									{
										case "start_climbing":	case "climbing_idle":
										_change_state = 0; 
											break;
									}
								if _change_state > 0
									{
										_obj.control_method.ground_state = "start_climbing";
										_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
									}
							}
					}
			//rotation
				if array_length(_obj.control_method.anchor) > 0	&& _legal_state > 10//off
					{	
						var _dot_mainXY_to_anchor =  exe_return_mainXY_to_anchor(_obj);
						if _obj.control_method.temporary_values.yaw != 0	&&	_dot_mainXY_to_anchor < _obj.character_sheet.body_measures.dot_mainXY_to_anchor[1]
							{	
								var _value = -_obj.control_method.temporary_values.yaw * _obj.character_sheet.body_measures.climb_rot_speed[0];
								_obj = exe_humanoid_in_cycle_rotate(_obj,_main_id,_value);
								
								//speed up rotation
								_obj.character_sheet.body_measures.climb_rot_speed[0] +=	(	abs(_obj.control_method.temporary_values.yaw)/game_speed	) * _obj.character_sheet.body_measures.climb_rot_speed[3];
								if _obj.character_sheet.body_measures.climb_rot_speed[0] > _obj.character_sheet.body_measures.climb_rot_speed[1]	{_obj.character_sheet.body_measures.climb_rot_speed[0] = _obj.character_sheet.body_measures.climb_rot_speed[1];};
							}
						//reset rotation speed
						else	{_obj.character_sheet.body_measures.climb_rot_speed[0] = _obj.character_sheet.body_measures.climb_rot_speed[2];}
					}
			//==========
			//mod camera
				var _pose_rot = 0;	var _pose_pitch = 0;
				var _pr = _obj.character_sheet.body_measures.climb_cam_pose_angle[0];
				var _pp = _obj.character_sheet.body_measures.climb_cam_pose_angle[1];
				switch(_obj.control_method.ground_state)
					{
						case "climb_leftup":	_pose_rot -= _pr;	_pose_pitch += _pp;	break;
						case "climb_leftdown":	_pose_rot -= _pr;	_pose_pitch -= _pp;	break;
						case "climb_left":		_pose_rot -= _pr;	break;
						
						case "climb_rightup":	_pose_rot += _pr;	_pose_pitch += _pp;	break;
						case "climb_rightdown":	_pose_rot += _pr;	_pose_pitch -= _pp;	break;
						case "climb_right":		_pose_rot += _pr;	break;
						
						case "climb_up":		_pose_pitch += 2*_pp;	break;
						case "climb_down":		_pose_pitch -= 2*_pp;	break;
					}
				if	_obj.control_method.temporary_values.yaw != 0 || _obj.control_method.temporary_values.pitch != 0	||
					_pose_rot != 0	||	_pose_pitch != 0
					{
						var _cam_rot = _obj.character_sheet.body_measures.climb_rot_speed[0] * _obj.character_sheet.body_measures.cam_rot_speed	* -sign(_obj.control_method.temporary_values.yaw);
						var _cam_pitch = _obj.character_sheet.body_measures.cam_pitch_speed	* _obj.control_method.temporary_values.pitch;
						
						if abs(_obj.control_method.temporary_values.pitch) > 0.9
							{
								_obj.character_sheet.body_measures.cam_minus_pitch[0] += _obj.control_method.temporary_values.pitch * _obj.character_sheet.body_measures.cam_minus_pitch[3];
							}
						else if abs(_obj.control_method.temporary_values.pitch) < 0.3
							{
								_obj.character_sheet.body_measures.cam_minus_pitch[0] -= sign(_obj.character_sheet.body_measures.cam_minus_pitch[0]);
								//reset
								if abs(_obj.character_sheet.body_measures.cam_minus_pitch[0]) < _obj.character_sheet.body_measures.cam_minus_pitch[2]
									{_obj.character_sheet.body_measures.cam_minus_pitch[0] = 0;}
							}
						if abs(_obj.character_sheet.body_measures.cam_minus_pitch[0]) > _obj.character_sheet.body_measures.cam_minus_pitch[1]	
							{	_obj.character_sheet.body_measures.cam_minus_pitch[0] = sign(_obj.character_sheet.body_measures.cam_minus_pitch[0]) * _obj.character_sheet.body_measures.cam_minus_pitch[1]	}
								
									
						var _cam_minus_pitch = _obj.character_sheet.body_measures.cam_minus_pitch[0];
								
						_obj.character_sheet.body_measures.mod_camera_back = [0,_cam_pitch + _cam_minus_pitch + _pose_pitch,_cam_rot + _pose_rot,0,0,0,0,0,0];
						for(var _mcb = 0; _mcb < array_length(_obj.character_sheet.body_measures.mod_camera_back); _mcb++)
							{
								_obj.character_sheet.body_measures.mod_camera_back[_mcb] += _obj.character_sheet.body_measures.keep_camera_back[_mcb];
							}
					}
				else
					{
						_obj.character_sheet.body_measures.mod_camera_back = variable_clone(_obj.character_sheet.body_measures.keep_camera_back);
						_obj.character_sheet.body_measures.cam_minus_pitch[0] -= sign(_obj.character_sheet.body_measures.cam_minus_pitch[0]);
						//reset
						if abs(_obj.character_sheet.body_measures.cam_minus_pitch[0]) < _obj.character_sheet.body_measures.cam_minus_pitch[2]
							{_obj.character_sheet.body_measures.cam_minus_pitch[0] = 0;}
					}
			//==========
			//jumping	
				if array_length(_obj.control_method.anchor) > 0	&& _legal_state > 0
					{
						if _obj.control_method.temporary_values.jump > 0		
							{
								_obj.character_sheet.body_measures.jump_arr[0] += _obj.character_sheet.body_measures.jump_arr[3];
								if _obj.character_sheet.body_measures.jump_arr[0] > _obj.character_sheet.body_measures.jump_arr[1]
									{
										//execute jump;
										var _jump_or_not = exe_check_if_jump_is_reasonable(_obj,_main_id,"climb");
										if _jump_or_not > 0
											{	_obj = exe_humanoid_in_cycle_climb_jump(_obj,_main_id);	};
										//reset	
										_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[2];
									}
							}
						else
							{
								if _obj.character_sheet.body_measures.jump_arr[0] > 0
									{
										_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[2];
									}
							}
					}
				//=============
				break;
#endregion
#region hang	
			case "hang":
				var _legal_state = 0;
				_obj.character_sheet.body_measures.hang_controls_pause[0]--;
				if _obj.character_sheet.body_measures.hang_controls_pause[0] < -100	{_obj.character_sheet.body_measures.hang_controls_pause[0] = -1;};
				var _pause_control = 0;	if _obj.character_sheet.body_measures.hang_controls_pause[0] > 0	{_pause_control = 1;};
				
				switch(_obj.control_method.ground_state)
					{
						case "start_hanging":	case "hanging_idle":	
						case "hang_fwd":		case "hang_back":	
						case "hang_left":		case "hang_right":
						_legal_state = 1; 
							break;
					}
				if array_length(_obj.control_method.anchor) > 0	&& _legal_state > 0 && _pause_control < 1//off testing
					{
						//movement
						if _obj.control_method.temporary_values.strafe_fb != 0	||	_obj.control_method.temporary_values.strafe_sides != 0
							{
								var _direction = exe_return_hang_plane_direction(_obj.control_method.temporary_values.strafe_sides,_obj.control_method.temporary_values.strafe_fb);
								if _direction == ""
									{
										if _obj.control_method.temporary_values.strafe_sides != 0
											{
												var _value = _obj.control_method.temporary_values.strafe_sides * _obj.character_sheet.body_measures.hang_rot_speed[0];
												_obj = exe_humanoid_in_cycle_rotate(_obj,_main_id,_value);
											}
										_obj.control_method.ground_state = "hanging_idle";
										_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
									}
								else
									{
										var _gs = "hang_" + _direction;
										if _obj.control_method.ground_state !=	_gs
											{
												_obj.control_method.ground_state = _gs;
												_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
											}
									}
							}
						else
							{
								var _change_state = 1;
								switch(_obj.control_method.ground_state)
									{
										case "start_hanging":	case "hanging_idle":
										_change_state = 0; 
											break;
									}
								if _change_state > 0
									{
										_obj.control_method.ground_state = "start_hanging";
										_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
									}
							}
					}
			//rotation
				if array_length(_obj.control_method.anchor) > 0	&& _legal_state > 0
					{	
						if _obj.control_method.temporary_values.yaw != 0
							{	
								var _value = _obj.control_method.temporary_values.yaw * _obj.character_sheet.body_measures.hang_rot_speed[0];
								_obj = exe_humanoid_in_cycle_rotate(_obj,_main_id,_value);
								
								//speed up rotation
								_obj.character_sheet.body_measures.hang_rot_speed[0] +=	(	abs(_obj.control_method.temporary_values.yaw)/game_speed	) * _obj.character_sheet.body_measures.hang_rot_speed[3];
								if _obj.character_sheet.body_measures.hang_rot_speed[0] > _obj.character_sheet.body_measures.hang_rot_speed[1]	{_obj.character_sheet.body_measures.hang_rot_speed[0] = _obj.character_sheet.body_measures.hang_rot_speed[1];};
							}
						//reset rotation speed
						else	{_obj.character_sheet.body_measures.hang_rot_speed[0] = _obj.character_sheet.body_measures.hang_rot_speed[2];}
					}
			//==========
			//mod camera
				var _pose_rot = 0;
				var _pose_pitch = 0;
				switch(_obj.control_method.ground_state)
					{
						case "hang_left":	_pose_rot += _obj.character_sheet.body_measures.hang_cam_pose_angle[2];	break;
						case "hang_right":	_pose_rot -= _obj.character_sheet.body_measures.hang_cam_pose_angle[2];	break;
						case "hang_jump":	
							switch(_obj.control_method.behaviour_cycle)
								{
									case "hang_jump_down_start_L":		case "hang_jump_down_start_R":	
									case "hang_jump_down_continue_L":	case "hang_jump_down_continue_R":	
									case "hang_jump_down_continue2_L":	case "hang_jump_down_continue2_R":	
									_pose_pitch = -2* _obj.character_sheet.body_measures.hang_cam_pose_angle[0];
										break;
										
									case "hang_jump_left_start_L":	case "hang_jump_left_start_R":	
									case "hang_jump_left_continue_L":	case "hang_jump_left_continue_R":	
									_pose_rot += _obj.character_sheet.body_measures.hang_cam_pose_angle[2];	break;
										
									case "hang_jump_right_start_L":		case "hang_jump_right_start_R":	
									case "hang_jump_right_continue_L":	case "hang_jump_right_continue_R":	
									_pose_rot -= _obj.character_sheet.body_measures.hang_cam_pose_angle[2];	break;	
								}
							break;
					}
				var _hang_pitch = _obj.character_sheet.body_measures.hang_cam_pose_angle[0];
				var _cam_down = _obj.character_sheet.body_measures.hang_cam_pose_angle[1];
				if	_obj.control_method.temporary_values.yaw != 0 || _obj.control_method.temporary_values.pitch != 0	||	_pose_rot != 0
					{
						var _cam_rot = _obj.character_sheet.body_measures.climb_rot_speed[0] * _obj.character_sheet.body_measures.cam_rot_speed	* -sign(_obj.control_method.temporary_values.yaw);
						var _cam_pitch = _obj.character_sheet.body_measures.cam_pitch_speed	* _obj.control_method.temporary_values.pitch;
						
						if abs(_obj.control_method.temporary_values.pitch) > 0.9
							{
								_obj.character_sheet.body_measures.cam_minus_pitch[0] += _obj.control_method.temporary_values.pitch * _obj.character_sheet.body_measures.cam_minus_pitch[3];
							}
						else if abs(_obj.control_method.temporary_values.pitch) < 0.3
							{
								_obj.character_sheet.body_measures.cam_minus_pitch[0] -= sign(_obj.character_sheet.body_measures.cam_minus_pitch[0]);
								//reset
								if abs(_obj.character_sheet.body_measures.cam_minus_pitch[0]) < _obj.character_sheet.body_measures.cam_minus_pitch[2]
									{_obj.character_sheet.body_measures.cam_minus_pitch[0] = 0;}
							}
						if abs(_obj.character_sheet.body_measures.cam_minus_pitch[0]) > _obj.character_sheet.body_measures.cam_minus_pitch[1]	
							{	_obj.character_sheet.body_measures.cam_minus_pitch[0] = sign(_obj.character_sheet.body_measures.cam_minus_pitch[0]) * _obj.character_sheet.body_measures.cam_minus_pitch[1]	}
								
									
						var _cam_minus_pitch = _obj.character_sheet.body_measures.cam_minus_pitch[0];
								
						_obj.character_sheet.body_measures.mod_camera_back = [0,_hang_pitch + _cam_pitch + _cam_minus_pitch + _pose_pitch,_cam_rot + _pose_rot,0,_cam_down,0,0,0,0];
						for(var _mcb = 0; _mcb < array_length(_obj.character_sheet.body_measures.mod_camera_back); _mcb++)
							{	_obj.character_sheet.body_measures.mod_camera_back[_mcb] += _obj.character_sheet.body_measures.keep_camera_back[_mcb];	};
					}
				else
					{
						_obj.character_sheet.body_measures.mod_camera_back = [0,_hang_pitch + _pose_pitch,0,0,_cam_down,0,0,0,0];
						for(var _mcb = 0; _mcb < array_length(_obj.character_sheet.body_measures.mod_camera_back); _mcb++)
							{	_obj.character_sheet.body_measures.mod_camera_back[_mcb] += _obj.character_sheet.body_measures.keep_camera_back[_mcb];	};
						_obj.character_sheet.body_measures.cam_minus_pitch[0] -= sign(_obj.character_sheet.body_measures.cam_minus_pitch[0]);
						//reset
						if abs(_obj.character_sheet.body_measures.cam_minus_pitch[0]) < _obj.character_sheet.body_measures.cam_minus_pitch[2]
							{_obj.character_sheet.body_measures.cam_minus_pitch[0] = 0;}
					}
			//==========
			//jumping	
				if array_length(_obj.control_method.anchor) > 0	&& _legal_state > 0
					{
						if _obj.control_method.temporary_values.jump > 0		
							{
								_obj.character_sheet.body_measures.jump_arr[0] += _obj.character_sheet.body_measures.jump_arr[3];
								if _obj.character_sheet.body_measures.jump_arr[0] > _obj.character_sheet.body_measures.jump_arr[1]
									{
										//execute jump;
										var _jump_or_not = exe_check_if_jump_is_reasonable(_obj,_main_id,"hang");
										if _jump_or_not > 0
											{	_obj = exe_humanoid_in_cycle_hang_jump(_obj,_main_id);	};
										//reset	
										_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[2];
									}
							}
						else
							{
								if _obj.character_sheet.body_measures.jump_arr[0] > 0
									{
										_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[2];
									}
							}
					}
				//=============
				break;
#endregion
		}
	return(_obj);
}