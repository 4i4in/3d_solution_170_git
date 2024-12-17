function exe_return_humanoid_sceleton_anim_cycle_10()
{
	var _struct =
		{
			//done
			noone_cycle :			[],
			
			//"rec_Rtoe","rec_Ltoe","catch_Rhand","catch_Lhand"
			//"col_ass_fb","col_shd_sides","col_ass_head"
			
			//hang jump
			hang_jump_down_start_L :		[	["hang_jump_down_start_L_01",10,[0,1,1],[]],		],
			hang_jump_down_start_R :		[	["hang_jump_down_start_R_01",10,[0,1,1],[]],		],
			
			hang_jump_down_continue_L :		[	["hang_jump_down_start_L_01",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],			],
			hang_jump_down_continue_R :		[	["hang_jump_down_start_R_01",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],			],
		
		
			hang_jump_fwd_start_L :			[	["hang_jump_fwd_start_L_01",20,[0,1,1],[]],				["hang_jump_fwd_start_L_02",20,[0,1,1],[]],				["hang_jump_fwd_start_L_03",20,[0,1,1],[]]		],
			hang_jump_fwd_start_R :			[	["hang_jump_fwd_start_R_01",20,[0,1,1],[]],				["hang_jump_fwd_start_R_02",20,[0,1,1],[]],				["hang_jump_fwd_start_R_03",20,[0,1,1],[]]		],
			
			hang_jump_fwd_continue_L :		[	["hang_jump_fwd_continue_L_01",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["hang_jump_fwd_continue_R_01",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			hang_jump_fwd_continue_R :		[	["hang_jump_fwd_continue_R_01",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["hang_jump_fwd_continue_L_01",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
		
			hang_jump_back_start_L :		[	["hang_jump_fwd_start_L_01",10,[0,1,1],[]],				["hang_jump_fwd_start_L_02",20,[0,1,1],[]],				],
			hang_jump_back_start_R :		[	["hang_jump_fwd_start_R_01",10,[0,1,1],[]],				["hang_jump_fwd_start_R_02",20,[0,1,1],[]],				],
			
			hang_jump_back_continue_L :		[	["hang_jump_back_continue_L_01",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["hang_jump_back_continue_L_02",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]				],
			hang_jump_back_continue_R :		[	["hang_jump_back_continue_R_01",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["hang_jump_back_continue_R_02",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]				],
		
		
			hang_jump_left_start_L :		[	["hang_jump_left_start_L_01",10,[0,1,1],[]],			["hang_jump_left_start_L_02",15,[0,1,1],[]]		],
			hang_jump_left_start_R :		[	["hang_jump_left_start_R_01",10,[0,1,1],[]],			["hang_jump_left_start_R_02",15,[0,1,1],[]]		],
			
			hang_jump_left_continue_L :		[	["hang_jump_left_continue_L_01",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["hang_jump_left_continue_L_02",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			hang_jump_left_continue_R :		[	["hang_jump_left_continue_R_01",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["hang_jump_left_continue_L_02",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
		
			hang_jump_right_start_L :		[	["hang_jump_right_start_L_01",10,[0,1,1],[]],			["hang_jump_right_start_L_02",15,[0,1,1],[]]		],
			hang_jump_right_start_R :		[	["hang_jump_right_start_R_01",10,[0,1,1],[]],			["hang_jump_right_start_R_02",15,[0,1,1],[]]		],
			
			hang_jump_right_continue_L :	[	["hang_jump_right_continue_L_01",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["hang_jump_right_continue_R_02",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			hang_jump_right_continue_R :	[	["hang_jump_right_continue_R_01",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["hang_jump_right_continue_R_02",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
		
		
			
			hang_jump_down_continue2_L :	[	["hang_jump_down_start_R_01",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			hang_jump_down_continue2_R :	[	["hang_jump_down_start_L_01",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
			hang_jump_fwd_continue2_L :		[	["hang_jump_fwd_continue_L_01",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]				],
			hang_jump_fwd_continue2_R :		[	["hang_jump_fwd_continue_R_01",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]				],
			
			hang_jump_back_continue2_L :	[	["hang_jump_fwd_continue_L_01",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			hang_jump_back_continue2_R :	[	["hang_jump_fwd_continue_R_01",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
			hang_jump_left_continue2_L :	[	["hang_jump_left_continue_L_02",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			hang_jump_left_continue2_R :	[	["hang_jump_left_continue_L_02",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
			hang_jump_right_continue2_L :	[	["hang_jump_right_continue_R_02",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			hang_jump_right_continue2_R :	[	["hang_jump_right_continue_R_02",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
		}
	return(_struct);
}