function exe_tesselate(_p1_t1,_p2_t1,_p3_t1,	_p1_t2,_p2_t2,_p3_t2,	_quad_order,	_tex_part,	_spacing,_vbuff_keep,_randomnes,_tesel_spacing_mul)
{
	switch(_quad_order)
		{
			case 0:
				var _q1_LT = _p1_t1;		var _q1_RT = _p2_t1;
				var _q1_LB = _p2_t2;		var _q1_RB = _p3_t1;
				break;
			case 1:
				var _q1_LT = _p1_t1;		var _q1_RT = _p2_t1;
				var _q1_LB = _p1_t2;		var _q1_RB = _p3_t2;
				break;
			case 2:
				var _q1_LT = _p1_t1;		var _q1_RT = _p2_t1;
				var _q1_LB = _p2_t2;		var _q1_RB = _p3_t1;
				break;
		}
		
	var _split_x = 0;
	var _split_y = 0;
	var _Tx = point_distance_3d(_q1_LT[0],_q1_LT[1],_q1_LT[2],	_q1_RT[0],_q1_RT[1],_q1_RT[2]);
	var _Bx = point_distance_3d(_q1_LB[0],_q1_LB[1],_q1_LB[2],	_q1_RT[0],_q1_RB[1],_q1_RB[2]);
	if max(_Tx,_Bx) > _tesel_spacing_mul*_spacing	{_split_x = 1;};
			
	var _Ly = point_distance_3d(_q1_LT[0],_q1_LT[1],_q1_LT[2],	_q1_LB[0],_q1_LB[1],_q1_LB[2]);
	var _Ry = point_distance_3d(_q1_RT[0],_q1_RT[1],_q1_RT[2],	_q1_RT[0],_q1_RB[1],_q1_RB[2]);
	if max(_Ly,_Ry) > _tesel_spacing_mul*_spacing	{_split_y = 1;};
			
	if _split_x > 0	&& _split_y > 0	{	_vbuff_keep = exe_tesselate_XY(_q1_LT,_q1_RT,_q1_LB,_q1_RB,_vbuff_keep,_spacing,_tex_part,2,_tesel_spacing_mul,_randomnes);}
	else if	_split_x > 0	{			_vbuff_keep = exe_tesselate_X(_q1_LT,_q1_RT,_q1_LB,_q1_RB,_vbuff_keep,_spacing,_tex_part,2,_tesel_spacing_mul,_randomnes);}
	else if _split_y > 0	{			_vbuff_keep = exe_tesselate_Y(_q1_LT,_q1_RT,_q1_LB,_q1_RB,_vbuff_keep,_spacing,_tex_part,2,_tesel_spacing_mul,_randomnes);}
	else
		{
			var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
			_vbuff_keep = exe_create_triangle(_vbuff_keep, _q1_LT, _q1_RT, _q1_RB,_uv_mode);
		
			var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
			_vbuff_keep = exe_create_triangle(_vbuff_keep, _q1_RB, _q1_LB, _q1_LT,_uv_mode);
		}

	
	
	return(_vbuff_keep);
}