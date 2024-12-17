function exe_edge_exception_to_climb(_obj,_main_id,_normal)
{
	switch(_obj.control_method.ground_state)
		{
			case "hang_fwd":	
				{
					if	string_ends_with(_obj.control_method.anim_stack[0], "_04")	||
						string_ends_with(_obj.control_method.anim_stack[0], "_05")
						{
							var _dot_fwd_to_normal = dot_product_3d(_normal[0],_normal[1],_normal[2],	_obj.part_posMat[_main_id][4],_obj.part_posMat[_main_id][5],_obj.part_posMat[_main_id][6]);
							if _dot_fwd_to_normal > 0
								{
									_obj = exe_humanoid_in_cycle_rotate(_obj,_main_id,179);
									_obj = exe_move_obj_to_anchor(_obj,_main_id);
									_obj = exe_perform_reanchor(_obj,_main_id);
								}
						}
				}
				break;
				
			case "walk":	
				{
					var _continue = exe_walk_anchor_edge_exception_to_climb_lookup(_obj.control_method.anim_stack[0]);
					if _continue > 0
						{
							_obj = exe_humanoid_in_cycle_rotate(_obj,_main_id,179);
							_obj = exe_move_obj_to_anchor(_obj,_main_id);
							_obj = exe_perform_reanchor(_obj,_main_id);
						}
				}
				break;	
		}
	return(_obj);
}