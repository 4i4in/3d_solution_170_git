function exe_return_controller(_controler_settings)
{
	var _push_controler = -1;
	switch(_controler_settings)
		{
			case "none":								_push_controler = exe_return_no_control();	break;
			case "mouse_keyboard":						_push_controler = exe_return_mouse_keyboard_control();	break;
			case "pad0":								_push_controler = exe_return_pad_control(0);	break;
			case "pad1":								_push_controler = exe_return_pad_control(1);	break;
			
		}
		
	if !is_struct(_push_controler){		_push_controler = exe_return_no_control();};//no controls
	return(_push_controler);
}