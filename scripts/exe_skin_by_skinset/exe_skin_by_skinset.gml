function exe_skin_by_skinset(_obj,_input)
{
	if struct_get(_input, "skin_set") != undefined
		{
			for(var _ii = 0; _ii < array_length(_input.skin_set); _ii++)
				{
					var _target_part = _input.skin_set[_ii][0];
					var _new_part = _input.skin_set[_ii][1];
					var _new_scale = _input.skin_set[_ii][2];
					var _carry = [-1,-1,_target_part,_new_part,_new_scale];
					_obj = exe_vbuff_item_in_objcet_change(_carry, _obj);
				}
			return(_obj);
		}
	else	{return(_obj);};
}