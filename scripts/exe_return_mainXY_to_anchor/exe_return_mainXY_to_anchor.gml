function exe_return_mainXY_to_anchor(_obj)
{
//TBD this script must be cast by gravity
	var _vec_dot = 0;
	
	var _continue = 0;
	if is_array(_obj.control_method.carry_anim_info)
		{
			if array_length(_obj.control_method.carry_anim_info) > 2
				{
					if is_array(_obj.control_method.carry_anim_info[3])	
						{
							if array_length(_obj.control_method.carry_anim_info[3]) == 3	{_continue = 1;};		
						}
				}
		}
	
	if _continue > 0
		{
			var _vec3_n = _obj.control_method.carry_anim_info[3];
			var _vec_dot =	_vec3_n[0] * (-_obj.part_posMat[0][4]) +
							_vec3_n[1] * (-_obj.part_posMat[0][5]) +
							_vec3_n[2] * (-_obj.part_posMat[0][6]);
		}
	

	return(_vec_dot);
}