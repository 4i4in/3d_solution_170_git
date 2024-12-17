function exe_throw_temp_line_buff(p1,p2)
{
	var _vbuff_keep = vertex_create_buffer();
	vertex_begin(_vbuff_keep, vformat);
	
	var _pl = []; //point list
	array_push(_pl,[p1[0]+1,p1[1]+1,p1[2]+1]);
	array_push(_pl,[p1[0]-1,p1[1]-1,p1[2]-1]);
	array_push(_pl,[p2[0],p2[1],p2[2]]);
	
	array_push(_pl,[p2[0]+1,p2[1]+1,p2[2]+1]);
	array_push(_pl,[p2[0]-1,p2[1]-1,p2[2]-1]);
	array_push(_pl,[p1[0],p1[1],p1[2]]);
	
	var _tex_part = [0,0,0.333];
	var _uv_mode = ["sqr",0,_tex_part];
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[0], _pl[1], _pl[2],_uv_mode);
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[0], _pl[2], _pl[1],_uv_mode);
	
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[3], _pl[4], _pl[5],_uv_mode);
	_vbuff_keep = exe_create_triangle(_vbuff_keep, _pl[3], _pl[5], _pl[4],_uv_mode);
	
	vertex_end(_vbuff_keep);
	return(_vbuff_keep);
}