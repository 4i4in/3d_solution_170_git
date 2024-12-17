function exe_return_hash(_word)
{
	var _hash = sha1_string_unicode(string(_word));
	var _shortened_hash = string_copy(_hash, 1, 6); 
	var _hash_number = round(real("0x" + _shortened_hash));// / 4294967296.0;
	
	return(_hash_number);
}