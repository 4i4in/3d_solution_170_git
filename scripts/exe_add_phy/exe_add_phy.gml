function exe_add_phy(_controler_struct,_phy_settings)
{
	switch(_phy_settings[0])
		{
			case "no_phy":								_controler_struct = exe_return_controler_no_phy(_controler_struct,_phy_settings);	break;
			case "inertial_move":						_controler_struct = exe_return_controler_inertial_move(_controler_struct,_phy_settings);	break;
			case "humanoid_sceleton":					_controler_struct = exe_return_controler_humanoid_sceleton(_controler_struct,_phy_settings);	break;
		}
		
	if !is_struct(_controler_struct){		_controler_struct = exe_return_no_control();};//no controls
	return(_controler_struct);
}