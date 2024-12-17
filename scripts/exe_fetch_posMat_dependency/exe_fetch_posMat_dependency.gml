function exe_fetch_posMat_dependency(_temp_o)
{
	var _result = [];
	for(var _ii = 0; _ii < array_length(_temp_o.part_dependency_load_reference); _ii++)
		{
			if _temp_o.part_naming[_ii] == "main_part"	{	array_push(_result,[]);	}
			else
				{			
					var _my_dependency = variable_clone(_temp_o.part_dependency_load_reference[_ii][0]);
					var _my_chain = [_ii];
					var _main_found = -1;
					while(_main_found < 0)
						{
							for(var _wa = 0; _wa < array_length(_temp_o.part_naming); _wa++)
								{
									if _temp_o.part_naming[_wa] == _my_dependency
										{
											//array_push(_my_chain,_wa);
											array_insert(_my_chain,0,_wa);
											if _temp_o.part_naming[_wa] == "main_part"	{_main_found = 1;}
											else	{_my_dependency = variable_clone(_temp_o.part_dependency_load_reference[_wa][0]);};
										}
								}
						}
					array_push(_result,_my_chain);
				}
		}
	_temp_o.part_dependency = _result;
	return(_temp_o);
}
