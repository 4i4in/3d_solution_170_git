function exe_calculate_anim_speed_change_for_character(_obj,_anim)
{
	var _pose =					_anim[0];
	var _time =					_anim[1];
	
	if string_starts_with(_pose,"walk_")
		{
			if struct_get(_obj.character_sheet.body_measures, "walk_speed_up") != undefined
				{
					var _time_mod = _obj.character_sheet.body_measures.walk_speed_up[0]/100;
					_time_mod *= _time;
					_time += _time_mod;
					_time = round(_time);
					if _time < 1	{_time = 1;};
				}
		}
	if string_starts_with(_pose,"jog_")	
		{
			if struct_get(_obj.character_sheet.body_measures, "jog_speed_up") != undefined
				{
					var _time_mod = _obj.character_sheet.body_measures.jog_speed_up[0]/100;
					//jumpin slow down
					var _jump_sd = _obj.character_sheet.body_measures.jump_arr[0]/_obj.character_sheet.body_measures.jump_arr[1];
					_time_mod += _jump_sd/2;

					_time_mod *= _time;
					_time += _time_mod;
					_time = round(_time);
					if _time < 1	{_time = 1;};
				}
		}
	
	return(_time);
}