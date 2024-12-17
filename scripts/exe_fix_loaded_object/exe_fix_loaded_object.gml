function exe_fix_loaded_object(_temp_o)
{
	//fix _posMat
	var _array1 = _temp_o.part_posMat;
	for(var _ii = 0; _ii < array_length(_array1); _ii++)
		{
			_array1[_ii] = exe_matrix_orthonormalize(_array1[_ii]);
		}
	
	//fix v_submit
	var _array1 = _temp_o.part_posMat;
	var _array2 = _temp_o.part_vsubmit;
	for(var _ii = 0; _ii < array_length(_array1); _ii++)
		{
			_array2[_ii] = exe_return_v_submit(_array1[_ii],1);
		}

	_temp_o = exe_return_part_texture(_temp_o, "visible");
	_temp_o = exe_return_part_texture(_temp_o, "helper");
	
	_temp_o = exe_return_part_vbuff_by_reference(_temp_o, "visible");
	_temp_o = exe_return_part_vbuff_by_reference(_temp_o, "helper");
	_temp_o = exe_return_part_vbuff_by_reference(_temp_o, "colider");
	
	_temp_o = exe_rotate_all_vbuffs(_temp_o,0,[1,1,1]);	

	return(_temp_o);
}