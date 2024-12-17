function exe_return_v_submit(_posMat,_mul)
{
	var _x = _posMat[12];
	var _y = _posMat[13];
	var _z = _posMat[14];
	var _tox = _posMat[12] - _posMat[0] *_mul + _posMat[8];
	var _toy = _posMat[13] - _posMat[1] *_mul + _posMat[9];
	var _toz = _posMat[14] - _posMat[2] *_mul + _posMat[10];
	var _xup = _posMat[8];
	var _yup = _posMat[9];
	var _zup = _posMat[10];

	// _vec3_forward [4,5,6] is in fact right, but it is how @TheSnidr solve it and so it stays;
	//	vec3 fwd for geometry is  _posMat [0,1,2];
	var _vec3_up = [_posMat[8],_posMat[9],_posMat[10]];	_vec3_up = vec_normalize(_vec3_up);
	var _vec3_forward = [_posMat[4], _posMat[5], _posMat[6]];	_vec3_forward = vec_normalize(_vec3_forward);
	var _vec3_right = vec_cross_product(_vec3_forward,_vec3_up);	_vec3_right = vec_normalize(_vec3_right);

	var _xfw = _vec3_forward[0];
	var _yfw = _vec3_forward[1];
	var _zfw = _vec3_forward[2];
	
	var _xR = _vec3_right[0];
	var _yR = _vec3_right[1];
	var _zR = _vec3_right[2];


	var _angle_pack = exe_calclulate_angle_pack(_vec3_up,_vec3_forward,_vec3_right);
	var _yaw =		_angle_pack[0];
	var _pitch =	_angle_pack[1];
	var _tilt =		_angle_pack[2];
	

	var _v_submit = [_x,_y,_z,_tox,_toy,_toz,_xup,_yup,_zup,_tilt,_pitch,_yaw,_xfw,_yfw,_zfw,_xR,_yR,_zR];
	return(_v_submit);
}