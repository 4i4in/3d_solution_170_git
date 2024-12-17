function exe_return_anim_cycle_end(_obj)
{
	var _cycle_end = -1;
	
	var _cycle_pack = reference_struct[$	_obj.character_sheet.anim_cycles][$ _obj.control_method.behaviour_cycle];
	var _current_pose = _obj.control_method.anim_stack[0];
	var _current_pose_id = -1;
	for(var _scp = 0; _scp < array_length(_cycle_pack); _scp++)
		{
				if _cycle_pack[_scp][0] == _current_pose	{_current_pose_id = _scp; break;};
		}
		
	if _current_pose_id > array_length(_cycle_pack)-2	{_cycle_end = 1;};

	
	return(_cycle_end);
}