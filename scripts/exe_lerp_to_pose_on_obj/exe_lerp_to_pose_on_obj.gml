function exe_lerp_to_pose_on_obj(_obj,_pose_to,_pose_step, _affected)
{
	var _anim_pack_ref = _obj.character_sheet.anim_pack;
	var _part_naming = reference_struct[$ _anim_pack_ref][$ "part_naming"];
	var _pose_ref = reference_struct[$ _anim_pack_ref][$ _pose_to];

	for(var _pr = 0; _pr < array_length(_part_naming); _pr++)
		{
			var _pr_name = 	_part_naming[_pr];
//show_debug_message("===============exe_lerp_to_pose_on_obj=================");//for debuging
//show_debug_message("_part_naming : " + string(_part_naming));
//show_debug_message("_pr : " + string(_pr));
//show_debug_message("_pose_to : " + string(_pose_to));
//show_debug_message("================================");

			var _trm_list = _pose_ref[_pr][1];
			
			//find in obj
			for(var _or = 0; _or < array_length(_obj.part_naming); _or++)
				{
					if _obj.part_naming[_or] == _pr_name	&&	_obj.part_vbuff_load_reference[_or][0] != "vbuff_empty"
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
											_obj_part_pdlr[_pdlr][0] = lerp(_obj_part_pdlr[_pdlr][0],_trm_list[_pdlr][0],1/_pose_step);
											_obj_part_pdlr[_pdlr][1] = lerp(_obj_part_pdlr[_pdlr][1],_trm_list[_pdlr][1],1/_pose_step);
											_obj_part_pdlr[_pdlr][2] = lerp(_obj_part_pdlr[_pdlr][2],_trm_list[_pdlr][2],1/_pose_step);
											
										}
									if _affected[1] > 0	//mul scale
										{
											//refering to scale for parent part to scale position/translation acordingly
											var _parent_ref = _obj.part_dependency[_or];
											if array_length(_parent_ref) > 1	{	_parent_ref = _parent_ref[array_length(_parent_ref)-2];	}
											else								{	_parent_ref = 0;	};
											var _mul = real(_obj.part_vbuff_load_reference[_parent_ref][1]);
											
											_obj_part_pdlr[_pdlr][3] = lerp(_obj_part_pdlr[_pdlr][3],_trm_list[_pdlr][3] *_mul,1/_pose_step);
											_obj_part_pdlr[_pdlr][4] = lerp(_obj_part_pdlr[_pdlr][4],_trm_list[_pdlr][4] *_mul,1/_pose_step);
											_obj_part_pdlr[_pdlr][5] = lerp(_obj_part_pdlr[_pdlr][5],_trm_list[_pdlr][5] *_mul,1/_pose_step);
											
										}
									if _affected[2] > 0
										{
											_obj_part_pdlr[_pdlr][6] = lerp(_obj_part_pdlr[_pdlr][6],_trm_list[_pdlr][6],1/_pose_step);
											_obj_part_pdlr[_pdlr][7] = lerp(_obj_part_pdlr[_pdlr][7],_trm_list[_pdlr][7],1/_pose_step);
											_obj_part_pdlr[_pdlr][8] = lerp(_obj_part_pdlr[_pdlr][8],_trm_list[_pdlr][8],1/_pose_step);
										}
									
								}
							break;
						}
				}
			
		}
	_obj.control_method.anim_stack[1] --;	
	return(_obj);
}