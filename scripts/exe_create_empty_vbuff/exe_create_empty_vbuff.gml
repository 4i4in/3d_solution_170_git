function exe_create_empty_vbuff()
{
	var _vbuff_keep = vertex_create_buffer();
	vertex_begin(_vbuff_keep, vformat);
	
	vertex_position_3d(_vbuff_keep,0,0,0);
	vertex_normal(_vbuff_keep,0,0,0);
	vertex_texcoord(_vbuff_keep,0,0);
	
	vertex_position_3d(_vbuff_keep,0,0,0);
	vertex_normal(_vbuff_keep,0,0,0);
	vertex_texcoord(_vbuff_keep,0,0);
	
	vertex_position_3d(_vbuff_keep,0,0,0);
	vertex_normal(_vbuff_keep,0,0,0);
	vertex_texcoord(_vbuff_keep,0,0);
	
	vertex_end(_vbuff_keep);
	return(_vbuff_keep);
}