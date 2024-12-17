function exe_humanoid_in_cycle_climb_jump(_obj,_main_id)
{
	_obj.control_method.behaviour_timers[0] = 0;
	_obj.control_method.ground_state = "climb_jump";
	
	_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
	
	return(_obj);
}