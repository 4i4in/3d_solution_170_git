function exe_set_clipboard_with_carry(_carry)
{
	if array_length(_carry) > 2
		{
			switch(_carry[2])
				{
					case "order_by_dependecy_part":
						var _obj = _carry[1];
					
						var _anim_pack_ref = _obj.character_sheet.anim_pack;
						var _part_naming = reference_struct[$ _anim_pack_ref][$ "part_naming"];
					
						var _result_array = [];
						for(var _pr = 0; _pr < array_length(_part_naming); _pr++)
							{
								var _pr_name = 	_part_naming[_pr];
								//var _trm_list = _pose_ref[_pr][1];
			
								//find in obj
								for(var _or = 0; _or < array_length(_obj.part_naming); _or++)
									{
										if _obj.part_naming[_or] == _pr_name
											{
												var _copy_this = _obj.part_dependency_load_reference[_or]
												array_push(_result_array,_copy_this);
											}
									}
							}
						var _pose_string = string(_result_array);	
						_pose_string = string_replace_all(_pose_string,"],[","],\t\t[");
					
						var _str = _carry[0];	_str += "\t\t";
						_str += _pose_string;
						_str += ",";
						clipboard_set_text(_str);
						break;
					
					case "mirror_humanoid_order_by_dependecy_part":
						var _obj = _carry[1];
						var _result_array = exe_mirror_humanoid_order_by_dependecy_part(_obj);
						
						
						var _pose_string = string(_result_array);	
						_pose_string = string_replace_all(_pose_string,"],[","],\t\t[");
					
						var _str = _carry[0];	_str += "\t\t";
						_str += _pose_string;
						_str += ",";
						clipboard_set_text(_str);
						break;
				}
			
		};
	else
		{
			var _str = _carry[0];
			_str += "\t";//TAB
			_str += string(_carry[1]);
			clipboard_set_text(_str);
		}
}