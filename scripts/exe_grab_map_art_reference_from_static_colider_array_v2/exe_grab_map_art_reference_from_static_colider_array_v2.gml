function exe_grab_map_art_reference_from_static_colider_array_v2(_part_xx,_part_yy,_part_zz,_cell_shift,_part_num,_cells_in_map_part)
{
	var _chunk_num = ceil(map3d.world_settings.world_sqr_size / map3d.world_settings.chunksize);
	
	var _map_part = exe_create_empty_3d_arr(_cells_in_map_part);
	
	for(var _xx = 0; _xx < array_length(_map_part); _xx++)
		{
			for(var _yy = 0; _yy < array_length(_map_part[_xx]); _yy++)
				{
					for(var _zz = 0; _zz < array_length(_map_part[_yy]); _zz++)
						{
							var _ref_point = [_part_xx+_xx,_part_yy+_yy,_part_zz+_zz];
							_ref_point[0] *= map3d.world_settings.chunksize;
							_ref_point[1] *= map3d.world_settings.chunksize;
							_ref_point[2] *= map3d.world_settings.chunksize;
							var _chunk_map_ref = exe_return_point_in_chunk(_chunk_num,map3d.world_settings.chunksize,_ref_point);					
							if is_array(_chunk_map_ref)
								{
									_map_part[_xx][_yy][_zz] = map3d.all_static_colider_arr[_chunk_map_ref[0]][_chunk_map_ref[1]][_chunk_map_ref[2]];
								}
						}
				}
		}		

	return(_map_part)
}