function exe_grab_lines_from_origin(_colision_line_list,_original_vbuff)	//takes v_buff
{
	var _new_buff_here = buffer_create_from_vertex_buffer(_original_vbuff, buffer_fixed,1);
	var _originP = [0,0,0];
	for(var _ii = 0; _ii < buffer_get_size(_new_buff_here); _ii+= 32)//because of triangle
		{
			//vert1
			var _ox = buffer_peek(_new_buff_here, _ii, buffer_f32);
			var _oy = buffer_peek(_new_buff_here, _ii +4, buffer_f32);
			var _oz = buffer_peek(_new_buff_here, _ii +8, buffer_f32);
			
			var _point = [_ox,_oy,_oz];
			var _line = [variable_clone(_originP),variable_clone(_point)];
			
			var _duplicate_found = 0;
			for(var _lil = 0; _lil < array_length(_colision_line_list); _lil++)
				{
					var _line_here = _colision_line_list[_lil];
					var _point2 = _line_here[1];
					if _point2[0]==_point[0]	&&	_point2[1]==_point[1]	&&	_point2[2]==_point[2]
						{
							_duplicate_found = 1;
						}
				}
			if _duplicate_found < 1
				{
					array_push(_colision_line_list,_line);
				}
		}
	buffer_delete(_new_buff_here);
	
	return(_colision_line_list);
}