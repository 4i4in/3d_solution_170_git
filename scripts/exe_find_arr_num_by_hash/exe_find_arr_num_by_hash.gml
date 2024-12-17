function exe_find_arr_num_by_hash(_obj_type,_hash)
{
	var _num = -1;
	for(var _ii = 0; _ii < array_length(map3d[$ _obj_type]); _ii++)
		{
			var _obj = map3d[$ _obj_type][_ii];
			if _obj.character_sheet.hash == _hash
				{
					_num = _ii; break;
				}
		}
	return(_num);
}