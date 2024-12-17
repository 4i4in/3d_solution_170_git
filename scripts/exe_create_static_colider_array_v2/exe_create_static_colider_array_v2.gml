function exe_create_static_colider_array_v2()
{
	var _chunksize = map3d.world_settings.chunksize;
	var _chunk_num = ceil(map3d.world_settings.world_sqr_size / _chunksize);
	map3d.world_settings.chunknumber = _chunk_num;
	
	var _chunks_arr = exe_create_empty_3d_arr(_chunk_num);
	
	for(var _ii = 0; _ii < array_length(map3d.static_objects); _ii++)
		{
			var _obj3d = map3d.static_objects[_ii];
			for(var _inbuff = 0; _inbuff < array_length(_obj3d.part_naming);_inbuff++)
				{
					var _colision_buff_here =			_obj3d.part_colisions_curent[_inbuff];
					var _colision_type =				_obj3d.part_colision_method[_inbuff];
					var _hash =							_obj3d.character_sheet.hash;
					var _part =							_obj3d.part_naming[_inbuff];
					var _translation = [	_obj3d.part_vsubmit[_inbuff][0], _obj3d.part_vsubmit[_inbuff][1], _obj3d.part_vsubmit[_inbuff][2]	];
					_chunks_arr = exe_grab_colision_triangles_from_vbuff(_chunks_arr,_chunk_num,_chunksize,_colision_buff_here,_hash,_translation,_colision_type,_part);
				}
		}
	return(_chunks_arr);
}