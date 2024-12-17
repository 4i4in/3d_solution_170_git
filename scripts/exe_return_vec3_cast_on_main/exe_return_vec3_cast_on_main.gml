function exe_return_vec3_cast_on_main(_posMat,_vec3,_mul)
{
	var _cast_fwd =		_vec3[0] * (-_posMat[0]) +
						_vec3[1] * (-_posMat[1]) +
						_vec3[2] * (-_posMat[2]);
									
	var _cast_sides =	_vec3[0] * (-_posMat[4]) +
						_vec3[1] * (-_posMat[5]) +
						_vec3[2] * (-_posMat[6]);	
				
	var _cast_up =		_vec3[0] * (-_posMat[8]) +
						_vec3[1] * (-_posMat[9]) +
						_vec3[2] * (-_posMat[10]);
	
	var _ret_vec3 = [_cast_fwd*_mul,_cast_sides*_mul,_cast_up*_mul];
	return(_ret_vec3);
}