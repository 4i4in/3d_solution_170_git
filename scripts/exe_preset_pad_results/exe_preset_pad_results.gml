function exe_preset_pad_results()
{
	var _preset_arr = array_create(max_pads);
	for(var _ii = 0; _ii < array_length(_preset_arr); _ii++)
		{
			var _pad_preset_struct = 
				{
					leftjoyX :		0,
					leftjoyY :		0,
					rightjoyX :		0,
					rightjoyY :		0,
					
					leftjoyP :		0,
					rightjoyP :		0,
			
					leftjoy_dir :	[0,1,-1],
					leftjoy_l	:	0,
					left_dz :		0.05,
					
					rightjoy_dir :	[0,1,-1],
					rightjoy_l	:	0,
					right_dz :		0.05,
			
					dpad_up :		0,
					dpad_down :		0,
					dpad_left :		0,
					dpad_right :	0,

					start :			0,
					select :		0,
			
					l_bump :		0,
					l_trig :		0,
			
					r_bump :		0,
					r_trig :		0,
			
					bt_A :			0,
					bt_B :			0,
					bt_X :			0,
					bt_Y :			0,
					
				};
			array_set(_preset_arr,_ii,_pad_preset_struct);
		};
	return(_preset_arr);
}