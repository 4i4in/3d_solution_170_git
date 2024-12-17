function exe_tesselate_Y(_q1_LT,_q1_RT,_q1_LB,_q1_RB,_vbuff_keep,_spacing,_tex_part,_quad_order,_tesel_spacing_mul,_randomnes)
{
	var _q1_LM = exe_return_middle_point3d(_q1_LT,_q1_LB);
	var _q1_RM = exe_return_middle_point3d(_q1_RT,_q1_RB);
	
	
	if	exe_check_triangle_size(_q1_LT, _q1_RT, _q1_RM,_tesel_spacing_mul*_spacing) > 0	&&
		exe_check_triangle_size(_q1_RM, _q1_LM, _q1_LT,_tesel_spacing_mul*_spacing) > 0
		{
			var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
			_vbuff_keep = exe_create_triangle(_vbuff_keep, _q1_LT, _q1_RT, _q1_RM,_uv_mode);
			var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
			_vbuff_keep = exe_create_triangle(_vbuff_keep, _q1_RM, _q1_LM, _q1_LT,_uv_mode);
		}
	else	{_vbuff_keep = exe_tesselate(_q1_LT, _q1_RT, _q1_RM,	_q1_RM, _q1_LM, _q1_LT,		2,	_tex_part,	_spacing,_vbuff_keep,_randomnes,_tesel_spacing_mul);};
	
	if	exe_check_triangle_size(_q1_LM, _q1_RM, _q1_RB,_tesel_spacing_mul*_spacing) > 0	&&
		exe_check_triangle_size(_q1_RB, _q1_LB, _q1_LM,_tesel_spacing_mul*_spacing) > 0
		{
			var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
			_vbuff_keep = exe_create_triangle(_vbuff_keep, _q1_LM, _q1_RM, _q1_RB,_uv_mode);
			var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
			_vbuff_keep = exe_create_triangle(_vbuff_keep, _q1_RB, _q1_LB, _q1_LM,_uv_mode);
		}
	else	{_vbuff_keep = exe_tesselate(_q1_LM, _q1_RM, _q1_RB,	_q1_RB, _q1_LB, _q1_LM,		2,	_tex_part,	_spacing,_vbuff_keep,_randomnes,_tesel_spacing_mul);};

	return(_vbuff_keep);
}