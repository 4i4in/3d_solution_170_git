function exe_left_click_icon(_mx,_my)
{
	for(var _ii = 0; _ii < array_length(control_array.current_menu_array); _ii++)
		{
			if control_array.current_menu_array[_ii][6] > 0
				{
					execute_function(control_array.current_menu_array[_ii][8],control_array.current_menu_array[_ii][10],control_array.current_menu_array[_ii][11]);
					audio_play_sound(_sound_click_01,0,0);
				}
		}
}