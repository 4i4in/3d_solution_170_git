function exe_execute_colisions_on_self(_posMat,_input_call,_colisions,_delta_in)
{
	var _swich_back = "";
	//exception
	if	(_input_call.collision_takes[0] == "Slide_by_triangle"	||	_input_call.collision_takes[0] == "Slide_by_triangle_grad")	&&
		abs(_input_call.strafe_up) > 0	
		{	_swich_back = variable_clone(_input_call.collision_takes[0]);	_input_call.collision_takes[0] = "Nbounce";	};
	//=========
	
	switch(_input_call.collision_takes[0])
		{
			case "Nbounce" : 
				var _speed_mul = point_distance_3d(0.,0.,0.,_input_call.strafe_fb,_input_call.strafe_sides,_input_call.strafe_up);	
				var _delta = [0,0,0];
				_delta_pack = exe_sum_colision_results(_delta,_colisions,	_speed_mul	);
				_posMat = exe_delta_add_Mat(_delta_pack[0],_posMat);
				if _delta_pack[1] < 1.
					{
						_input_call.forward_speed[0] *= _delta_pack[1];
						_input_call.side_speed[0] *= _delta_pack[1];
						_input_call.vert_speed[0] *= _delta_pack[1];
					}
				if _swich_back != ""	{_input_call.collision_takes[0] = _swich_back;};
				break;
			case "Set_Speed_0" : 
				var _speed_mul = point_distance_3d(0.,0.,0.,_input_call.forward_speed[2],_input_call.side_speed[2],_input_call.vert_speed[2]);
				_speed_mul += point_distance_3d(0.,0.,0.,_input_call.tilt_speed[2],_input_call.yaw_speed[2],_input_call.pitch_speed[2]);
				var _delta = [0,0,0];
				_delta_pack = exe_sum_colision_results(_delta,_colisions,	_speed_mul	);
				_posMat = exe_delta_add_Mat(_delta_pack[0],_posMat);
				
				if abs(_delta_pack[0][0]) + abs(_delta_pack[0][1]) + abs(_delta_pack[0][2]) > 0.
					{
						_input_call.forward_speed[0] = 0.;
						_input_call.side_speed[0] = 0.;
						_input_call.vert_speed[0] = 0.;
																
						_input_call.tilt_speed[0] = 0.;
						_input_call.yaw_speed[0] = 0.;
						_input_call.pitch_speed[0] = 0.;
					}
				if _delta_pack[1] < 1.
					{
						_input_call.forward_speed[0] *= _delta_pack[1];
						_input_call.side_speed[0] *= _delta_pack[1];
						_input_call.vert_speed[0] *= _delta_pack[1];
					}
				break;
			case "Slide_by_triangle" : case "Slide_by_triangle_grad" : 
				if abs(_delta_in[0]) + abs(_delta_in[1]) + abs(_delta_in[2]) > 0.
					{
						var _l_delta_in = sqrt(_delta_in[0]*_delta_in[0]+_delta_in[1]*_delta_in[1]+_delta_in[2]*_delta_in[2]);
						var _delta_in_Normalized = [_delta_in[0]/_l_delta_in,	_delta_in[1]/_l_delta_in,	_delta_in[2]/_l_delta_in];
						var _delta = [0,0,0];
						_delta_pack = exe_sum_colision_results_slide(_delta,_colisions,_delta_in_Normalized);
						_posMat = exe_delta_add_Mat(_delta_pack[0],_posMat);
						
						if abs(_delta_pack[0][0]) + abs(_delta_pack[0][1]) + abs(_delta_pack[0][2]) > 0.
							{
								var _delta = [0,0,0];
								_delta = exe_sum_triangle_normals(_colisions,_delta);
								_delta = vec_normalize(_delta);
								switch(_input_call.collision_takes[0])
									{
										case "Slide_by_triangle" :
											_posMat[8] = _delta[0];
											_posMat[9] = _delta[1];
											_posMat[10] = _delta[2];
											break;
										case "Slide_by_triangle_grad" :
											_posMat[8] =	lerp(_posMat[8],_delta[0],_input_call.collision_takes[1]);
											_posMat[9] =	lerp(_posMat[9],_delta[1],_input_call.collision_takes[1]);
											_posMat[10] =	lerp(_posMat[10],_delta[2],_input_call.collision_takes[1]);
									
											_input_call.forward_speed[0] *= _input_call.collision_takes[1];
											_input_call.side_speed[0] *=	_input_call.collision_takes[1];
											_input_call.vert_speed[0] *=	_input_call.collision_takes[1];
											break;
									}
								_posMat = exe_matrix_orthonormalize(_posMat);
							}
						if _delta_pack[1] < 1.
							{
								_input_call.forward_speed[0] *= _delta_pack[1];
								_input_call.side_speed[0] *= _delta_pack[1];
								_input_call.vert_speed[0] *= _delta_pack[1];
							}
					}	
				else	{	_input_call.forward_speed[0] = 0.;	_input_call.side_speed[0] = 0.;	_input_call.vert_speed[0] = 0.;	}
				break;
			case "Nbounce_mirror" :
				if abs(_delta_in[0]) + abs(_delta_in[1]) + abs(_delta_in[2]) > 0.
					{
						var _l_delta_in = sqrt(_delta_in[0]*_delta_in[0]+_delta_in[1]*_delta_in[1]+_delta_in[2]*_delta_in[2]);
						var _delta_in_Normalized = [_delta_in[0]/_l_delta_in,	_delta_in[1]/_l_delta_in,	_delta_in[2]/_l_delta_in];
						
						var _delta_pack = exe_sum_colision_results_Nbounce_mirror(_colisions,_delta_in_Normalized);
						
						var _delta_flat_shift = _delta_pack[0];
						_delta_flat_shift[0]*=_l_delta_in;
						_delta_flat_shift[1]*=_l_delta_in;
						_delta_flat_shift[2]*=_l_delta_in;
						
						_posMat = exe_delta_add_Mat(_delta_flat_shift,_posMat);
						
						if _delta_pack[1] < 1.
							{
								_input_call.forward_speed[0] *= _delta_pack[1];
								_input_call.side_speed[0] *= _delta_pack[1];
								_input_call.vert_speed[0] *= _delta_pack[1];
							}
					}
				else	{	_input_call.forward_speed[0] = 0.;	_input_call.side_speed[0] = 0.;	_input_call.vert_speed[0] = 0.;	}
				break;
			
		}
	var _coll_return_package = [_posMat,_input_call];
	return(_coll_return_package);
}