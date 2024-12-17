function exe_mirror_humanoid_order_by_dependecy_part(_obj)
{
	var _result_array = [];
	var _anim_pack_ref = _obj.character_sheet.anim_pack;
	var _part_naming = reference_struct[$ _anim_pack_ref][$ "part_naming"];
	for(var _pr = 0; _pr < array_length(_part_naming); _pr++)
		{
			var _pr_name = 	_part_naming[_pr];
			//var _trm_list = _pose_ref[_pr][1];
			
			//find in obj
			for(var _or = 0; _or < array_length(_obj.part_naming); _or++)
				{
					if _obj.part_naming[_or] == _pr_name
						{
							var _found_in_ref = -1;
							switch(_pr_name)
								{
									case "main_part":	case "ass_pivot_01":	case "spine_01":	case "spine_02":
									case "neck_01":		case "head_01":			case "jaw_01":		case "backpack_01":
										var _copy_from = _obj.part_dependency_load_reference[_or];
										var _copy_to = variable_clone(_obj.part_dependency_load_reference[_or]);
										
										for(var _ctt = 0; _ctt <array_length(_copy_to[1]); _ctt++)
											{
												array_set(_copy_to[1][_ctt],	0,	-_copy_from[1][_ctt][0]);
												array_set(_copy_to[1][_ctt],	1,	_copy_from[1][_ctt][1]);
												array_set(_copy_to[1][_ctt],	2,	-_copy_from[1][_ctt][2]);
												
												
												array_set(_copy_to[1][_ctt],	3,	_copy_from[1][_ctt][3]);
												array_set(_copy_to[1][_ctt],	3,	_copy_from[1][_ctt][3]);
												array_set(_copy_to[1][_ctt],	5,	-_copy_from[1][_ctt][5]);
												
												array_set(_copy_to[1][_ctt],	6,	-_copy_from[1][_ctt][6]);
												array_set(_copy_to[1][_ctt],	7,	_copy_from[1][_ctt][7]);
												array_set(_copy_to[1][_ctt],	8,	-_copy_from[1][_ctt][8]);
											}
										_found_in_ref = 1;
										break;
										
										
									case "shoulder_R_01":	case "Uarm_R_01":	case "Farm_R_01":	case "hand_R_01":
									case "hip_R_01":		case "Uleg_R_01":	case "Lleg_R_01":	case "foot_R_01":
									case "toe_R_01":
										var _mirror_name = string_replace(_pr_name,"_R_","_L_");
										var _mirror_id = -1;
										for(var _mir_or = 0; _mir_or < array_length(_obj.part_naming); _mir_or++)
											{
												if _obj.part_naming[_mir_or] == _mirror_name
													{
														_mirror_id = _mir_or; break;
													}
											}
										if _mirror_id > -1
											{
												var _copy_from = _obj.part_dependency_load_reference[_mirror_id];
												var _copy_to = variable_clone(_obj.part_dependency_load_reference[_or]);
												for(var _ctt = 0; _ctt <array_length(_copy_to[1]); _ctt++)
													{
														array_set(_copy_to[1][_ctt],	0,	-_copy_from[1][_ctt][0]);
														array_set(_copy_to[1][_ctt],	1,	_copy_from[1][_ctt][1]);
														array_set(_copy_to[1][_ctt],	2,	-_copy_from[1][_ctt][2]);
														
														array_set(_copy_to[1][_ctt],	3,	_copy_from[1][_ctt][3]);
														array_set(_copy_to[1][_ctt],	4,	_copy_from[1][_ctt][4]);
														array_set(_copy_to[1][_ctt],	5,	-_copy_from[1][_ctt][5]);
												
														array_set(_copy_to[1][_ctt],	6,	-_copy_from[1][_ctt][6]);
														array_set(_copy_to[1][_ctt],	7,	_copy_from[1][_ctt][7]);
														array_set(_copy_to[1][_ctt],	8,	-_copy_from[1][_ctt][8]);
													}
												_found_in_ref = 1;
											}
										break;
										
										
										
										
										
									case "shoulder_L_01":	case "Uarm_L_01":	case "Farm_L_01":	case "hand_L_01":
									case "hip_L_01":		case "Uleg_L_01":	case "Lleg_L_01":	case "foot_L_01":
									case "toe_L_01":
										var _mirror_name = string_replace(_pr_name,"_L_","_R_");
										var _mirror_id = -1;
										for(var _mir_or = 0; _mir_or < array_length(_obj.part_naming); _mir_or++)
											{
												if _obj.part_naming[_mir_or] == _mirror_name
													{
														_mirror_id = _mir_or; break;
													}
											}
										if _mirror_id > -1
											{
												var _copy_from = _obj.part_dependency_load_reference[_mirror_id];
												var _copy_to = variable_clone(_obj.part_dependency_load_reference[_or]);
												for(var _ctt = 0; _ctt <array_length(_copy_to[1]); _ctt++)
													{
														array_set(_copy_to[1][_ctt],	0,	-_copy_from[1][_ctt][0]);
														array_set(_copy_to[1][_ctt],	1,	_copy_from[1][_ctt][1]);
														array_set(_copy_to[1][_ctt],	2,	-_copy_from[1][_ctt][2]);
														
														array_set(_copy_to[1][_ctt],	3,	_copy_from[1][_ctt][3]);
														array_set(_copy_to[1][_ctt],	4,	_copy_from[1][_ctt][4]);
														array_set(_copy_to[1][_ctt],	5,	-_copy_from[1][_ctt][5]);
												
														array_set(_copy_to[1][_ctt],	6,	-_copy_from[1][_ctt][6]);
														array_set(_copy_to[1][_ctt],	7,	_copy_from[1][_ctt][7]);
														array_set(_copy_to[1][_ctt],	8,	-_copy_from[1][_ctt][8]);
													}
												_found_in_ref = 1;
											}
										break;
								}//switch end
								
								
							if _found_in_ref < 0	//not found, just copy
								{
									var _copy_to = _obj.part_dependency_load_reference[_or];
								}
							array_push(_result_array,_copy_to);
						}
				}
		}
	return(_result_array);
}