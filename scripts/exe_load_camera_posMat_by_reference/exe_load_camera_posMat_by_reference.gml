function exe_load_camera_posMat_by_reference(_posMat,_ii,_obj)
{
	switch(_obj.part_naming[_ii])
		{
			case "camera_back":
				var _mat_ref = _obj.part_dependency[_ii];
					
					for(var _mtr = 1; _mtr < array_length(_mat_ref); _mtr++)
						{
							var _ref = _mat_ref[_mtr];
							
							if struct_get(_obj.character_sheet, "body_measures") != undefined
								{	_obj.part_dependency_load_reference[_ref][1][0] = variable_clone(_obj.character_sheet.body_measures.mod_camera_back);	};
								
							var _shift_arr = _obj.part_dependency_load_reference[_ref][1];
							for(var _shr = 0; _shr < array_length(_shift_arr);_shr++)
								{
									_posMat = matrix_multiply(matrix_build(0, 0, 0,_shift_arr[_shr][0],_shift_arr[_shr][1],_shift_arr[_shr][2],	1, 1, 1), _posMat);
											
									var _delta = [0,0,0];
									_delta = exe_move_fb(_delta,_posMat,_shift_arr[_shr][3]);
									_delta = exe_move_updown(_delta,_posMat,_shift_arr[_shr][4]);
									_delta = exe_move_sides(_delta,_posMat,_shift_arr[_shr][5]);
									_posMat = exe_delta_add_Mat(_delta,_posMat);
											
									_posMat = matrix_multiply(matrix_build(0, 0, 0,_shift_arr[_shr][6],_shift_arr[_shr][7],_shift_arr[_shr][8],	1, 1, 1), _posMat);
											
								}
						}
					_posMat = exe_matrix_orthonormalize(_posMat);
				break;
		}

	return(_posMat);
}