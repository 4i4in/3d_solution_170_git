function exe_create_map_part_static_colider_arr()
{
	var _cell_shift = map3d.world_settings.map_part_size / map3d.world_settings.chunknumber_in_map_part;
	var _part_num = (map3d.world_settings.world_sqr_size div _cell_shift)+1;
	var _all_map_parts = exe_create_empty_3d_arr(_part_num);
	var _cells_in_map_part = map3d.world_settings.map_part_size div map3d.world_settings.chunksize;

	for(var _xx = 0; _xx < array_length(_all_map_parts); _xx++)
		{
			for(var _yy = 0; _yy < array_length(_all_map_parts[_xx]); _yy++)
				{
					for(var _zz = 0; _zz < array_length(_all_map_parts[_yy]); _zz++)
						{
							_all_map_parts[_xx][_yy][_zz] = exe_grab_map_art_reference_from_static_colider_array_v2(_xx,_yy,_zz,_cell_shift,_part_num,_cells_in_map_part);
						}
				}
		}	
	
	return(_all_map_parts);
}