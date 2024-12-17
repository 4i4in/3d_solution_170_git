function exe_return_initial_posMat(_pos_arr)
{
	var _posMat = matrix_build(_pos_arr[0],_pos_arr[1],_pos_arr[2], 0, 0, 0, 1, 1, 1);
	_posMat = matrix_multiply(matrix_build(0,0,0,_pos_arr[3],_pos_arr[4],_pos_arr[5],_pos_arr[6],_pos_arr[7],_pos_arr[8]), _posMat);
	_posMat = exe_matrix_orthonormalize(_posMat);
	
	return(_posMat);
}