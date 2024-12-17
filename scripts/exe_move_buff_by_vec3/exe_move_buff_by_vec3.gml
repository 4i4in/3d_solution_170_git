function exe_move_buff_by_vec3(_buff_here,_vec3)	//takes v_buff
{
	var _new_buff_here = buffer_create_from_vertex_buffer(_buff_here, buffer_fixed,1);
	for(var _ii = 0; _ii < buffer_get_size(_new_buff_here); _ii+= (32 * 3)	)//because of triangle
		{
			//vert1
			var _ox = buffer_peek(_new_buff_here, _ii, buffer_f32)+ _vec3[0];
			var _oy = buffer_peek(_new_buff_here, _ii +4, buffer_f32)+ _vec3[1];
			var _oz = buffer_peek(_new_buff_here, _ii +8, buffer_f32)+ _vec3[2];
			
			buffer_poke(_new_buff_here, _ii, buffer_f32, _ox);
			buffer_poke(_new_buff_here, _ii + 4, buffer_f32, _oy);
			buffer_poke(_new_buff_here, _ii + 8, buffer_f32, _oz);
			
			//vert2
			var _ox = buffer_peek(_new_buff_here, _ii	+32,	buffer_f32)+ _vec3[0];
			var _oy = buffer_peek(_new_buff_here, _ii +4+32, buffer_f32)+ _vec3[1];
			var _oz = buffer_peek(_new_buff_here, _ii +8+32, buffer_f32)+ _vec3[2];
			
			buffer_poke(_new_buff_here, _ii	   +32, buffer_f32, _ox);
			buffer_poke(_new_buff_here, _ii + 4+32, buffer_f32, _oy);
			buffer_poke(_new_buff_here, _ii + 8+32, buffer_f32, _oz);
			
			//vert3
			var _ox = buffer_peek(_new_buff_here, _ii	+64,	buffer_f32)+ _vec3[0];
			var _oy = buffer_peek(_new_buff_here, _ii +4+64, buffer_f32)+ _vec3[1];
			var _oz = buffer_peek(_new_buff_here, _ii +8+64, buffer_f32)+ _vec3[2];
			
			buffer_poke(_new_buff_here, _ii	   +64, buffer_f32, _ox);
			buffer_poke(_new_buff_here, _ii + 4+64, buffer_f32, _oy);
			buffer_poke(_new_buff_here, _ii + 8+64, buffer_f32, _oz);
		}
	var _return_buff = vertex_create_buffer_from_buffer(_new_buff_here,vformat);
	buffer_delete(_new_buff_here);
	
	return(_return_buff);
}