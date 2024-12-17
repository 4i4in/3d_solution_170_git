function exe_return_humanoid_skin_set(_skin_name,_scale)
{
	var _skin = [];
	var _return_s = 0;
	if _scale != 0	{_return_s = _scale;};
	switch(_skin_name)
		{
			case "full_equip_for_testing" :
				_skin = [		//target			//new part			//scale
							[	"ass_pivot_01",		"ass_pivot_01_theme_01",	_return_s],
							[	"spine_01",			"spine_01_theme_01",		_return_s],
							[	"spine_02",			"spine_02_theme_01",		_return_s],
							[	"neck_01",			"neck_01_theme_02",			_return_s],
							[	"head_01",			"head_01_theme_02",			_return_s],
							[	"jaw_01",			"jaw_01_theme_02",			_return_s],
							[	"helmet_01",		"hat_01",					_return_s],
							[	"shoulder_R_01",	"shoulder_R_01_theme_02",	_return_s],
							[	"Uarm_R_01",		"Uarm_R_01_theme_02",		_return_s],
							[	"Farm_R_01",		"Farm_R_01_theme_01",		_return_s],
							[	"hand_R_01",		"hand_R_01_theme_01",		_return_s],
							[	"shoulder_L_01",	"shoulder_L_01_theme_02",	_return_s],
							[	"Uarm_L_01",		"Uarm_L_01_theme_02",		_return_s],
							[	"Farm_L_01",		"Farm_L_01_theme_01",		_return_s],
							[	"hand_L_01",		"hand_L_01_theme_01",		_return_s],
							[	"hip_R_01",			"hip_R_01_theme_01",		_return_s],
							[	"Uleg_R_01",		"Uleg_R_01_theme_01",		_return_s],
							[	"Lleg_R_01",		"Lleg_R_01_theme_03",		_return_s],
							[	"foot_R_01",		"foot_R_01_theme_01",		_return_s],
							[	"toe_R_01",			"toe_R_01_theme_01",		_return_s],
							[	"hip_L_01",			"hip_L_01_theme_01",		_return_s],
							[	"Uleg_L_01",		"Uleg_L_01_theme_01",		_return_s],
							[	"Lleg_L_01",		"Lleg_L_01_theme_03",		_return_s],
							[	"foot_L_01",		"foot_L_01_theme_01",		_return_s],
							[	"toe_L_01",			"toe_L_01_theme_01",		_return_s],
							[	"backpack_01",		"backpack1",				_return_s],
							[	"scabbard_L_01",	"scabbard1",				_return_s],
							[	"sword_L_01",		"sword1",					_return_s],
							[	"scabbard_L_02",	"scabbard2",				_return_s],
							[	"sword_L_02",		"sword2",					_return_s],
							[	"scabbard_R_01",	"scabbard3",				_return_s],
							[	"sword_R_01",		"dagger1",					_return_s],
							[	"axe_R_01",			"axe1",						_return_s],
							[	"tool_L_01",		"spade1",					_return_s],
							[	"tool_R_01",		"pickaxe1",					_return_s],
							[	"in_L_higshoe",		"knife1",					_return_s],
							[	"in_R_higshoe",		"knife1",					_return_s],
							[	"shield_01",		"shield1",					_return_s],
							[	"shield_02",		"shield1",					_return_s],
				
						];
				break;
				
			case "hero_body_for_testing" :
				_skin = [		//target			//new part			//scale
							[	"ass_pivot_01",		"ass_pivot_01_theme_01",	_return_s*1.2],
							[	"spine_01",			"spine_01_theme_01",		_return_s*1.2],
							[	"spine_02",			"spine_02_theme_01",		_return_s*1.4],
							[	"neck_01",			"neck_01_theme_02_heroic",	_return_s*1.1],
							[	"head_01",			"head_01_theme_02",			_return_s],
							[	"jaw_01",			"jaw_01_theme_02",			_return_s],
							[	"helmet_01",		"hat_01",					_return_s],
							[	"shoulder_R_01",	"shoulder_R_01_theme_02",	_return_s*1.5],
							[	"Uarm_R_01",		"Uarm_R_01_theme_02",		_return_s*1.2],
							[	"Farm_R_01",		"Farm_R_01_theme_01",		_return_s*1.3],
							[	"hand_R_01",		"hand_R_01_theme_01",		_return_s*1.4],
							[	"shoulder_L_01",	"shoulder_L_01_theme_02",	_return_s*1.5],
							[	"Uarm_L_01",		"Uarm_L_01_theme_02",		_return_s*1.2],
							[	"Farm_L_01",		"Farm_L_01_theme_01",		_return_s*1.3],
							[	"hand_L_01",		"hand_L_01_theme_01",		_return_s*1.4],
							[	"hip_R_01",			"hip_R_01_theme_01",		_return_s*1.2],
							[	"Uleg_R_01",		"Uleg_R_01_theme_01",		_return_s*1.1],
							[	"Lleg_R_01",		"Lleg_R_01_theme_03",		_return_s*1.3],
							[	"foot_R_01",		"foot_R_01_theme_01",		_return_s*1.4],
							[	"toe_R_01",			"toe_R_01_theme_01",		_return_s*1.4],
							[	"hip_L_01",			"hip_L_01_theme_01",		_return_s*1.2],
							[	"Uleg_L_01",		"Uleg_L_01_theme_01",		_return_s*1.1],
							[	"Lleg_L_01",		"Lleg_L_01_theme_03",		_return_s*1.3],
							[	"foot_L_01",		"foot_L_01_theme_01",		_return_s*1.4],
							[	"toe_L_01",			"toe_L_01_theme_01",		_return_s*1.4],
							[	"scabbard_L_01",	"scabbard1",				_return_s*1.5],
							[	"sword_L_01",		"sword1",					_return_s*1.5],
							[	"axe_R_01",			"axe1",						_return_s*1.2],
							[	"shield_01",		"shield1",					_return_s*1.3],
				
						];
				break;
				
			case "armored_for_testing" :
				_skin = [		//target			//new part			//scale
							[	"main_part",		"vbuff_empty",				_return_s],
							[	"ass_pivot_01",		"ass_pivot_01_theme_01",	_return_s],
							[	"spine_01",			"spine_01_theme_02",		_return_s],
							[	"spine_02",			"spine_02_theme_02",		_return_s],
							[	"neck_01",			"neck_01_theme_02",			_return_s],
							[	"head_01",			"head_01_theme_02",			_return_s],
							[	"jaw_01",			"jaw_01_theme_02",			_return_s],
							[	"helmet_01",		"helmet_05",				_return_s],
							[	"shoulder_R_01",	"shoulder_R_01_theme_03",	_return_s],
							[	"Uarm_R_01",		"Uarm_R_01_theme_04",		_return_s],
							[	"Farm_R_01",		"Farm_R_01_theme_01",		_return_s],
							[	"hand_R_01",		"hand_R_01_theme_01",		_return_s],
							[	"shoulder_L_01",	"shoulder_L_01_theme_03",	_return_s],
							[	"Uarm_L_01",		"Uarm_L_01_theme_04",		_return_s],
							[	"Farm_L_01",		"Farm_L_01_theme_01",		_return_s],
							[	"hand_L_01",		"hand_L_01_theme_01",		_return_s],
							[	"hip_R_01",			"hip_R_01_theme_01",		_return_s],
							[	"Uleg_R_01",		"Uleg_R_01_theme_01",		_return_s],
							[	"Lleg_R_01",		"Lleg_R_01_theme_03",		_return_s],
							[	"foot_R_01",		"foot_R_01_theme_01",		_return_s],
							[	"toe_R_01",			"toe_R_01_theme_01",		_return_s],
							[	"hip_L_01",			"hip_L_01_theme_01",		_return_s],
							[	"Uleg_L_01",		"Uleg_L_01_theme_01",		_return_s],
							[	"Lleg_L_01",		"Lleg_L_01_theme_03",		_return_s],
							[	"foot_L_01",		"foot_L_01_theme_01",		_return_s],
							[	"toe_L_01",			"toe_L_01_theme_01",		_return_s],
							[	"backpack_01",		"vbuff_empty",				_return_s],
							[	"scabbard_L_01",	"scabbard1",				_return_s],
							[	"sword_L_01",		"sword1",					_return_s],
							[	"scabbard_L_02",	"scabbard2",				_return_s],
							[	"sword_L_02",		"sword2",					_return_s],
							[	"scabbard_R_01",	"scabbard3",				_return_s],
							[	"sword_R_01",		"dagger1",					_return_s],
							[	"axe_R_01",			"axe1",						_return_s],
							[	"tool_L_01",		"vbuff_empty",				_return_s],
							[	"tool_R_01",		"vbuff_empty",				_return_s],
							[	"in_L_higshoe",		"knife1",					_return_s],
							[	"in_R_higshoe",		"vbuff_empty",				_return_s],
							[	"shield_01",		"vbuff_empty",				_return_s],
							[	"shield_02",		"vbuff_empty",				_return_s],
				
						];
				break;
		}
	return(_skin);
}