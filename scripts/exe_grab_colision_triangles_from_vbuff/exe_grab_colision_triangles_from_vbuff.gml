function exe_grab_colision_triangles_from_vbuff(_chunks_arr,_chunk_num,_chunksize,_colision_buff_here,_hash,_translation,_colision_type,_part)
{
	var _new_buff_here = buffer_create_from_vertex_buffer(_colision_buff_here, buffer_fixed,1);
	for(var _ii = 0; _ii < buffer_get_size(_new_buff_here); _ii+= (32 * 3)	)//because of triangle
		{
			var _refer_to_arr = [];
			//vert1
			var _ox = buffer_peek(_new_buff_here, _ii, buffer_f32);
			var _oy = buffer_peek(_new_buff_here, _ii +4, buffer_f32);
			var _oz = buffer_peek(_new_buff_here, _ii +8, buffer_f32);
			
			var _p1 = [_ox + _translation[0],_oy + _translation[1],_oz + _translation[2]];
			var _chunk_adress = exe_return_point_in_chunk(_chunk_num,_chunksize,_p1);
			if is_array(_chunk_adress)	{	_refer_to_arr = exe_push_adress_to_array(_refer_to_arr,_chunk_adress);	};
			//vert2
			var _ox = buffer_peek(_new_buff_here, _ii	+32, buffer_f32);
			var _oy = buffer_peek(_new_buff_here, _ii +4+32, buffer_f32);
			var _oz = buffer_peek(_new_buff_here, _ii +8+32, buffer_f32);
			
			var _p2 = [_ox + _translation[0],_oy + _translation[1],_oz + _translation[2]];
			var _chunk_adress = exe_return_point_in_chunk(_chunk_num,_chunksize,_p2);
			if is_array(_chunk_adress)	{	_refer_to_arr = exe_push_adress_to_array(_refer_to_arr,_chunk_adress);	};
			
			//vert3
			var _ox = buffer_peek(_new_buff_here, _ii	+64, buffer_f32);
			var _oy = buffer_peek(_new_buff_here, _ii +4+64, buffer_f32);
			var _oz = buffer_peek(_new_buff_here, _ii +8+64, buffer_f32);
			
			var _p3 = [_ox + _translation[0],_oy + _translation[1],_oz + _translation[2]];
			var _chunk_adress = exe_return_point_in_chunk(_chunk_num,_chunksize,_p3);
			if is_array(_chunk_adress)	{	_refer_to_arr = exe_push_adress_to_array(_refer_to_arr,_chunk_adress);	};
			
			if array_length(_refer_to_arr) > 0
				{
					//normals
					var _n = vec_normalize(	vec_cross_product(	vec3d_subtract(_p2, _p1),	vec3d_subtract(_p3, _p1)	)	);
					var _tpBC = [	(_p1[0] + _p2[0] + _p3[0])/3.,	(_p1[1] + _p2[1] + _p3[1])/3.,	(_p1[2] + _p2[2] + _p3[2])/3.	];	
					var _triangle_pack = [_p1,_p2,_p3,_tpBC,_n,_hash,_colision_type,_part];
					// used in exe_calculate_line_vs_triangle
			
					_chunks_arr = exe_push_colision_triangle_to_chunk(_chunks_arr,_refer_to_arr,_triangle_pack);
				}
			else	
				{
					//show_debug_message("triangle drop!!!!!!!!");
					//show_debug_message("_p1 : " + string(_p1));
					//show_debug_message("_p2 : " + string(_p2));
					//show_debug_message("_p3 : " + string(_p3));
					//show_debug_message("=================");
				}
		}
	
	buffer_delete(_new_buff_here);
	return(_chunks_arr);
}