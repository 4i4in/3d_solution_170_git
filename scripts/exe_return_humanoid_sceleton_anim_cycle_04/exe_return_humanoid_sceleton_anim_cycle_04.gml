function exe_return_humanoid_sceleton_anim_cycle_04()
{
	var _struct =
		{
			//done
			noone_cycle :			[],
			
			//"rec_Rtoe","rec_Ltoe","catch_Rhand","catch_Lhand"
			//"col_ass_fb","col_shd_sides","col_ass_head"
			
			start_climbing_LN :		[	["catch_Lhand_on_climbing_1",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	],
			start_climbing_RN :		[	["catch_Rhand_on_climbing_1",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	],
			
			//clone for catching with feets
			start_climbing_NL :		[	["catch_Lhand_on_climbing_1",10,[0,1,1],["catch_Rhand","catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	],
			start_climbing_NR :		[	["catch_Rhand_on_climbing_1",10,[0,1,1],["catch_Rhand","catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	],
			
			//idle state climbing
			climbing_idle_LN :		[	["catch_Lhand_on_climbing_2",30,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["catch_Lhand_on_climbing_1",30,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["catch_Lhand_on_climbing_3",30,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["catch_Lhand_on_climbing_1",30,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	],
			climbing_idle_RN :		[	["catch_Rhand_on_climbing_2",30,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["catch_Rhand_on_climbing_1",30,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["catch_Rhand_on_climbing_3",30,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["catch_Rhand_on_climbing_1",30,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	],
			
			//climb_left_right
			switch_hand_to_LN_from_RN :	[	["switch_hand_to_LN_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["switch_hand_to_LN_02",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["switch_hand_to_LN_03",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["climbing_left_R_05",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	],
			switch_hand_to_RN_from_LN :	[	["switch_hand_to_RN_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["switch_hand_to_RN_02",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["switch_hand_to_RN_03",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["climbing_right_L_05",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	],
			
			climb_left_RN :			[	["climbing_left_R_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["climbing_left_R_02",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["climbing_left_R_03",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["climbing_left_R_04",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			["climbing_left_R_05",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],			],
			climb_right_LN :		[	["climbing_right_L_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["climbing_right_L_02",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["climbing_right_L_03",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["climbing_right_L_04",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			["climbing_right_L_05",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],			],
			
			climb_leftup_RN :		[	["climbing_left_R_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["climbing_leftup_R_02",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["climbing_leftup_R_03",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["climbing_leftup_R_04",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			["climbing_leftup_R_05",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],			],
			climb_rightup_LN :		[	["climbing_right_L_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["climbing_rightup_L_02",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	["climbing_rightup_L_03",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["climbing_rightup_L_04",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			["climbing_rightup_L_05",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],			],
			
			climb_leftdown_RN :		[	["climbing_left_R_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],			["climbing_leftdown_R_02",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],	["climbing_leftdown_R_03",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],		["climbing_leftdown_R_04",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],			["climbing_leftdown_R_05",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],			],
			climb_rightdown_LN :	[	["climbing_right_L_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],		["climbing_rightdown_L_02",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],	["climbing_rightdown_L_03",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],		["climbing_rightdown_L_04",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],			["climbing_rightdown_L_05",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],			],
			
		}
	return(_struct);
}