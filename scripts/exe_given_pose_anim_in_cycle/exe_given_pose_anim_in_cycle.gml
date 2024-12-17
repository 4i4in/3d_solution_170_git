function exe_given_pose_anim_in_cycle(_obj,_chosen)
{
	var _cycle_pack = reference_struct[$	_obj.character_sheet.anim_cycles][$ _obj.control_method.behaviour_cycle];
	var _anim_choice = _chosen;
	if _anim_choice < 0	{_anim_choice = 0;};
	
	var _undef_exception = 0;
	if _cycle_pack[_anim_choice] == undefined	{_undef_exception = 1;}
	else
		{
			if _cycle_pack[_anim_choice][0] == undefined	{_undef_exception = 1;}
			if _cycle_pack[_anim_choice][1] == undefined	{_undef_exception = 1;}
			if _cycle_pack[_anim_choice][2] == undefined	{_undef_exception = 1;}
		}
	if _undef_exception > 0
		{
			_cycle_pack[_anim_choice] = [ "basic_pose",2,[ 0,1,1 ],[] ];
show_debug_message("_undef_exception in exe_given_pose_anim_in_cycle!!!!!!!!!!!!");
		}
		
	var _carry = [-1,-1,_cycle_pack[_anim_choice][0],_cycle_pack[_anim_choice][1],_cycle_pack[_anim_choice][2]];
	_obj = exe_push_anim_stack_on_obj(_carry,_obj);

	if array_length(_cycle_pack[_anim_choice]) > 3
		{
			_obj = exe_push_anim_info_to_detector_stack(_cycle_pack[_anim_choice],_obj);	
		}
	
	return(_obj);
}