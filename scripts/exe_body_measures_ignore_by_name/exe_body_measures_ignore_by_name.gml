function exe_body_measures_ignore_by_name(_p_name)
{
	var _ignore = 0;
	switch(_p_name)
		{
			case "main_part":	case "helmet_01":	case "visor_01":	case "jaw_01":	case "scabbard_L_01":
			case "sword_L_01":	case "scabbard_L_02":	case "sword_L_02":	case "scabbard_R_01":	case "sword_R_01":
			case "axe_R_01":	case "tool_L_01":	case "tool_R_01":	case "in_L_higshoe":	case "in_R_higshoe":
			case "shield_01":	case "shield_02":
				_ignore++;	break;
		}
	return(_ignore);
}