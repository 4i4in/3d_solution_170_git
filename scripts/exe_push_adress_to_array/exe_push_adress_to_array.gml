function exe_push_adress_to_array(_refer_to_arr,_chunk_adress)
{
	var _found = 0;
	for(var _i = 0; _i < array_length(_refer_to_arr); _i++)
		{
			if	_refer_to_arr[_i][0] == _chunk_adress[0]	&&
				_refer_to_arr[_i][1] == _chunk_adress[1]	&&
				_refer_to_arr[_i][2] == _chunk_adress[2]
				{_found = 1; break;};
		}
	if _found < 1
		{
			array_push(_refer_to_arr,_chunk_adress);
		}
	return(_refer_to_arr);
}