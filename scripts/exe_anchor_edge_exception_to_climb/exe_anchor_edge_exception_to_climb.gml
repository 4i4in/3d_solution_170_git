function exe_anchor_edge_exception_to_climb(_obj,_main_id,_xyz1,_keep_gs)
{
	
	var _continue = 0;
	if _keep_gs == "walk"	
		{
			_continue = exe_walk_anchor_edge_exception_to_climb_lookup(_obj.control_method.anim_stack[0]);
		};
	if _continue > 0
		{
			var _vec3_main_to_xyz1 = [	_xyz1[0] - _obj.part_posMat[_main_id][12],	_xyz1[1] - _obj.part_posMat[_main_id][13],	_xyz1[2] - _obj.part_posMat[_main_id][14]	];

			var _cast_up_vs_l =		_vec3_main_to_xyz1[0] * (-_obj.part_posMat[_main_id][8]) +
									_vec3_main_to_xyz1[1] * (-_obj.part_posMat[_main_id][9]) +
									_vec3_main_to_xyz1[2] * (-_obj.part_posMat[_main_id][10]);
													
			_xyz1[0] -= _obj.part_posMat[_main_id][8]*_cast_up_vs_l;
			_xyz1[1] -= _obj.part_posMat[_main_id][9]*_cast_up_vs_l;
			_xyz1[2] -= _obj.part_posMat[_main_id][10]*_cast_up_vs_l;
		}
	return(_xyz1);
}