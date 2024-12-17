function exe_rotate_and_shift_LineList_by_mat(_original_line_list,_tm)	//takes v_buff
{
	for(var _line = 0;_line < array_length(_original_line_list); _line++)
		{
			var _line_here = _original_line_list[_line];
			
			var _point = _line_here[0];
			var _ox = _point[0];
			var _oy = _point[1];
			var _oz = _point[2];
			
			var _nx = -_tm[6] * _ox		-_tm[12] * _oy	-_tm[15] * _oz;
			var _ny = -_tm[7] * _ox		-_tm[13] * _oy	-_tm[16] * _oz;
			var _nz = -_tm[8] * _ox		-_tm[14] * _oy	-_tm[17] * _oz;
			
			_point[0] = _nx + _tm[0];
			_point[1] = _ny + _tm[1];
			_point[2] = _nz + _tm[2];
			
			var _point = _line_here[1];
			var _ox = _point[0];
			var _oy = _point[1];
			var _oz = _point[2];
			
			var _nx = -_tm[6] * _ox		-_tm[12] * _oy	-_tm[15] * _oz;
			var _ny = -_tm[7] * _ox		-_tm[13] * _oy	-_tm[16] * _oz;
			var _nz = -_tm[8] * _ox		-_tm[14] * _oy	-_tm[17] * _oz;
			
			_point[0] = _nx + _tm[0];
			_point[1] = _ny + _tm[1];
			_point[2] = _nz + _tm[2];
		}
	
	return(_original_line_list);
}