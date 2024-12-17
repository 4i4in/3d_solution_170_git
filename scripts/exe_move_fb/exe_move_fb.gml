function exe_move_fb(_delta,_posMat,_mul)
{
	_delta[0] += _posMat[0]*_mul;
	_delta[1] += _posMat[1]*_mul;
	_delta[2] += _posMat[2]*_mul;	
	return(_delta);
}