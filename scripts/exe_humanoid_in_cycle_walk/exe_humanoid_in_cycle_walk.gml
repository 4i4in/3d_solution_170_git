function exe_humanoid_in_cycle_walk(_obj,_main_id,_value)
{
	_obj.control_method.behaviour_timers[0] = 0;
	_obj.control_method.ground_state = "walk";
	_obj.control_method.carry_anim_info = -1;
	_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
	
	return(_obj);
}