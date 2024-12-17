function exe_secondary_mouse_reaction_01()
{
	if array_length(mouse_struct.func_carry) > 0
		{
			switch(mouse_struct.func_carry[0])
				{
					case "move_menu_by_click":
						if mouse_struct.mlbutt > 0	&&	(game_time - mouse_struct.func_carry[1]) < 2
							{
								var _carry = [mouse_struct.func_carry[2],mouse_struct.func_carry[3],mouse_struct.func_carry[4]];
								exe_move_menu_by_click(_carry);
								mouse_struct.mlbutt = 0;
							}
						else	{	mouse_struct.func_carry = []; exit;	};
						break;
					case "refresh_menu_again":
						var _repeat = mouse_struct.func_carry[2];
						reset_current_menu_array = 1;
						_repeat--;
						if _repeat > 0	{mouse_struct.func_carry[2] = _repeat;	}
						else	{	mouse_struct.func_carry = []; exit;	}
						break;
				}
			
		}
}