function exe_calclulate_angle_pack(_vec3_up,_vec3_forward,_vec3_right)
{
	var _yaw =		radtodeg(	arctan2(_vec3_right[1],_vec3_right[0])	);
	var _pitch =	radtodeg(	arctan2(-_vec3_up[1],sqrt(_vec3_up[0]*_vec3_up[0] + _vec3_up[2]*_vec3_up[2]))	);
	var _tilt =		radtodeg(	arctan2(_vec3_forward[2],_vec3_forward[1])	);
	
	var _angle_pack = [_yaw,_pitch,_tilt];
	return(_angle_pack);
}