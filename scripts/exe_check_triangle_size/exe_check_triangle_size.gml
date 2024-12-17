function exe_check_triangle_size(_p1_t1,_p2_t1,_p3_t1,_value)
{
	var _all_l_correct = 1;
	
	if point_distance_3d(_p1_t1[0],_p1_t1[1],_p1_t1[2],	_p2_t1[0],_p2_t1[1],_p2_t1[2]) > _value	{_all_l_correct = 0;};
	if point_distance_3d(_p2_t1[0],_p2_t1[1],_p2_t1[2],	_p3_t1[0],_p3_t1[1],_p3_t1[2]) > _value	{_all_l_correct = 0;};
	if point_distance_3d(_p3_t1[0],_p3_t1[1],_p3_t1[2],	_p1_t1[0],_p1_t1[1],_p1_t1[2]) > _value	{_all_l_correct = 0;};
	
	
	return(_all_l_correct);
}