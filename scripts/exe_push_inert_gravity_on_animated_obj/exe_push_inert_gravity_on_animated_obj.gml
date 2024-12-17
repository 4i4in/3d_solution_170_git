function exe_push_inert_gravity_on_animated_obj(_obj,_inertial_translation,_main_id,_posMat)
{
	var _delta = [-_obj.control_method.gravity[0]/game_speed,-_obj.control_method.gravity[1]/game_speed,-_obj.control_method.gravity[2]/game_speed];
	_posMat = exe_delta_add_Mat(_delta,_posMat);
	_posMat = exe_add_inertial_translation(_inertial_translation,_posMat);
	_obj.part_vsubmit[_main_id] = exe_return_v_submit(_posMat,1);
	_obj.part_posMat[_main_id] = _posMat;
	_obj.control_method.intertia_translation = exe_inertial_translation_add_delta(_inertial_translation,_delta);
	
	show_debug_message(string(game_time) + " | _inertial_translation : " + string(_inertial_translation));
	return(_obj);
}