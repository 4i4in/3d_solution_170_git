function exe_create_fast_check_scheeme_for_colisions()
{
	var _cells_in_map_part = map3d.world_settings.map_part_size div map3d.world_settings.chunksize;

	var _result_arr = [];
	for(var _xx = 0; _xx < _cells_in_map_part; _xx++)
		{
			for(var _yy = 0; _yy < _cells_in_map_part; _yy++)
				{
					for(var _zz = 0; _zz < _cells_in_map_part; _zz++)
						{
							var _psh = [_xx,_yy,_zz];
							array_push(_result_arr,_psh);
						}
				}
		}
	return(_result_arr);
}