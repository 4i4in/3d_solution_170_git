function exe_perform_colisions_on_obj(_obj,_specyfic)
{
	//safety switch for animated object
	if array_length(_obj.part_detector_lines_load_reference) < 1
		{
			if struct_exists(_obj.control_method, "anim_stack")
				{
					if _obj.control_method.behaviour_cycle == "noone_cycle"	{return(_obj);};
					//down here is same as pushing dete4ctors from animation exe_next_pose_anim_next_in_cycle
					var _cycle_pack = reference_struct[$	_obj.character_sheet.anim_cycles][$ _obj.control_method.behaviour_cycle];
					var _current_pose = _obj.control_method.anim_stack[0];
					var _current_pose_id = 0;
					for(var _scp = 0; _scp < array_length(_cycle_pack); _scp++)
						{
								if _cycle_pack[_scp][0] == _current_pose	{_current_pose_id = _scp; break;};
						}
					if array_length(_cycle_pack[_current_pose_id]) > 3
						{
							_obj = exe_push_anim_info_to_detector_stack(_cycle_pack[_current_pose_id],_obj);
						}
				}
		}
	if array_length(_obj.part_detector_lines_load_reference) > 0	{	_obj =	exe_calculate_detector_lines(_obj,_specyfic);	}
	else	{_obj.part_detector_lines_results = [];}	
	
	//temp throw helpers
	if (cam_struct.cam1.throw_colisions_helpers[0] + cam_struct.cam2.throw_colisions_helpers[0]> 0)	&&	(cam_struct.cam1.show.helpers	+ cam_struct.cam2.show.helpers > 0)	
		{exe_throw_helpers_temporary_sloution(_obj);};
	
	return(_obj)
}