function exe_return_keymouse_result(_preset)
{
	var _struct = variable_clone(_preset);
	
	var _check = struct_get_names(_struct);
	for(var _ii = 0; _ii < array_length(_check); _ii++)
		{
			_struct[$ _check[_ii]] = self[$ _preset[$ _check[_ii]][0]][$ _preset[$ _check[_ii]][1]];
		}
	return(_struct)
}