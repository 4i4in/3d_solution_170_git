function exe_return_humanoid_sceleton_anim_cycle_06()
{
	var _struct =
		{
			//done
			noone_cycle :			[],
			
			//"rec_Rtoe","rec_Ltoe","catch_Rhand","catch_Lhand"
			//"col_ass_fb","col_shd_sides","col_ass_head"
			
			//climb jump
			climb_jump_up_start_L :			[	["climb_jump_start_up_L_1",10,[0,1,1],[]],				["climb_jump_start_up_L_2",15,[0,1,1],[]]		],
			climb_jump_up_start_R :			[	["climb_jump_start_up_R_1",10,[0,1,1],[]],				["climb_jump_start_up_R_2",15,[0,1,1],[]]		],
			
			climb_jump_up_continue_L :		[	["climb_jump_continue_up_L_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["climb_jump_continue_up_R_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			climb_jump_up_continue_R :		[	["climb_jump_continue_up_R_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["climb_jump_continue_up_L_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
		
			climb_jump_down_start_L :		[	["climb_jump_start_down_L_1",10,[0,1,1],[]],			["climb_jump_start_down_L_2",15,[0,1,1],["ass_Rtoe"]]		],
			climb_jump_down_start_R :		[	["climb_jump_start_down_R_1",10,[0,1,1],[]],			["climb_jump_start_down_R_2",15,[0,1,1],["ass_Ltoe"]]		],
			
			climb_jump_down_continue_L :	[	["climb_jump_continue_down_L_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["climb_jump_continue_down_R_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			climb_jump_down_continue_R :	[	["climb_jump_continue_down_R_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["climb_jump_continue_down_L_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
		
			climb_jump_back_start_L :		[	["climb_jump_back_start_L_1",10,[0,1,1],[]],				],
			climb_jump_back_start_R :		[	["climb_jump_back_start_R_1",10,[0,1,1],[]],				],
			
			climb_jump_back_continue_L :	[	["climb_jump_back_continue_L_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["climb_jump_back_continue_R_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]				],
			climb_jump_back_continue_R :	[	["climb_jump_back_continue_R_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["climb_jump_back_continue_L_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
		
			climb_jump_left_start_L :		[	["climb_jump_left_start_L_1",10,[0,1,1],[]],			["climb_jump_left_start_L_2",15,[0,1,1],[]]		],
			climb_jump_left_start_R :		[	["climb_jump_left_start_R_1",10,[0,1,1],[]],			["climb_jump_left_start_R_2",15,[0,1,1],[]]		],
			
			climb_jump_left_continue_L :	[	["climb_jump_left_continue_L_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["climb_jump_left_continue_R_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			climb_jump_left_continue_R :	[	["climb_jump_left_continue_R_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["climb_jump_left_continue_L_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
		
			climb_jump_right_start_L :		[	["climb_jump_right_start_L_1",10,[0,1,1],[]],			["climb_jump_right_start_L_2",15,[0,1,1],[]]		],
			climb_jump_right_start_R :		[	["climb_jump_right_start_R_1",10,[0,1,1],[]],			["climb_jump_right_start_R_2",15,[0,1,1],[]]		],
			
			climb_jump_right_continue_L :	[	["climb_jump_right_continue_L_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["climb_jump_right_continue_R_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			climb_jump_right_continue_R :	[	["climb_jump_right_continue_R_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]],		["climb_jump_right_continue_L_1",2,[0,1,1],["col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
		
		
			climb_jump_up_continue2_L :		[	["climb_jump_continue_up_R_1",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]				],
			climb_jump_up_continue2_R :		[	["climb_jump_continue_up_L_1",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]				],
			
			climb_jump_down_continue2_L :	[	["climb_jump_continue_down_R_1",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			climb_jump_down_continue2_R :	[	["climb_jump_continue_down_L_1",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
			climb_jump_back_continue2_L :	[	["climb_jump_back_continue_R_1",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			climb_jump_back_continue2_R :	[	["climb_jump_back_continue_L_1",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
			climb_jump_left_continue2_L :	[	["climb_jump_left_continue_R_1",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			climb_jump_left_continue2_R :	[	["climb_jump_left_continue_L_1",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
			climb_jump_right_continue2_L :	[	["climb_jump_right_continue_R_1",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
			climb_jump_right_continue2_R :	[	["climb_jump_right_continue_L_1",5,[0,1,1],["rec_Rtoe","rec_Ltoe","col_ass_fb","col_shd_sides","col_ass_head","rec_past_present","catch_Rhand","catch_Lhand"]]			],
		
		}
	return(_struct);
}