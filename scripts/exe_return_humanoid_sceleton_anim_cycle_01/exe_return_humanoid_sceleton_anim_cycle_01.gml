function exe_return_humanoid_sceleton_anim_cycle_01()
{
	var _struct =
		{
			
			//done
			noone_cycle :			[],
			faling_cycle :			[	["falling_short_01",20,[0,1,1],["rec_Ltoe","rec_Rtoe","ass_inertial","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],				["falling_left_01",20,[0,1,1],["rec_Ltoe","rec_Rtoe","ass_inertial","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],						["falling_right_01",20,[0,1,1],["rec_Ltoe","rec_Rtoe","ass_inertial","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			
			landing_light_R :		[	["landing_light_R_01",5,[0,1,1],[]],				],
			landing_light_L :		[	["landing_light_L_01",5,[0,1,1],[]],				],
			
			landing_medium_R :		[	["landing_medium_R_01",5,[0,1,1],[]],									["landing_light_R_01",15,[0,1,1],[]],					],
			landing_medium_L :		[	["landing_medium_L_01",5,[0,1,1],[]],									["landing_light_L_01",15,[0,1,1],[]],					],
				
			landing_hard_R :		[	["landing_hard_R_01",15,[0,1,1],[]],									["landing_medium_R_01",15,[0,1,1],[]],										["landing_light_R_01",15,[0,1,1],[]],							],
			landing_hard_L :		[	["landing_hard_L_01",15,[0,1,1],[]],									["landing_medium_L_01",15,[0,1,1],[]],										["landing_light_L_01",15,[0,1,1],[]],							],
			
			idle_start_R :			[	["idle_start_R_01",30,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],		["idle_start_C_0R",15,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],		["idle_start_C_1R",10,[0,1,1],["rec_Ltoe","fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],			],
			idle_start_L :			[	["idle_start_L_01",30,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],		["idle_start_C_0L",15,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],		["idle_start_C_1L",10,[0,1,1],["rec_Rtoe","fwd_step_up","fwd_step_down","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],			],
			
			idle_R_01 :				[	["idle_R_02",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],			["idle_start_R_01",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],		["idle_R_01",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],		["idle_left_02",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],			["idle_right_02",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],						],
			idle_L_01 :				[	["idle_L_02",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],			["idle_start_L_01",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],		["idle_L_01",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],		["idle_right_02",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],			["idle_left_02",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],						],
			
			idle_R_02 :				[	["idle_left_02",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],		["idle_right_02",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],						],
			idle_L_02 :				[	["idle_right_02",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],		["idle_left_02",45,[0,1,1],["fwd_step_up","fwd_step_flat","fwd_step_down","col_ass_fb","col_shd_sides","col_ass_head"]],							],
			
		}
	return(_struct);
}