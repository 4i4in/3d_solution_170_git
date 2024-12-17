function exe_return_is_anim_in_this_cycle(_obj)
{
	var _this_cycle = -1;
	
	var _cycle_pack = reference_struct[$	_obj.character_sheet.anim_cycles][$ _obj.control_method.behaviour_cycle];
	var _current_pose = _obj.control_method.anim_stack[0];
	for(var _scp = 0; _scp < array_length(_cycle_pack); _scp++)
		{
				if _cycle_pack[_scp][0] == _current_pose	{_this_cycle = 1; break;};
		}

	return(_this_cycle);
}