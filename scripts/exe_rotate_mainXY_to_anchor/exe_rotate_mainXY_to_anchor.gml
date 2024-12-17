function exe_rotate_mainXY_to_anchor(_obj,_main_id,_value)
{
	var _dot_mainXY_to_anchor =  exe_return_mainXY_to_anchor(_obj);
			
	if _dot_mainXY_to_anchor < -_obj.character_sheet.body_measures.dot_mainXY_to_anchor[0]
		{	_obj = exe_humanoid_in_cycle_rotate(_obj,_main_id,-_value);	};
	if _dot_mainXY_to_anchor > _obj.character_sheet.body_measures.dot_mainXY_to_anchor[0]
		{	_obj = exe_humanoid_in_cycle_rotate(_obj,_main_id,_value);	};
				
	return(_obj);
}