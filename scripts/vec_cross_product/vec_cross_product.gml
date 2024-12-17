function vec_cross_product(_vec1,_vec2)
{
	var _vec3 = [
			        _vec1[1] * _vec2[2] - _vec1[2] * _vec2[1],
			        _vec1[2] * _vec2[0] - _vec1[0] * _vec2[2],
			        _vec1[0] * _vec2[1] - _vec1[1] * _vec2[0]
			    ];
	return(_vec3)
}