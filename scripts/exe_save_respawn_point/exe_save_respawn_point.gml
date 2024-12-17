function exe_save_respawn_point(_obj,_position)
{
	if struct_get(_obj.character_sheet,"respawn_point") != undefined
		{
			if _position == "current"
				{
					_position = [
									variable_clone(_obj.part_posMat[0][12]),
									variable_clone(_obj.part_posMat[0][13]),
									variable_clone(_obj.part_posMat[0][14])
								];
				}
		
		
			_obj.character_sheet.respawn_point[0] = _position[0];
			_obj.character_sheet.respawn_point[1] = _position[1];
			_obj.character_sheet.respawn_point[2] = _position[2];
		}			
								
	return(_obj);
}