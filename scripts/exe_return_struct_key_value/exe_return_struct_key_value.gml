function exe_return_struct_key_value(_struct,_key)
{
	var _value = 0;
	if struct_exists(_struct,_key)
		{
			_value = _struct[$ _key];
		}
	
	return(_value)
}