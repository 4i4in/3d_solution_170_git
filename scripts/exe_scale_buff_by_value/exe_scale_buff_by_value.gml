function exe_scale_buff_by_value(_buff_here,_scale_value)	//takes v_buff
{
	var _new_buff_here = buffer_create_from_vertex_buffer(_buff_here, buffer_fixed,1);
	for(var _ii = 0; _ii < buffer_get_size(_new_buff_here); _ii+= (32 * 3)	)//because of triangle
		{
			//vert1
			var _ox = buffer_peek(_new_buff_here, _ii, buffer_f32);
			var _oy = buffer_peek(_new_buff_here, _ii +4, buffer_f32);
			var _oz = buffer_peek(_new_buff_here, _ii +8, buffer_f32);
			
			var _nx = _ox * _scale_value;
			var _ny = _oy * _scale_value;
			var _nz = _oz * _scale_value;
			
			buffer_poke(_new_buff_here, _ii, buffer_f32, _nx);
			buffer_poke(_new_buff_here, _ii + 4, buffer_f32, _ny);
			buffer_poke(_new_buff_here, _ii + 8, buffer_f32, _nz);
			
			var _p1 = [_nx,_ny,_nz];
			
			//vert2
			var _ox = buffer_peek(_new_buff_here, _ii	+32, buffer_f32);
			var _oy = buffer_peek(_new_buff_here, _ii +4+32, buffer_f32);
			var _oz = buffer_peek(_new_buff_here, _ii +8+32, buffer_f32);
			
			var _nx = _ox * _scale_value;
			var _ny = _oy * _scale_value;
			var _nz = _oz * _scale_value;
			
			buffer_poke(_new_buff_here, _ii	   +32, buffer_f32, _nx);
			buffer_poke(_new_buff_here, _ii + 4+32, buffer_f32, _ny);
			buffer_poke(_new_buff_here, _ii + 8+32, buffer_f32, _nz);
			
			var _p2 = [_nx,_ny,_nz];
			
			//vert3
			var _ox = buffer_peek(_new_buff_here, _ii	+64, buffer_f32);
			var _oy = buffer_peek(_new_buff_here, _ii +4+64, buffer_f32);
			var _oz = buffer_peek(_new_buff_here, _ii +8+64, buffer_f32);
			
			var _nx = _ox * _scale_value;
			var _ny = _oy * _scale_value;
			var _nz = _oz * _scale_value;
			
			buffer_poke(_new_buff_here, _ii	   +64, buffer_f32, _nx);
			buffer_poke(_new_buff_here, _ii + 4+64, buffer_f32, _ny);
			buffer_poke(_new_buff_here, _ii + 8+64, buffer_f32, _nz);
			
			var _p3 = [_nx,_ny,_nz];
			
			//normals
			var _n = vec_normalize(	vec_cross_product(	vec3d_subtract(_p2, _p1),	vec3d_subtract(_p3, _p1)	)	);
			buffer_poke(_new_buff_here, _ii + 12, buffer_f32, _n[0]);
			buffer_poke(_new_buff_here, _ii + 16, buffer_f32, _n[1]);
			buffer_poke(_new_buff_here, _ii + 20, buffer_f32, _n[2]);
			
			buffer_poke(_new_buff_here, _ii + 12+32, buffer_f32, _n[0]);
			buffer_poke(_new_buff_here, _ii + 16+32, buffer_f32, _n[1]);
			buffer_poke(_new_buff_here, _ii + 20+32, buffer_f32, _n[2]);
			
			buffer_poke(_new_buff_here, _ii + 12+64, buffer_f32, _n[0]);
			buffer_poke(_new_buff_here, _ii + 16+64, buffer_f32, _n[1]);
			buffer_poke(_new_buff_here, _ii + 20+64, buffer_f32, _n[2]);
			
		}
	var _return_buff = vertex_create_buffer_from_buffer(_new_buff_here,vformat);
	buffer_delete(_new_buff_here);
	
	return(_return_buff);
}