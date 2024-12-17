function exe_return_point_in_chunk(_chunk_num,_chunksize,_p1)
{
	var _Xadress = (_p1[0]-map3d.world_settings.world_x_start) div _chunksize;
	var _Yadress = (_p1[1]-map3d.world_settings.world_y_start) div _chunksize;
	var _Zadress = (_p1[2]-map3d.world_settings.world_z_start) div _chunksize;
	
	//show_debug_message("ref chunk : "  + string(_Xadress) + " | " + string(_Yadress) + " | " + string(_Zadress));
	
	var _out_of_range = 0;
	if _Xadress < 0	{_out_of_range = 1;};
	if _Xadress > _chunk_num-1 {_out_of_range = 1;};
	if _Yadress < 0	{_out_of_range = 1;};
	if _Yadress > _chunk_num-1 {_out_of_range = 1;};
	if _Zadress < 0	{_out_of_range = 1;};
	if _Zadress > _chunk_num-1 {_out_of_range = 1;};
	
	if _out_of_range < 1
		{
			return([_Xadress,_Yadress,_Zadress]);
		}
	else
		{
			return(-1);
		}
}