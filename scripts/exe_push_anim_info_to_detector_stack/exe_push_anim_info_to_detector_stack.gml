function exe_push_anim_info_to_detector_stack(_cpac,_obj)
{
	_obj = exe_push_detector_stack_on_obj(["empty",-1],_obj);
	var _atrl = reference_struct[$ _obj.character_sheet.detector_pack];
	var _atrl_gn = struct_get_names(_atrl);
	for(var _cp3 = 0; _cp3 < array_length(_cpac[3]); _cp3++)
		{
			var _detector_pack_name = _cpac[3][_cp3];
			var _pack = -1;
			for(var _l_atrl = 0; _l_atrl < array_length(_atrl_gn); _l_atrl++)
				{
					if _atrl_gn[_l_atrl] ==	_detector_pack_name	{	_pack = _atrl[$ _atrl_gn[_l_atrl]];	break;};
				}
			if _pack != -1	{	_obj = exe_push_detector_stack_on_obj(["push",_pack],_obj);	}
		}
	return(_obj);
}