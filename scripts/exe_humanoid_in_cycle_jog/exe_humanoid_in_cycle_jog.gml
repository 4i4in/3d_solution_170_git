function exe_humanoid_in_cycle_jog(_obj,_main_id,_value)
{
	//speed setting transfer
	switch(_obj.control_method.ground_state)
		{
			case "walk":
				var _input_value = _obj.character_sheet.body_measures.walk_speed_up[0]/_obj.character_sheet.body_measures.walk_speed_up[1];
				_input_value /= 2;
				_obj.character_sheet.body_measures.jog_speed_up[0] = floor(_input_value * _obj.character_sheet.body_measures.jog_speed_up[1]);
				break;
		}
	
	_obj.control_method.behaviour_timers[0] = 0;
	_obj.control_method.ground_state = "jog";
	_obj.control_method.carry_anim_info = -1;
	_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
	
	return(_obj);
}