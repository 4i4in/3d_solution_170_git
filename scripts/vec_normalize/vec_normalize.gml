function vec_normalize(_vec1)
{
	var _l = point_distance_3d(0,0,0,_vec1[0],_vec1[1],_vec1[2]);
	var _vec2 = [0,0,0];
	if _l > 0
		{
			_vec2 = [	_vec1[0]/_l,	_vec1[1]/_l,	_vec1[2]/_l];
		}
	return(_vec2);
}