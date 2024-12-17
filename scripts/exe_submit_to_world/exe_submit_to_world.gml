function exe_submit_to_world(_buff_here,_tex_here,_x,_y,_z)
{
	matrix_set(matrix_world, matrix_build(	_x,_y,_z,	0, 0, 0,	1, 1, 1));
	vertex_submit(_buff_here, pr_trianglelist, _tex_here);	
}