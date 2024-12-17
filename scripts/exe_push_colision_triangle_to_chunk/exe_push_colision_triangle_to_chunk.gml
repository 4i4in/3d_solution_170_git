function exe_push_colision_triangle_to_chunk(_chunks_arr,_refer_to_arr,_triangle_pack)
{
	for(var _i = 0; _i < array_length(_refer_to_arr); _i++)
		{
			var _Xadress = _refer_to_arr[_i][0];
			var _Yadress = _refer_to_arr[_i][1];
			var _Zadress = _refer_to_arr[_i][2];
			
			var _target_arr = _chunks_arr[_Xadress][_Yadress][_Zadress];
			array_push(_target_arr,variable_clone(_triangle_pack));
		}
	
	return(_chunks_arr);
}