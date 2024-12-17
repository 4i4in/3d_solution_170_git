function exe_vbuff_100x100_inverted_orientation(_input_size)
{
	vbuff_100x100_inverted_orientation = vertex_create_buffer();
	var _vbuff_keep = vbuff_100x100_inverted_orientation;
	vertex_begin(_vbuff_keep, vformat);
	
	var _vxL = -_input_size/2;	var _vxH = _input_size/2;
	
	var _pl = []; //point list
	
	array_push(_pl,[_vxL,_vxL,_vxL]);//0	x-, y-, z-
	array_push(_pl,[_vxH,_vxL,_vxL]);//1	x+, y-, z-
	array_push(_pl,[_vxH,_vxH,_vxL]);//2	x+, y+, z-
	array_push(_pl,[_vxL,_vxH,_vxL]);//3	x-, y+, z-
	array_push(_pl,[_vxL,_vxL,_vxH]);//4	x-, y-, z+
	array_push(_pl,[_vxH,_vxL,_vxH]);//5	x+, y-, z+
	array_push(_pl,[_vxH,_vxH,_vxH]);//6	x+, y+, z+
	array_push(_pl,[_vxL,_vxH,_vxH]);//7	x-, y+, z+
	
	//var _uv_mode = ["free",0,_tex_part]; //in this case _tex_part should reffer to pallete color
	var _tex_part = [1,0,0.333];
	var _uv_mode = ["sqr",0,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, [_vxL,_vxH,_vxH], [_vxH,_vxH,_vxH], [_vxH,_vxL,_vxH],_uv_mode);  // z-
	var _uv_mode = ["sqr",1,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, [_vxL,_vxH,_vxH], [_vxH,_vxL,_vxH], [_vxL,_vxL,_vxH],_uv_mode);	//world X- after 0,0,0 transform
	
	var _tex_part = [0,0,0.333];
	var _uv_mode = ["sqr",0,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, [_vxL,_vxL,_vxL], [_vxH,_vxL,_vxL], [_vxH,_vxH,_vxL],_uv_mode);  // z+
	var _uv_mode = ["sqr",1,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, [_vxL,_vxL,_vxL], [_vxH,_vxH,_vxL], [_vxL,_vxH,_vxL],_uv_mode);	//world X+ after 0,0,0 transform

	var _tex_part = [0,1,0.333];
	var _uv_mode = ["sqr",0,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, [_vxL,_vxH,_vxL], [_vxH,_vxH,_vxL], [_vxH,_vxH,_vxH],_uv_mode);  // y-
	var _uv_mode = ["sqr",1,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, [_vxL,_vxH,_vxL], [_vxH,_vxH,_vxH], [_vxL,_vxH,_vxH],_uv_mode);	//world Y- after 0,0,0 transform
	
	var _tex_part = [2,0,0.333];
	var _uv_mode = ["sqr",0,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, [_vxH,_vxL,_vxL], [_vxL,_vxL,_vxL], [_vxL,_vxL,_vxH],_uv_mode);  // y+
	var _uv_mode = ["sqr",1,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, [_vxH,_vxL,_vxL], [_vxL,_vxL,_vxH], [_vxH,_vxL,_vxH],_uv_mode);	//world Y+ after 0,0,0 transform
	
	var _tex_part = [2,1,0.333];
	var _uv_mode = ["sqr",0,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, [_vxH,_vxH,_vxL], [_vxH,_vxL,_vxL], [_vxH,_vxL,_vxH],_uv_mode);  // x-
	var _uv_mode = ["sqr",1,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, [_vxH,_vxH,_vxL], [_vxH,_vxL,_vxH], [_vxH,_vxH,_vxH],_uv_mode);	//world Z- after 0,0,0 transform
	
	var _tex_part = [1,1,0.333];
	var _uv_mode = ["sqr",0,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, [_vxL,_vxL,_vxL], [_vxL,_vxH,_vxL], [_vxL,_vxH,_vxH],_uv_mode);  // x+
	var _uv_mode = ["sqr",1,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, [_vxL,_vxL,_vxL], [_vxL,_vxH,_vxH], [_vxL,_vxL,_vxH],_uv_mode);	//world Z+ after 0,0,0 transform
	
	vertex_end(_vbuff_keep);
	//vertex_freeze(_vbuff_keep);
}