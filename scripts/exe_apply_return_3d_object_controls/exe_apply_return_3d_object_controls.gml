function exe_apply_return_3d_object_controls(_struct,_pad_struct,_key_list)
{
	_struct.temporary_values = {}; //reset grab
	//grab move values from controller

	for(var _ii = 0; _ii < array_length(_key_list); _ii++)
		{
			var _key = _key_list[_ii];
			if struct_exists(_struct, _key)
				{
						struct_set(_struct.temporary_values, _key, exe_return_ci_for(_struct,_pad_struct,_key)	);
				}
			else	{	struct_set(_struct.temporary_values, _key,	0.);	}
		}
	/*
	//old version
	var _key = "strafe_fb";
	struct_set(_struct.temporary_values, _key, exe_return_ci_for(_struct,_pad_struct,_key)	);
	*/
	
	
	return(_struct.temporary_values);
}