function exe_pushup_a_bit_against_gravity_exception(_obj,_main_id)
{
	var _force = [_obj.control_method.gravity[0]/game_speed,_obj.control_method.gravity[1]/game_speed,_obj.control_method.gravity[2]/game_speed];
							
	_obj.part_posMat[_main_id][12] -= _force[0];
	_obj.part_posMat[_main_id][13] -= _force[1];
	_obj.part_posMat[_main_id][14] -= _force[2];
							
	return(_obj);
}