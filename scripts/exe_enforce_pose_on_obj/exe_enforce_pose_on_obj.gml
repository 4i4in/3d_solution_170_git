function exe_enforce_pose_on_obj(_carry)
{
	var _selected_object_type = _carry[0];
	var _selected_object_num =	_carry[1];
	var _anim_pack_ref =		_carry[2];
	var _animation =			_carry[3];
	var _affected =				_carry[4];
	
	var _obj = map3d[$ _selected_object_type][_selected_object_num];
	
	var _part_naming = reference_struct[$ _anim_pack_ref][$ "part_naming"];
	var _pose_ref = reference_struct[$ _anim_pack_ref][$ _animation];
	
	for(var _pr = 0; _pr < array_length(_part_naming); _pr++)
		{
			var _pr_name = 	_part_naming[_pr];
			var _trm_list = _pose_ref[_pr][1];
			
			//find in obj
			for(var _or = 0; _or < array_length(_obj.part_naming); _or++)
				{
					if _obj.part_naming[_or] == _pr_name
						{
							var _obj_part_pdlr = _obj.part_dependency_load_reference[_or][1];
							//TBD different array length
							while (	array_length(_trm_list) > array_length(_obj_part_pdlr)	)
								{
									array_push(_obj_part_pdlr,[ 0,0,0,0,0,0,0,0,0 ]);
									show_debug_message("array_length(_trm_list) > array_length(_obj_part_pdlr)");
								}
							while (array_length(_trm_list) < array_length(_obj_part_pdlr)	)
								{
									array_delete(_obj_part_pdlr,array_length(_obj_part_pdlr)-1,1);
									show_debug_message("array_length(_trm_list) < array_length(_obj_part_pdlr)");
								}
							
							
							for(var _pdlr = 0; _pdlr < array_length(_trm_list); _pdlr++)
								{
									if _affected[0] > 0
										{
											_obj_part_pdlr[_pdlr][0] = _trm_list[_pdlr][0];
											_obj_part_pdlr[_pdlr][1] = _trm_list[_pdlr][1];
											_obj_part_pdlr[_pdlr][2] = _trm_list[_pdlr][2];
										}
									if _affected[1] > 0//mul scale
										{
											//refering to scale for parent part to scale position/translation acordingly
											var _parent_ref = _obj.part_dependency[_or];
											if array_length(_parent_ref) > 1	{	_parent_ref = _parent_ref[array_length(_parent_ref)-2];	}
											else								{	_parent_ref = 0;	};
											var _mul = real(_obj.part_vbuff_load_reference[_parent_ref][1]);
											
											_obj_part_pdlr[_pdlr][3] = _trm_list[_pdlr][3] *_mul;
											_obj_part_pdlr[_pdlr][4] = _trm_list[_pdlr][4] *_mul;
											_obj_part_pdlr[_pdlr][5] = _trm_list[_pdlr][5] *_mul;
										}
									if _affected[2] > 0
										{
											_obj_part_pdlr[_pdlr][6] = _trm_list[_pdlr][6];
											_obj_part_pdlr[_pdlr][7] = _trm_list[_pdlr][7];
											_obj_part_pdlr[_pdlr][8] = _trm_list[_pdlr][8];
										}
								}
							break;
						}
				}
			
		}
	map3d[$ _selected_object_type][_selected_object_num] = _obj;
	exe_push_anim_stack_on_obj([_selected_object_type,_selected_object_num,_animation,1,_affected]);
}