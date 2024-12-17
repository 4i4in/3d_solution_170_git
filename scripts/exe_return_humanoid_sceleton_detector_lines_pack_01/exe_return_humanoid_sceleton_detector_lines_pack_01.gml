function exe_return_humanoid_sceleton_detector_lines_pack_01()
{
	var _struct =
		{
			ass_Rtoe :				["ass_pivot_01","toe_R_01","ass_Rtoe",collision_resolution,"toe_R_01","anchor"],
			ass_Ltoe :				["ass_pivot_01","toe_L_01","ass_Ltoe",collision_resolution,"toe_L_01","anchor"],
			
			
			catch_Rhand :			["spine_02","hand_R_01","catch_Rhand",collision_resolution,"hand_R_01","anchor"],
			catch_Lhand :			["spine_02","hand_L_01","catch_Lhand",collision_resolution,"hand_L_01","anchor"],
			
			//recovery for falling better version of ass_Rtoe/ass_Ltoe
			rec_Rtoe :				["head_01","toe_R_01","rec_Rtoe",collision_resolution,"toe_R_01","anchor"],
			rec_Ltoe :				["head_01","toe_L_01","rec_Ltoe",collision_resolution,"toe_L_01","anchor"],
			//==============
			
			ass_inertial :			["main_part","det_innertial_dir_length","ass_inertial",collision_resolution,"main_part","info"],
			ass_inertial_raw :		["main_part","det_innertial_dir_length_raw","ass_inertial_raw",collision_resolution,"main_part","info"],
			
			//select walking cycle up, down, flat
			anchor_fwd_ground_C :	["det_anchor","det_fwd_ground_C","anchor_fwd_ground_C",collision_resolution,"main_part","info"],
			fwd_step_up :			["det_fwd_ground_C","det_fwd_ground_C_up","fwd_step_up",collision_resolution,"main_part","info"],
			fwd_step_flat :			["det_fwd_ground_C_down","det_fwd_ground_C","fwd_step_flat",collision_resolution,"main_part","info"],
			fwd_step_down :			["det_fwd_ground_C_2down","det_fwd_ground_C_down","fwd_step_down",collision_resolution,"main_part","info"],
			
			col_ass_fwd :			["det_col_ass_fwd","ass_pivot_01","col_ass_fwd",collision_resolution,"main_part","pushback"],
			col_shd_right :			["det_col_shoulderR_right","spine_02","col_shd_right",collision_resolution,"main_part","pushback"],
			col_shd_left :			["det_col_shoulderL_left","spine_02","col_shd_left",collision_resolution,"main_part","pushback"],
			col_ass_back :			["det_col_ass_back","ass_pivot_01","col_ass_back",collision_resolution,"main_part","pushback"],
			
	//TBD
			col_nck_up :			["head_01","ass_pivot_01","col_nck_up",collision_resolution,"main_part","pushback"],
			col_ass_down :			["ass_pivot_01","head_01","col_ass_down",collision_resolution,"main_part","pushback"],
			
			
			//falling, jumping coliders
			col_ass_fb :			["det_col_ass_back","det_col_ass_fwd","col_ass_fb",collision_resolution,"main_part","pushback"],
			col_shd_sides:			["det_col_shoulderL_left","det_col_shoulderR_right","col_shd_sides",collision_resolution,"main_part","pushback"],
			col_ass_head:			["head_01","ass_pivot_01","col_ass_head",collision_resolution,"main_part","pushback"],
			
			rec_past_present:		["det_past_main_part","main_part","rec_past_present",collision_resolution,"main_part","pushback"],
			
		}
	return(_struct);
}