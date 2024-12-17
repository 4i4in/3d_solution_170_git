function exe_resolve_anchor_letter(_obj)
{
	var _anchor_R = 0;
	var _anchor_L = 0;
	for(var _oa = 0; _oa < array_length(_obj.control_method.anchor); _oa++)
		{
			if _obj.control_method.anchor[_oa][0] == "toe_R_01"	{_anchor_R++;};
			if _obj.control_method.anchor[_oa][0] == "toe_L_01"	{_anchor_L++;};
			if _obj.control_method.anchor[_oa][0] == "hand_R_01"	{_anchor_R++;};
			if _obj.control_method.anchor[_oa][0] == "hand_L_01"	{_anchor_L++;};
		}
	var _dirstr = "_R";
	if _anchor_R > 0 &&	_anchor_L < 1	{_dirstr = "_R";};
	if _anchor_R < 1 &&	_anchor_L > 0	{_dirstr = "_L";};
	
	return(_dirstr);
}