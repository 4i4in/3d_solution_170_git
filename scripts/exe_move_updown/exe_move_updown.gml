function exe_move_updown(_delta,_posMat,_mul)
{
	_posMat = matrix_multiply(matrix_build(0, 0, 0,	0,	90,	0,	1, 1, 1), _posMat);
	_delta[0] += _posMat[0]*_mul;
	_delta[1] += _posMat[1]*_mul;
	_delta[2] += _posMat[2]*_mul;	
	return(_delta);
}