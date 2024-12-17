function exe_vbuff_dir_arrow_return_scalable(_input_size)
{
	var _vbuff_keep = vertex_create_buffer();
	vertex_begin(_vbuff_keep, vformat);
	
	//z arrow, forward arrow green		world transform X-	
	var _pl = []; //point list
	var _vxL = -_input_size/2;	var _vxH = _input_size/2;	
	
	array_push(_pl,[_vxL,0,0]);	array_push(_pl,[_vxH,0,0]);	//Z	0	1
	array_push(_pl,[0,_vxL,0]);	array_push(_pl,[0,_vxH,0]);	//	2	3
	
	array_push(_pl,[_vxL,0,_input_size *_vxH]);	array_push(_pl,[_vxH,0,_input_size *_vxH]);	//Z	4	5
	array_push(_pl,[0,_vxL,_input_size *_vxH]);	array_push(_pl,[0,_vxH,_input_size *_vxH]);	//	6	7
	
	array_push(_pl,[_vxL*1.5,_vxL*1.5,_input_size *_vxH]);	array_push(_pl,[_vxH*1.5,_vxL*1.5,_input_size *_vxH]);	//Z	8	9
	array_push(_pl,[_vxL*1.5,_vxH*1.5,_input_size *_vxH]);	array_push(_pl,[_vxH*1.5,_vxH*1.5,_input_size *_vxH]);	//	10	11
	
	array_push(_pl,[0,0,(_input_size *_vxH)+ 4* _vxH]);	//12
		
	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[0], _pl[2], _pl[4],_uv_mode);
	
	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[4], _pl[2], _pl[6],_uv_mode);

	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[1], _pl[3], _pl[5],_uv_mode);
	
	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[7], _pl[5], _pl[3],_uv_mode);

	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[1], _pl[5], _pl[2],_uv_mode);
	
	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[6], _pl[2], _pl[5],_uv_mode);

	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[3], _pl[0], _pl[7],_uv_mode);
	
	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[7], _pl[0], _pl[4],_uv_mode);
	
	//pointer
	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[8], _pl[9], _pl[12],_uv_mode);
	
	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[11], _pl[10], _pl[12],_uv_mode);
	
	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[9], _pl[11], _pl[12],_uv_mode);
	
	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[10], _pl[8], _pl[12],_uv_mode);


	//y arrow	right arrow red		world transform Y-
	var _pl = []; //point list
	var _vxL = -_input_size/2;	var _vxH = _input_size/2;	
	
	array_push(_pl,[_vxL,0,0]);	array_push(_pl,[_vxH,0,0]);	//Z	0	1
	array_push(_pl,[0,0,_vxL]);	array_push(_pl,[0,0,_vxH]);	//	2	3
	
	array_push(_pl,[_vxL,_input_size *_vxH,0]);	array_push(_pl,[_vxH,_input_size *_vxH,0]);	//Z	4	5
	array_push(_pl,[0,_input_size *_vxH,_vxL]);	array_push(_pl,[0,_input_size *_vxH,_vxH]);	//	6	7
	
	array_push(_pl,[_vxL*1.5,_input_size *_vxH,_vxL*1.5]);	array_push(_pl,[_vxH*1.5,_input_size *_vxH,_vxL*1.5]);	//Z	8	9
	array_push(_pl,[_vxL*1.5,_input_size *_vxH,_vxH*1.5]);	array_push(_pl,[_vxH*1.5,_input_size *_vxH,_vxH*1.5]);	//	10	11
	
	array_push(_pl,[0,(_input_size *_vxH)+ 4* _vxH,0]);	//12
		
	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[0], _pl[4], _pl[2],_uv_mode);
	
	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[4], _pl[6], _pl[2],_uv_mode);

	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[1], _pl[5], _pl[3],_uv_mode);
	
	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[7], _pl[3], _pl[5],_uv_mode);

	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[1], _pl[2], _pl[5],_uv_mode);
	
	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[6], _pl[5], _pl[2],_uv_mode);

	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[3], _pl[7], _pl[0],_uv_mode);
	
	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[7], _pl[4], _pl[0],_uv_mode);
	
	//pointer
	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[8], _pl[12], _pl[9],_uv_mode);
	
	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[11], _pl[12], _pl[10],_uv_mode);
	
	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[9], _pl[12], _pl[11],_uv_mode);
	
	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[10], _pl[12], _pl[8],_uv_mode);


	//X arrow up blue		world transform Z-
	var _pl = []; //point list
	var _vxL = -_input_size/2;	var _vxH = _input_size/2;	
	
	array_push(_pl,[0,_vxL,0]);	array_push(_pl,[0,_vxH,0]);	//Z	0	1
	array_push(_pl,[0,0,_vxL]);	array_push(_pl,[0,0,_vxH]);	//	2	3
	
	array_push(_pl,[_input_size *_vxH,_vxL,0]);	array_push(_pl,[_input_size *_vxH,_vxH,0]);	//Z	4	5
	array_push(_pl,[_input_size *_vxH,0,_vxL]);	array_push(_pl,[_input_size *_vxH,0,_vxH]);	//	6	7
	
	array_push(_pl,[_input_size *_vxH,_vxL*1.5,_vxL*1.5]);	array_push(_pl,[_input_size *_vxH,_vxH*1.5,_vxL*1.5]);	//Z	8	9
	array_push(_pl,[_input_size *_vxH,_vxL*1.5,_vxH*1.5]);	array_push(_pl,[_input_size *_vxH,_vxH*1.5,_vxH*1.5]);	//	10	11
	
	array_push(_pl,[(_input_size *_vxH)+ 4* _vxH,0,0]);	//12
		
	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[0], _pl[2], _pl[4],_uv_mode);
	
	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[4], _pl[2], _pl[6],_uv_mode);

	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[1], _pl[3], _pl[5],_uv_mode);
	
	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[7], _pl[5], _pl[3],_uv_mode);

	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[1], _pl[5], _pl[2],_uv_mode);
	
	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[6], _pl[2], _pl[5],_uv_mode);

	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[3], _pl[0], _pl[7],_uv_mode);
	
	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[7], _pl[0], _pl[4],_uv_mode);
	
	//pointer
	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[8], _pl[9], _pl[12],_uv_mode);
	
	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[11], _pl[10], _pl[12],_uv_mode);
	
	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[9], _pl[11], _pl[12],_uv_mode);
	
	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[10], _pl[8], _pl[12],_uv_mode);
	
	
	vertex_end(_vbuff_keep);
	//vertex_freeze(_vbuff_keep);
	
	return(_vbuff_keep)
}