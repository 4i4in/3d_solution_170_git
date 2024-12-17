function exe_mat3x3_inverse(_M)
{
	var _inverseM = [];
	// 0,1,2
	// 3,4,5
	// 6,7,8
	var _detM = (	_M[0] *	_M[4] *	_M[8]	+	_M[1] *	_M[5] *	_M[6]	+	_M[2] *	_M[3] *	_M[7]) -
				(	_M[6] *	_M[4] *	_M[2]	+	_M[7] *	_M[5] *	_M[0]	+	_M[8] *	_M[3] *	_M[1]);
	/*
	var _detM = (
        _M[0] * (_M[4] * _M[8] - _M[5] * _M[7]) -
        _M[1] * (_M[3] * _M[8] - _M[5] * _M[6]) +
        _M[2] * (_M[3] * _M[7] - _M[4] * _M[6])
    );
	*/
	if abs(_detM) < 0.01	{_detM = 0.01 * sign(_detM);};
	if _detM == 0 {_detM = 0.01;};
	show_debug_message("_detM : " + string(_detM));
	
	//	4,5		3,5		3,4
	//	7,8		6,8		6,7
	
	//	1,2		0,2		0,1
	//	7,8		6,8		6,7
	
	//	1,2		0,2		0,1
	//	4,5		3,5		3,4
	
	var _matP = [	 (_M[4] *  _M[8] - _M[7] * _M[5]),	-(_M[3] *  _M[8] - _M[6] * _M[5]),	 (_M[3] *  _M[7] - _M[6] * _M[4]),
					-(_M[1] *  _M[8] - _M[7] * _M[2]),	 (_M[0] *  _M[8] - _M[6] * _M[2]),	-(_M[0] *  _M[7] - _M[6] * _M[1]),
					 (_M[1] *  _M[5] - _M[4] * _M[2]),	-(_M[0] *  _M[5] - _M[3] * _M[2]),	 (_M[0] *  _M[4] - _M[3] * _M[1])
				];
	
	var _inverseM = [	_matP[0] / _detM,	_matP[3] / _detM,	_matP[6] / _detM,
						_matP[1] / _detM,	_matP[4] / _detM,	_matP[7] / _detM,
						_matP[2] / _detM,	_matP[5] / _detM,	_matP[8] / _detM
					];
	
	
	return(_inverseM);
}