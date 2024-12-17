function exe_push_back_obj_from_nvec(_obj,_main_id,_normal,_new_state,_option1)
{
	if array_length(_obj.control_method.anchor) < 1
		{
			_obj.control_method.intertia_translation[0] = [0,0,0];
							
			var _vec3 = exe_return_vec3_cast_on_main(_obj.part_posMat[_main_id],_normal,collision_resolution);

			_obj.part_dependency_load_reference[_main_id][1][0][3] += _vec3[0];//vec3 swizzling!!! because of format of part_dependency_load_reference
			_obj.part_dependency_load_reference[_main_id][1][0][4] += _vec3[2];//vec3 swizzling!!!
			_obj.part_dependency_load_reference[_main_id][1][0][5] += _vec3[1];//vec3 swizzling!!!
							
		if _option1 != undefined
			{
				if _option1 == "skip"	{	return(_obj);	};
			}
		else
			{
				_obj.control_method.behaviour_timers[0]++;
				_obj.control_method.ground_state = _new_state;
				_obj = exe_resolve_behaviour_cycle_humanoid_sceleton(_obj);
			}
		}
	return(_obj);
}