function exe_vbuff_d20(_input_size)
{
	vbuff_d20 = vertex_create_buffer();
	var _vbuff_keep = vbuff_d20;
	vertex_begin(_vbuff_keep, vformat);
	
	var phi = 1.618033988749895; // golden ration
	var _pl = []; //point list
	
	var _vxL = -_input_size/2;	var _vxH = _input_size/2;	
	var _vLPhi = -(_input_size/2)*phi;	var _vHPhi = (_input_size/2)*phi;
	
	array_push(_pl,[_vxL,0,_vHPhi]);	array_push(_pl,[_vxH,0,_vHPhi]);	//Z	0	1
	array_push(_pl,[_vxL,0,_vLPhi]);	array_push(_pl,[_vxH,0,_vLPhi]);	//	2	3
	
	array_push(_pl,[0,_vLPhi,_vxH]);	array_push(_pl,[0,_vHPhi,_vxH]);	//Y	4	5
	array_push(_pl,[0,_vLPhi,_vxL]);	array_push(_pl,[0,_vHPhi,_vxL]);	//	6	7
	
	array_push(_pl,[_vLPhi,_vxH,0]);	array_push(_pl,[_vHPhi,_vxH,0]);	//X	8	9
	array_push(_pl,[_vLPhi,_vxL,0]);	array_push(_pl,[_vHPhi,_vxL,0]);	//	10	11
		
		
	/*	
	//helping rectangles
	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[0], _pl[1], _pl[2],_uv_mode);
	
	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[1], _pl[3], _pl[2],_uv_mode);
	
	
	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[4], _pl[5], _pl[6],_uv_mode);
	
	var _tex_part = [0,3,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[5], _pl[7], _pl[6],_uv_mode);
	
	
	var _tex_part = [1,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[8], _pl[9], _pl[10],_uv_mode);
	
	var _tex_part = [1,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[9], _pl[11], _pl[10],_uv_mode);
	*/
	
	//====
	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[0], _pl[4], _pl[1],_uv_mode);
	
	var _tex_part = [1,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[0], _pl[1], _pl[5],_uv_mode);
	
	var _tex_part = [2,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[2], _pl[3], _pl[6],_uv_mode);
	
	var _tex_part = [3,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[2], _pl[7], _pl[3],_uv_mode);
	//====
	var _tex_part = [0,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[0], _pl[8], _pl[10],_uv_mode);
	
	var _tex_part = [1,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[8], _pl[2], _pl[10],_uv_mode);
	
	var _tex_part = [2,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[9], _pl[1], _pl[11],_uv_mode);
	
	var _tex_part = [3,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[9], _pl[11], _pl[3],_uv_mode);
	//====
	var _tex_part = [0,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[6], _pl[4], _pl[10],_uv_mode);
	
	var _tex_part = [1,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[4], _pl[6], _pl[11],_uv_mode);
	
	var _tex_part = [2,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[5], _pl[7], _pl[8],_uv_mode);
	
	var _tex_part = [3,2,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[7], _pl[5], _pl[9],_uv_mode);
	//====
	var _tex_part = [0,3,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[4], _pl[0], _pl[10],_uv_mode);
	
	var _tex_part = [1,3,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[10], _pl[2], _pl[6],_uv_mode);
	
	var _tex_part = [2,3,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[1], _pl[4], _pl[11],_uv_mode);
	
	var _tex_part = [3,3,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[11], _pl[6], _pl[3],_uv_mode);
	//====
	var _tex_part = [0,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[1], _pl[9], _pl[5],_uv_mode);
	
	var _tex_part = [1,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[9], _pl[3], _pl[7],_uv_mode);
	
	var _tex_part = [2,0,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[5], _pl[8], _pl[0],_uv_mode);
	
	var _tex_part = [2,1,0.25];
	var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[8], _pl[7], _pl[2],_uv_mode);
	
	vertex_end(_vbuff_keep);
	//vertex_freeze(_vbuff_keep);
}