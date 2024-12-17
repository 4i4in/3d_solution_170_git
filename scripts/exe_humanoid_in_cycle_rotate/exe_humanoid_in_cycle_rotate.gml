function exe_humanoid_in_cycle_rotate(_obj,_main_id,_value)
{
	_obj.part_posMat[_main_id] = matrix_multiply(matrix_build(0, 0, 0,0,0,_value,	1, 1, 1), _obj.part_posMat[_main_id]);
	_obj.part_posMat[_main_id] = exe_matrix_orthonormalize(_obj.part_posMat[_main_id]);
	_obj.part_vsubmit[_main_id] = exe_return_v_submit(_obj.part_posMat[_main_id],1);
	
	return(_obj);
}