function exe_return_humanoid_sceleton_anim_cycle_07()
{
	var _struct =
		{
			//done
			noone_cycle :			[],
			
			//"rec_Rtoe","rec_Ltoe","catch_Rhand","catch_Lhand"
			//"col_ass_fb","col_shd_sides","col_ass_head"
			
			start_hanging_LN :		[	["catch_Rhand_on_hanging",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["both_hands_R_on_hanging_1",15,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	],
			start_hanging_RN :		[	["catch_Lhand_on_hanging",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["both_hands_L_on_hanging_1",15,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],	],
			
			//clone for catching with feets
			start_hanging_NL :		[	["hanging_NL_to_RN_01",2,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["hanging_NL_to_RN_02",5,[0,1,1],["catch_Rhand","catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["hanging_NL_to_RN_03",10,[0,1,1],["catch_Rhand","catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			],
			start_hanging_NR :		[	["hanging_NR_to_LN_01",2,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["hanging_NR_to_LN_02",5,[0,1,1],["catch_Rhand","catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["hanging_NR_to_LN_03",10,[0,1,1],["catch_Rhand","catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			],
			
			hanging_idle_LN :		[	["hanging_idle_LN_01",30,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["hanging_idle_LN_02",20,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],				["both_hands_L_on_hanging_1",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			],
			hanging_idle_RN :		[	["hanging_idle_RN_01",30,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["hanging_idle_RN_02",20,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],				["both_hands_R_on_hanging_1",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			],
			
			hang_fwd_LN :			[	["hanging_idle_LN_01",20,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["hanging_idle_LN_02",15,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],				["hang_fwd_LN_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			["hang_fwd_LN_02",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe","ass_Ltoe"]],		["hang_fwd_LN_03",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe","ass_Ltoe"]],		["hang_fwd_LN_04",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe","ass_Ltoe"]],		["hang_fwd_LN_05",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe","ass_Ltoe"]],			],
			hang_fwd_RN :			[	["hanging_idle_RN_01",20,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["hanging_idle_RN_02",15,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],				["hang_fwd_RN_01",10,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],			["hang_fwd_RN_02",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe","ass_Ltoe"]],		["hang_fwd_RN_03",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe","ass_Ltoe"]],		["hang_fwd_RN_04",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe","ass_Ltoe"]],		["hang_fwd_RN_05",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe","ass_Ltoe"]],			],
			
			hang_back_LN :			[	["hang_back_LN_01",20,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["hang_back_LN_02",20,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],				["hang_back_LN_03",15,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],			["hang_back_LN_04",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],			["hang_back_LN_05",10,[0,1,1],["catch_Rhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Ltoe"]],			],
			hang_back_RN :			[	["hang_back_RN_01",20,[0,1,1],["col_ass_fwd","col_shd_right","col_shd_left","col_ass_back"]],		["hang_back_RN_02",20,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],				["hang_back_RN_03",15,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],			["hang_back_RN_04",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],			["hang_back_RN_05",10,[0,1,1],["catch_Lhand","col_ass_fwd","col_shd_right","col_shd_left","col_ass_back","ass_Rtoe"]],			],
			
			
		}
	return(_struct);
}