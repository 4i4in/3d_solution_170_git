function exe_corect_normals_on_open_vbuff(_buff_here)	//takes normal buffer, not vbuff
{
	for(var _ii = 0; _ii < buffer_get_size(_buff_here); _ii+= (32 * 3)	)//because of triangle
		{
			//vert1
			var _ox = buffer_peek(_buff_here, _ii, buffer_f32);
			var _oy = buffer_peek(_buff_here, _ii +4, buffer_f32);
			var _oz = buffer_peek(_buff_here, _ii +8, buffer_f32);
			
			var _p1 = [_ox,_oy,_oz];
			
			//vert2
			var _ox = buffer_peek(_buff_here, _ii	+32, buffer_f32);
			var _oy = buffer_peek(_buff_here, _ii +4+32, buffer_f32);
			var _oz = buffer_peek(_buff_here, _ii +8+32, buffer_f32);
			
			var _p2 = [_ox,_oy,_oz];
			
			//vert3
			var _ox = buffer_peek(_buff_here, _ii	+64, buffer_f32);
			var _oy = buffer_peek(_buff_here, _ii +4+64, buffer_f32);
			var _oz = buffer_peek(_buff_here, _ii +8+64, buffer_f32);
			
			var _p3 = [_ox,_oy,_oz];
			
			//normals
			var _n = vec_normalize(	vec_cross_product(	vec3d_subtract(_p2, _p1),	vec3d_subtract(_p3, _p1)	)	);
			buffer_poke(_buff_here, _ii + 12, buffer_f32, _n[0]);
			buffer_poke(_buff_here, _ii + 16, buffer_f32, _n[1]);
			buffer_poke(_buff_here, _ii + 20, buffer_f32, _n[2]);
			
			buffer_poke(_buff_here, _ii + 12+32, buffer_f32, _n[0]);
			buffer_poke(_buff_here, _ii + 16+32, buffer_f32, _n[1]);
			buffer_poke(_buff_here, _ii + 20+32, buffer_f32, _n[2]);
			
			buffer_poke(_buff_here, _ii + 12+64, buffer_f32, _n[0]);
			buffer_poke(_buff_here, _ii + 16+64, buffer_f32, _n[1]);
			buffer_poke(_buff_here, _ii + 20+64, buffer_f32, _n[2]);
			
		}
	
	return(_buff_here);
}