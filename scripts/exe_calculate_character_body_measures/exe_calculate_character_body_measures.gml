function exe_calculate_character_body_measures(_obj)
{
	switch(_obj.control_method.active[1])
		{
			case "humanoid_sceleton":
				_obj.character_sheet.body_measures	= {};
				var _anim_pack_ref = _obj.character_sheet.anim_pack;
				var _part_naming = reference_struct[$ _anim_pack_ref][$ "part_naming"];
				var _part_dependency = reference_struct[$ _anim_pack_ref][$ "basic_pose"];
				
				for(var _ii = 0; _ii < array_length(_part_naming); _ii++)
					{
						var _p_name = _part_naming[_ii];
						var _ignore = exe_body_measures_ignore_by_name(_p_name);
						if _ignore < 1
							{
								var _scale = real(_obj.part_vbuff_load_reference[_ii][1]);
								var _x = _part_dependency[_ii][1][0][3];
								var _y = _part_dependency[_ii][1][0][4];
								var _z = _part_dependency[_ii][1][0][5];
						
								var _val = point_distance_3d(0,0,0,_x,_y,_z) * _scale;
						
								struct_set(_obj.character_sheet.body_measures, _p_name,			_val	);
							}
					}
				var _val = _obj.character_sheet.body_measures.hip_R_01 + _obj.character_sheet.body_measures.Uleg_R_01 + _obj.character_sheet.body_measures.hip_L_01 + _obj.character_sheet.body_measures.Uleg_L_01;
				struct_set(_obj.character_sheet.body_measures, "stride_width",			_val	);
				
				var _val = _obj.character_sheet.body_measures.Uleg_R_01 + _obj.character_sheet.body_measures.Lleg_R_01 + _obj.character_sheet.body_measures.foot_R_01;
				struct_set(_obj.character_sheet.body_measures, "stride_length_R",			_val*0.7	);
				
				var _val = _obj.character_sheet.body_measures.Uleg_L_01 + _obj.character_sheet.body_measures.Lleg_L_01 + _obj.character_sheet.body_measures.foot_L_01;
				struct_set(_obj.character_sheet.body_measures, "stride_length_L",			_val*0.7	);
				
				var _val = _obj.character_sheet.body_measures.hip_L_01 + _obj.character_sheet.body_measures.Uleg_L_01 + _obj.character_sheet.body_measures.Lleg_L_01 + _obj.character_sheet.body_measures.foot_L_01 + _obj.character_sheet.body_measures.toe_L_01;
				struct_set(_obj.character_sheet.body_measures, "leg_L",			_val	);
				var _val = _obj.character_sheet.body_measures.hip_R_01 + _obj.character_sheet.body_measures.Uleg_R_01 + _obj.character_sheet.body_measures.Lleg_R_01 + _obj.character_sheet.body_measures.foot_R_01 + _obj.character_sheet.body_measures.toe_R_01;
				struct_set(_obj.character_sheet.body_measures, "leg_R",			_val	);
				
				
			//angle of climbing
				var _dot_base = 30;
				var _val = dcos(_dot_base);
				struct_set(_obj.character_sheet.body_measures, "walk_dot",			-_val	);
				var _val = dcos(2*_dot_base);
				struct_set(_obj.character_sheet.body_measures, "scrambling_dot",			-_val	);
				var _val = dcos(4*_dot_base);
				struct_set(_obj.character_sheet.body_measures, "climbing_dot",				-_val	);
				var _val = _dot_base;
				struct_set(_obj.character_sheet.body_measures, "scrambling_cam_pitch",			-_val	);
			//=================
			
				var _val = 2;
				struct_set(_obj.character_sheet.body_measures, "max_idle_states",			_val	);
				
				var _val = [1,3,1,1];//curent | max | reset | speed change
				struct_set(_obj.character_sheet.body_measures, "idle_rot_speed",			_val	);
				
				
			//movement speeds	walk, jog
				var _val = [1,2,1,1];//curent | max | reset | speed change
				struct_set(_obj.character_sheet.body_measures, "walk_rot_speed",			_val	);
				
				var _val = [0,50,0,30];//curent | max | reset | speed change
				struct_set(_obj.character_sheet.body_measures, "walk_speed_up",			_val	); //this one is in percentage of anim speed
				
				
				var _val = [1,2,1,1];//curent | max | reset | speed change
				struct_set(_obj.character_sheet.body_measures, "jog_rot_speed",			_val	);
				
				var _val = [0,50,25,30];//curent | max | reset | speed change
				struct_set(_obj.character_sheet.body_measures, "jog_speed_up",			_val	); //this one is in percentage of anim speed
				
				var _val = [9,4,3];	//value of 10 give with value above of 10 jump for common human height of 0.4m
				struct_set(_obj.character_sheet.body_measures, "jog_jump_strength_flat",			_val	);
				
				var _val = [11,3,2];	//value of 10 give with value above of 10 jump for common human height of 0.4m
				struct_set(_obj.character_sheet.body_measures, "jog_jump_strength_stepup",			_val	);
				
				var _val = [8,5,4];	//value of 10 give with value above of 10 jump for common human height of 0.4m
				struct_set(_obj.character_sheet.body_measures, "jog_jump_strength_stepdown",			_val	);
			//===============
			
			//camera
				var _val = 15;
				struct_set(_obj.character_sheet.body_measures, "cam_rot_speed",			_val	);
				var _val = 30;
				struct_set(_obj.character_sheet.body_measures, "cam_pitch_speed",			_val	);
				var _val = 0.5;
				struct_set(_obj.character_sheet.body_measures, "cam_pitch_mul",			_val	);
				
				var _keep_camera_back = [0,0,0,0,0,0,0,0,0];
				for(var _fc = 0; _fc < array_length(_obj.part_naming); _fc++)
					{
						if _obj.part_naming[_fc] == "camera_back"
							{
								_keep_camera_back = _obj.part_dependency_load_reference[_fc][1][0];
								break;
							}
					}
				struct_set(_obj.character_sheet.body_measures, "keep_camera_back",			_keep_camera_back	);
				struct_set(_obj.character_sheet.body_measures, "mod_camera_back",			[0,0,0,0,0,0,0,0,0]	);
				
				var _val = [0,60,1,0.3];//curent | max | reset | speed change
				struct_set(_obj.character_sheet.body_measures, "cam_minus_pitch",			_val	);
			//===========	
			
			//jumping
				var _val = [0,10,0,1];//curent | max | reset | speed change
				struct_set(_obj.character_sheet.body_measures, "jump_arr",			_val	);
				var _val = [10,7,5];	//value of 10 give with value above of 10 jump for common human height of 0.4m
				struct_set(_obj.character_sheet.body_measures, "jump_strength",			_val	);
			//===========	
				
				//pushback coliders
				var _val = _obj.character_sheet.body_measures.spine_01 + _obj.character_sheet.body_measures.spine_02;
				struct_set(_obj.character_sheet.body_measures, "det_col_ass_fwd",			_val	);
				
				var _val = (_obj.character_sheet.body_measures.Uarm_R_01 + _obj.character_sheet.body_measures.Farm_R_01)/2;
				struct_set(_obj.character_sheet.body_measures, "det_col_shoulderR_right",			_val	);
				
				var _val = (_obj.character_sheet.body_measures.Uarm_L_01 + _obj.character_sheet.body_measures.Farm_L_01)/2;
				struct_set(_obj.character_sheet.body_measures, "det_col_shoulderL_left",			_val	);
				
				var _val = _obj.character_sheet.body_measures.spine_01 + _obj.character_sheet.body_measures.spine_02;
				struct_set(_obj.character_sheet.body_measures, "det_col_ass_back",			-_val	);
				
				var _val = [0,0,0];
				struct_set(_obj.character_sheet.body_measures, "det_past_main_part",			_val	);
				
			//movement_climb
				var _val = 1;
				struct_set(_obj.character_sheet.body_measures, "perform_climbing",			_val	);
				var _val = [0.1,0.5,3];//min, max, change speed in deg
				struct_set(_obj.character_sheet.body_measures, "dot_mainXY_to_anchor",			_val	);
				var _val = [1,2,1,1];//curent | max | reset | speed change
				struct_set(_obj.character_sheet.body_measures, "climb_rot_speed",			_val	);
				var _val = [30,15];//rot,pitch
				struct_set(_obj.character_sheet.body_measures, "climb_cam_pose_angle",			_val	);
				var _val = [10,10,10];	//value of 10 give with value above of 10 jump for common human height of 0.4m
				struct_set(_obj.character_sheet.body_measures, "climb_jump_strength",			_val	);
			//movement_hang
				var _val = [1,2,1,1];//curent | max | reset | speed change
				struct_set(_obj.character_sheet.body_measures, "hang_rot_speed",			_val	);
				var _val = [60,-25,30];//pitch default, cam down, poser_rot
				struct_set(_obj.character_sheet.body_measures, "hang_cam_pose_angle",			_val	);
				var _val = [0,30];//pitch default, cam dwon
				struct_set(_obj.character_sheet.body_measures, "hang_controls_pause",			_val	);
				var _val = [0,15,15];	//value of 10 give with value above of 10 jump for common human height of 0.4m
				struct_set(_obj.character_sheet.body_measures, "hang_jump_strength",			_val	);
			//=============
				break;
		}
	return(_obj);
}