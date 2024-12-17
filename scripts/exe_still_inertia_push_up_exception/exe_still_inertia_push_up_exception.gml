function exe_still_inertia_push_up_exception(_obj,_main_id)
{
	//TBD corner case when switch from jumps
	
	if abs(	_obj.control_method.intertia_translation[0][0] *
			_obj.control_method.intertia_translation[0][1] * 
			_obj.control_method.intertia_translation[0][2]) < 0.05
		{
			if _obj.control_method.behaviour_timers[0] > 0
				{
					_obj.part_dependency_load_reference[_main_id][1][0][4] = 1;
					_obj.control_method.behaviour_timers[0] = 0;
					
	var _str = "info : " + "\n";
	_str += "exe_still_inertia_push_up_exception : " + "\n";
	exe_throw_fake_rclick_info([_str,20,100]);
	
				}
			else
				{
					_obj.control_method.behaviour_timers[0]++;
				}
		}
		
	return(_obj);
}