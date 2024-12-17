function exe_load_part_posMat_by_reference(_temp_o)
{
	var _main_posMat = _temp_o.part_posMat[0];
	if !array_equals(_temp_o.part_dependency_load_reference[0][1][0],[0,0,0,0,0,0,0,0,0])
		{
			var _t_main = _temp_o.part_dependency_load_reference[0][1][0];
			_main_posMat = matrix_multiply(matrix_build(0, 0, 0,_t_main[0],_t_main[1],_t_main[2],	1, 1, 1), _main_posMat);
			
			var _delta = [0,0,0];
			_delta = exe_move_fb(_delta,_main_posMat,_t_main[3]);
			_delta = exe_move_updown(_delta,_main_posMat,_t_main[4]);
			_delta = exe_move_sides(_delta,_main_posMat,_t_main[5]);
			_main_posMat = exe_delta_add_Mat(_delta,_main_posMat);
			
			_main_posMat = matrix_multiply(matrix_build(0, 0, 0,_t_main[6],_t_main[7],_t_main[8],	1, 1, 1), _main_posMat);
			
			//reset
			_temp_o.part_dependency_load_reference[0][1][0] = [0,0,0,0,0,0,0,0,0];
			
			//return
			_main_posMat = exe_matrix_orthonormalize(_main_posMat);
			_temp_o.part_posMat[0] = _main_posMat;
			_temp_o.part_vsubmit[0] = exe_return_v_submit(_main_posMat,1);
		}
	//respawn
	if struct_get(_temp_o.character_sheet, "respawn_point") != undefined
		{
			if _main_posMat[14] < 0
			{
				_main_posMat[12] = _temp_o.character_sheet.respawn_point[0];
				_main_posMat[13] = _temp_o.character_sheet.respawn_point[1];
				_main_posMat[14] = _temp_o.character_sheet.respawn_point[2];
				
				if  game_time - _temp_o.character_sheet.respawn_point[3] < _temp_o.character_sheet.respawn_point[4]
					{
						var _chunksize = map3d.world_settings.chunksize;
						var _chunksize2 = floor(_chunksize/2);
						_temp_o.character_sheet.respawn_point[0] += (irandom(_chunksize) - _chunksize2);
						_temp_o.character_sheet.respawn_point[1] += (irandom(_chunksize) - _chunksize2);
						_temp_o.character_sheet.respawn_point[2] += irandom(_chunksize2);
						if(_temp_o.character_sheet.respawn_point[2] > (map3d.world_settings.world_z_start + map3d.world_settings.world_sqr_size))
							{
								_temp_o.character_sheet.respawn_point[2] -= map3d.world_settings.world_sqr_size;
							}
					}
				_temp_o.character_sheet.respawn_point[3] = variable_clone(game_time);
				
				//stop falling
				_temp_o.control_method.intertia_translation[0] = [0,0,0];
				//return
				_main_posMat = exe_matrix_orthonormalize(_main_posMat);
				_temp_o.part_posMat[0] = _main_posMat;
				_temp_o.part_vsubmit[0] = exe_return_v_submit(_main_posMat,1);
			}
		}
	//====================
	
	for(var _ii = 1; _ii < array_length(_temp_o.part_posMat); _ii++)
		{
			var _posMat = variable_clone(_main_posMat);
			
			//normally animated parts
			if	_temp_o.part_vbuff_load_reference[_ii][0] != "vbuff_empty"	&&
				!	(	string_starts_with(_temp_o.part_naming[_ii],"det_") ||	string_starts_with(_temp_o.part_naming[_ii],"camera_")	)
				{
					var _mat_ref = _temp_o.part_dependency[_ii];
		
					for(var _mtr = 1; _mtr < array_length(_mat_ref); _mtr++)
						{
							var _ref = _mat_ref[_mtr];
							var _shift_arr = _temp_o.part_dependency_load_reference[_ref][1];
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
				}
			//detectors
			if string_starts_with(_temp_o.part_naming[_ii],"det_")		{	_posMat = exe_load_detector_posMat_by_reference(_posMat,_ii,_temp_o);	};
			//TBD cameras
			if string_starts_with(_temp_o.part_naming[_ii],"camera_")	{	_posMat = exe_load_camera_posMat_by_reference(_posMat,_ii,_temp_o);	};
			
			_temp_o.part_posMat[_ii] = _posMat;
			_temp_o.part_vsubmit[_ii] = exe_return_v_submit(_posMat,1);
		}
	return(_temp_o);
}