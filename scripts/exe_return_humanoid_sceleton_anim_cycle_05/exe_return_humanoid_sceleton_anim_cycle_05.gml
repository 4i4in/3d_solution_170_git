function exe_return_humanoid_sceleton_anim_cycle_05()
{
	var _struct =
		{
			//done
			noone_cycle :			[],
			
			//"rec_Rtoe","rec_Ltoe","catch_Rhand","catch_Lhand"
			//"col_ass_fb","col_shd_sides","col_ass_head"
			
			
			//climp up down
			climb_up_LN :			[	["climbing_up_L_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],				["climbing_up_L_02",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			["climbing_up_L_03",15,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["climbing_up_L_04",15,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			["climbing_up_L_05",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			],
			climb_up_RN :			[	["climbing_up_R_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],				["climbing_up_R_02",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			["climbing_up_R_03",15,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["climbing_up_R_04",15,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			["climbing_up_R_05",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			],
			
			climb_down_LN :			[	["climbing_down_L_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],				["climbing_down_L_02",15,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],			["climbing_down_L_03",20,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],			["climbing_down_L_04",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],		["climbing_down_L_05",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],			],
			climb_down_RN :			[	["climbing_down_R_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],				["climbing_down_R_02",15,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],			["climbing_down_R_03",20,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],			["climbing_down_R_04",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],		["climbing_down_R_05",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],			],
			
			backonfeet_climb_L :	[	["back_on_feet_climb_L_01",10,[0,1,1],[]],		["back_on_feet_climb_L_02",10,[0,1,1],[]],		["back_on_feet_climb_L_03",10,[0,1,1],[]],				["back_on_feet_climb_L_04",10,[0,1,1],["rec_Rtoe"]],			["back_on_feet_climb_L_05",10,[0,1,1],["rec_Rtoe"]],		],
			backonfeet_climb_R :	[	["back_on_feet_climb_R_01",10,[0,1,1],[]],		["back_on_feet_climb_R_02",10,[0,1,1],[]],		["back_on_feet_climb_R_03",10,[0,1,1],[]],				["back_on_feet_climb_R_04",10,[0,1,1],["rec_Ltoe"]],			["back_on_feet_climb_R_05",10,[0,1,1],["rec_Ltoe"]],		],
			
		}
	return(_struct);
}