function exe_next_pose_anim_next_in_cycle(_obj,_min)
{
	var _cycle_pack = reference_struct[$	_obj.character_sheet.anim_cycles][$ _obj.control_method.behaviour_cycle];
	var _current_pose = _obj.control_method.anim_stack[0];
	var _current_pose_id = -1;
	for(var _scp = 0; _scp < array_length(_cycle_pack); _scp++)
		{
				if _cycle_pack[_scp][0] == _current_pose	{_current_pose_id = _scp; break;};
		}
	if _current_pose_id > -1
		{
			var _anim_choice = _current_pose_id +1; if _anim_choice > array_length(_cycle_pack)-1	{_anim_choice = _min;};
			var _carry = [-1,-1,_cycle_pack[_anim_choice][0],_cycle_pack[_anim_choice][1],_cycle_pack[_anim_choice][2]];
			
			_obj = exe_push_anim_stack_on_obj(_carry,_obj);

			if array_length(_cycle_pack[_anim_choice]) > 3
				{
					_obj = exe_push_anim_info_to_detector_stack(_cycle_pack[_anim_choice],_obj);
					
				}
		}
	else	{	_obj = exe_next_pose_anim_random_in_cycle(_obj,"any");	}
	
	
	
	return(_obj);
}