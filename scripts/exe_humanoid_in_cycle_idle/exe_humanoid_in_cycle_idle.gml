function exe_humanoid_in_cycle_idle(_obj,_main_id,_value)
{
	_obj.control_method.behaviour_timers[0] = 0;
	_obj.control_method.ground_state = "idle";
	var _anim_power = _value;//unused now
	_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj,_anim_power);
	
	return(_obj);
}