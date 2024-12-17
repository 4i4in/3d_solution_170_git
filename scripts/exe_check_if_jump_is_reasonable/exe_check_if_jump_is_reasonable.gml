function exe_check_if_jump_is_reasonable(_obj,_main_id,_cycle)
{
	var _jump_or_not = 0;
	var _posMat = _obj.part_posMat[0];
	
	var _val1 = 0;	var _val2 = 0;	var _val3 = 0;
	switch(_cycle)
		{
			case "idle":	case "walk":
				_val1 = _obj.character_sheet.body_measures.jump_arr[0]/_obj.character_sheet.body_measures.jump_arr[1];
				_val2 = _obj.character_sheet.body_measures.walk_speed_up[0]/_obj.character_sheet.body_measures.walk_speed_up[1];
				_val3 = 0;
				
				//TBD height bous from forward movement, decreasing range
				if _val2 != 0	
					{	
						_val2 *= 0.5;
						_val1 += abs(_val2);
					};
	
				if _obj.control_method.temporary_values.strafe_fb != 0		
					{
						_val2 -= _obj.control_method.temporary_values.strafe_fb;
					}
		
				if _obj.control_method.temporary_values.strafe_sides != 0	
					{
						_val3 += _obj.control_method.temporary_values.strafe_sides;
					}
				var _mul_up = _val1 * _obj.character_sheet.body_measures.jump_strength[0];
				var _mul_fwd = _val2 * _obj.character_sheet.body_measures.jump_strength[1];
				var _mul_sides = _val3 * _obj.character_sheet.body_measures.jump_strength[2];
				break;
				
			case "jog":
				var _jump_boost = _obj.character_sheet.body_measures.jump_arr[0]/_obj.character_sheet.body_measures.jump_arr[1];
				var _val1 = 1;
				var _val2 = _obj.character_sheet.body_measures.jog_speed_up[0]/_obj.character_sheet.body_measures.jog_speed_up[1];
				var _val3 = 0;
	
				if _obj.control_method.temporary_values.strafe_fb != 0		
					{
						_val2 -= _obj.control_method.temporary_values.strafe_fb;
					}
		
				if _obj.control_method.temporary_values.strafe_sides != 0	
					{
						_val3 += _obj.control_method.temporary_values.strafe_sides;
					}
				//reset	
				_obj.character_sheet.body_measures.jump_arr[0] = _obj.character_sheet.body_measures.jump_arr[2];
										
				var _jjp =  [0,0,0];
				switch(_obj.control_method.behaviour_cycle)
					{
						case "jog1_L_01_flat":	case "jog1_R_01_flat":
							_jjp = _obj.character_sheet.body_measures.jog_jump_strength_flat;
							_val1 += _jump_boost/4;
							_val2 += _jump_boost*2 * sign(-_obj.control_method.temporary_values.strafe_fb);
							_val3 += _jump_boost/2 * sign(_obj.control_method.temporary_values.strafe_sides);
							break;
						
						case "jog1_L_01_stepup":	case "jog1_R_01_stepup":
							_jjp = _obj.character_sheet.body_measures.jog_jump_strength_stepup;
							_val1 += _jump_boost/2;
							_val2 += _jump_boost*2 * sign(-_obj.control_method.temporary_values.strafe_fb);
							_val3 += _jump_boost/2 * sign(_obj.control_method.temporary_values.strafe_sides);
							break;
							
						case "jog1_L_01_stepdown":	case "jog1_R_01_stepdown":
							_jjp = _obj.character_sheet.body_measures.jog_jump_strength_stepdown;
							_val1 += _jump_boost/4;
							_val2 += _jump_boost*2 * sign(-_obj.control_method.temporary_values.strafe_fb);
							_val3 += _jump_boost/2 * sign(_obj.control_method.temporary_values.strafe_sides);
							break;
					}
				var _mul_up = _val1 * _jjp[0];
				var _mul_fwd = _val2 * _jjp[1];
				var _mul_sides = _val3 * _jjp[2];
				
				break;
			case "climb":
				_val1 = _obj.character_sheet.body_measures.jump_arr[0]/_obj.character_sheet.body_measures.jump_arr[1];
				_val2 = -_obj.control_method.temporary_values.strafe_fb;
				_val3 = _obj.control_method.temporary_values.strafe_sides;
				
				//free jump down
				if _val2 == 0	&&	_val3 == 0	{_val1 = -_val1;};
				if _obj.control_method.temporary_values.strafe_fb > 0	{_val2 = 0;	_val1  += _obj.control_method.temporary_values.strafe_fb;};
				
				if _val2 == 0 {_val2 = -abs(_val1)/10;};
				
				var _mul_up = _val1 * _obj.character_sheet.body_measures.climb_jump_strength[0];
				var _mul_fwd = _val2 * _obj.character_sheet.body_measures.climb_jump_strength[1];
				var _mul_sides = _val3 * _obj.character_sheet.body_measures.climb_jump_strength[2];
				break;
				
			case "hang":
				_val1 = _obj.character_sheet.body_measures.jump_arr[0]/_obj.character_sheet.body_measures.jump_arr[1];
				_val2 = -_obj.control_method.temporary_values.strafe_fb;
				_val3 = _obj.control_method.temporary_values.strafe_sides;
				
				if _val2 == 0	&& _val3 == 0	{_val1 = 0;};//fall
				
				var _mul_up = _val1 * _obj.character_sheet.body_measures.hang_jump_strength[0];
				var _mul_fwd = _val2 * _obj.character_sheet.body_measures.hang_jump_strength[1];
				var _mul_sides = _val3 * _obj.character_sheet.body_measures.hang_jump_strength[2];
				break;
		}
	
	
	
	var _jump_vec = [0,0,0];
	_jump_vec[0]-= _posMat[8] * _mul_up;
	_jump_vec[1]-= _posMat[9] * _mul_up;
	_jump_vec[2]-= _posMat[10] * _mul_up;
	
	_jump_vec[0]+= _posMat[4] * _mul_sides;
	_jump_vec[1]+= _posMat[5] * _mul_sides;
	_jump_vec[2]+= _posMat[6] * _mul_sides;
	
	_jump_vec[0]+= _posMat[0] * _mul_fwd;
	_jump_vec[1]+= _posMat[1] * _mul_fwd;
	_jump_vec[2]+= _posMat[2] * _mul_fwd;
	
	var _g_vec_lnorm= vec_normalize(_obj.control_method.gravity);
	
	var _cast_anty_on_jump =	_jump_vec[0] * (-_g_vec_lnorm[0]) +
								_jump_vec[1] * (-_g_vec_lnorm[1]) +
								_jump_vec[2] * (-_g_vec_lnorm[2]);
	
	
	_jump_or_not = floor(_cast_anty_on_jump);
	
	switch(_cycle)
		{
			case "climb":	{_jump_or_not=1;	_obj.control_method.carry_anim_info = _jump_vec;};	break;
			case "hang":	{_jump_or_not=1;	_obj.control_method.carry_anim_info = _jump_vec;};	break;
		}
	if _jump_or_not > 0
		{
			_obj.control_method.carry_anim_info = _jump_vec;
		}
	
	//show_debug_message("_obj.character_sheet.body_measures.jump_arr[0] : " + string(_obj.character_sheet.body_measures.jump_arr[0]));
	//show_debug_message("_val1 : " + string(_val1));
	//show_debug_message("_val2 : " + string(_val2));
	//show_debug_message("_mul_up : " + string(_mul_up));
	//show_debug_message("_mul_fwd : " + string(_mul_fwd));
	//show_debug_message("_jump_vec : " + string(_jump_vec));
	//show_debug_message("gravity : " + string(_obj.control_method.gravity[0]/game_speed) + " | " + string(_obj.control_method.gravity[1]/game_speed) + " | " + string(_obj.control_method.gravity[2]/game_speed));
	//show_debug_message("_jump_or_not : " + string(_jump_or_not));
	//show_debug_message("_cast_anty_on_jump : " + string(_cast_anty_on_jump));
	
	return(_jump_or_not);
}