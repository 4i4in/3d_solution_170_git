function exe_create_triangle(_vbuff_keep,_p1,_p2,_p3,_uv_mode)
{
	//triangle normal
	var _n = vec_normalize(	vec_cross_product(	vec3d_subtract(_p2, _p1),	vec3d_subtract(_p3, _p1)	)	);
	
	//triangle_center
	/*
	var _pc = [
				(_p1[0]+_p2[0]+_p3[0])/3,
				(_p1[1]+_p2[1]+_p3[1])/3,
				(_p1[2]+_p2[2]+_p3[2])/3
				];
	*/
	var _texcoord1 = [0,0];
	var _texcoord2 = [1,0];
	var _texcoord3 = [0,1];
	switch(_uv_mode[0])
		{
			case "free":	var _tex_uv_pack = exe_calculate_uv_free(_p1,_p2,_p3);
				_texcoord1 = _tex_uv_pack[0];	_texcoord2 = _tex_uv_pack[1];	_texcoord3 = _tex_uv_pack[2];
				break;
			case "sqr":	var _tex_uv_pack = exe_calculate_uv_sqr(_p1,_p2,_p3,_uv_mode[1]);
				_texcoord1 = _tex_uv_pack[0];	_texcoord2 = _tex_uv_pack[1];	_texcoord3 = _tex_uv_pack[2];
				break;
		}
	//multiply by tex part
	_texcoord1[0] *= _uv_mode[2][2];	_texcoord1[1] *= _uv_mode[2][2];
	_texcoord2[0] *= _uv_mode[2][2];	_texcoord2[1] *= _uv_mode[2][2];	
	_texcoord3[0] *= _uv_mode[2][2];	_texcoord3[1] *= _uv_mode[2][2];	
	//shift to tex part
	_texcoord1[0] += _uv_mode[2][2] * _uv_mode[2][0];	_texcoord1[1] += _uv_mode[2][2] * _uv_mode[2][1];
	_texcoord2[0] += _uv_mode[2][2] * _uv_mode[2][0];	_texcoord2[1] += _uv_mode[2][2] * _uv_mode[2][1];
	_texcoord3[0] += _uv_mode[2][2] * _uv_mode[2][0];	_texcoord3[1] += _uv_mode[2][2] * _uv_mode[2][1];

	
	vertex_position_3d(_vbuff_keep,_p1[0],_p1[1],_p1[2]);
	vertex_normal(_vbuff_keep,_n[0],_n[1],_n[2]);
	vertex_texcoord(_vbuff_keep,_texcoord1[0],_texcoord1[1]);
	
	
	vertex_position_3d(_vbuff_keep,_p2[0],_p2[1],_p2[2]);
	vertex_normal(_vbuff_keep,_n[0],_n[1],_n[2]);
	vertex_texcoord(_vbuff_keep,_texcoord2[0],_texcoord2[1]);
	
	vertex_position_3d(_vbuff_keep,_p3[0],_p3[1],_p3[2]);
	vertex_normal(_vbuff_keep,_n[0],_n[1],_n[2]);
	vertex_texcoord(_vbuff_keep,_texcoord3[0],_texcoord3[1]);
	
	return(_vbuff_keep)
}