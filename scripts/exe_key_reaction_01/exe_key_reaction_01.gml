function exe_key_reaction_01()
{
	//keyboard_struct
	keyboard_struct.Q = keyboard_check(ord("Q"));
	keyboard_struct.W = keyboard_check(ord("W"));
	keyboard_struct.E = keyboard_check(ord("E"));
	keyboard_struct.R = keyboard_check(ord("R"));
	keyboard_struct.T = keyboard_check(ord("T"));
	keyboard_struct.Y = keyboard_check(ord("Y"));
	keyboard_struct.U = keyboard_check(ord("U"));
	keyboard_struct.I = keyboard_check(ord("I"));
	keyboard_struct.O = keyboard_check(ord("O"));
	keyboard_struct.P = keyboard_check(ord("P"));
	
	keyboard_struct.A = keyboard_check(ord("A"));
	keyboard_struct.S = keyboard_check(ord("S"));
	keyboard_struct.D = keyboard_check(ord("D"));
	keyboard_struct.F = keyboard_check(ord("F"));
	keyboard_struct.G = keyboard_check(ord("G"));
	keyboard_struct.H = keyboard_check(ord("H"));
	keyboard_struct.J = keyboard_check(ord("J"));
	keyboard_struct.K = keyboard_check(ord("K"));
	keyboard_struct.L = keyboard_check(ord("L"));
	
	keyboard_struct.Z = keyboard_check(ord("Z"));
	keyboard_struct.X = keyboard_check(ord("X"));
	keyboard_struct.C = keyboard_check(ord("C"));
	keyboard_struct.V = keyboard_check(ord("V"));
	keyboard_struct.B = keyboard_check(ord("B"));
	keyboard_struct.N = keyboard_check(ord("N"));
	keyboard_struct.M = keyboard_check(ord("M"));
	
	keyboard_struct._1 = keyboard_check(ord("1"));
	keyboard_struct._2 = keyboard_check(ord("2"));
	keyboard_struct._3 = keyboard_check(ord("3"));
	keyboard_struct._4 = keyboard_check(ord("4"));
	keyboard_struct._5 = keyboard_check(ord("5"));
	keyboard_struct._6 = keyboard_check(ord("6"));
	keyboard_struct._7 = keyboard_check(ord("7"));
	keyboard_struct._8 = keyboard_check(ord("8"));
	keyboard_struct._9 = keyboard_check(ord("9"));
	keyboard_struct._0 = keyboard_check(ord("0"));
	
	if keyboard_check(vk_f1)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.F1 = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
			exe_switch_load_to_screen(["menus_menu","load_to_screen"]);	
		}
	else	{keyboard_struct.F1 = 0;}
	
	if keyboard_check(vk_f2)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.F2 = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.F2 = 0;}
	
	if keyboard_check(vk_f3)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.F3 = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.F3 = 0;}
	
	if keyboard_check(vk_f4)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.F4 = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.F4 = 0;}
	
	if keyboard_check(vk_f5)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.F5 = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.F5 = 0;}
	
	if keyboard_check(vk_f6)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.F6 = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.F6 = 0;}
	
	if keyboard_check(vk_f7)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.F7 = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.F7 = 0;}
	
	if keyboard_check(vk_f8)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.F8 = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.F8 = 0;}
	
	if keyboard_check(vk_f9)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.F9 = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
			keyboard_struct.writing_on = !keyboard_struct.writing_on;
		}
	else	{keyboard_struct.F9 = 0;}
	
	if keyboard_check(vk_f10)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.F10 = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.F10 = 0;}
	
	if keyboard_check(vk_f11)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.F11 = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
			game_restart();
		}
	else	{keyboard_struct.F11 = 0;}
	
	if keyboard_check(vk_f12)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.F12 = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
			game_end();
		}
	else	{keyboard_struct.F12 = 0;}
	
	
	
	
	if keyboard_check(vk_enter)
		{
			keyboard_struct.ENTER = 1;
		}
	else	{keyboard_struct.ENTER = 0;}
	
	if keyboard_check(vk_escape)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.ESC = 1;
		}
	else	{keyboard_struct.ESC = 0;}
	
	if keyboard_check(vk_shift)
		{
			keyboard_struct.SHIFT = 1;
		}
	else	{keyboard_struct.SHIFT = 0;}
	
	if keyboard_check(vk_lshift)
		{
			keyboard_struct.LSHIFT = 1;
		}
	else	{keyboard_struct.LSHIFT = 0;}
	
	if keyboard_check(vk_rshift)
		{
			keyboard_struct.RSHIFT = 1;
		}
	else	{keyboard_struct.RSHIFT = 0;}
	
	if keyboard_check(vk_control)	&&	!keyboard_check(vk_ralt)
		{
			keyboard_struct.CONTROL = 1;
		}
	else	{keyboard_struct.CONTROL = 0;}
	
	if keyboard_check(vk_lcontrol)	&&	!keyboard_check(vk_ralt)
		{
			keyboard_struct.LCTRL = 1;
		}
	else	{keyboard_struct.LCTRL = 0;}
	
	if keyboard_check(vk_rcontrol)
		{
			keyboard_struct.RCTRL = 1;
		}
	else	{keyboard_struct.RCTRL = 0;}
	
	if keyboard_check(vk_alt)
		{
			keyboard_struct.ALT = 1;
		}
	else	{keyboard_struct.ALT = 0;}
	
	if keyboard_check(vk_lalt)
		{
			keyboard_struct.LALT = 1;
		}
	else	{keyboard_struct.LALT = 0;}
	
	if keyboard_check(vk_ralt)
		{
			keyboard_struct.RALT = 1;
			if !keyboard_check(vk_lcontrol)	{keyboard_struct.LCTRL = 0;	}
		}
	else	{keyboard_struct.RALT = 0;}
	
	if keyboard_check(vk_backspace)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.BACKSPACE = 1;
		}
	else	{keyboard_struct.BACKSPACE = 0;}
	
	if keyboard_check(vk_space)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.SPACE = 1;
		}
	else	{keyboard_struct.SPACE = 0;}
	
	if keyboard_check(vk_tab)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.TAB = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.TAB = 0;}
//===================
	if keyboard_check(vk_printscreen)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.PRTSCR = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.PRTSCR = 0;}
	
	if keyboard_check(vk_pageup)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.PGUP = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.PGUP = 0;}
	
	if keyboard_check(vk_pagedown)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.PGDWN = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.PGDWN = 0;}
	
	if keyboard_check(vk_home)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.HOME = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.HOME = 0;}
	
	if keyboard_check(vk_end)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.END = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.END = 0;}
	
	if keyboard_check(vk_pause)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.PAUSE = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.PAUSE = 0;}
	
	if keyboard_check(vk_delete)	
		{
			keyboard_struct.DEL = 1;
		}
	else	{keyboard_struct.DEL = 0;}
	
	if keyboard_check(vk_insert)	&& keyboard_struct.ktime < 0	
		{
			keyboard_struct.INS = 1;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	else	{keyboard_struct.INS = 0;}
	
	
	if keyboard_key = 20 && keyboard_struct.ktime < 0	
		{
			keyboard_struct.CAPSLOCK = !keyboard_struct.CAPSLOCK;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
	
	if keyboard_key = 145 && keyboard_struct.ktime < 0	
		{
			keyboard_struct.SCRLOCK = !keyboard_struct.SCRLOCK;	keyboard_struct.ktime = keyboard_struct.key_cool;
		}
		
	if keyboard_key = 189 && keyboard_struct.ktime < 0	
		{
			keyboard_struct._189 = 1;//sign _-
		}
	else	{keyboard_struct._189 = 0;}
	
	if keyboard_key = 191 && keyboard_struct.ktime < 0	
		{
			keyboard_struct._191 = 1;//sign ?/
		}
	else	{keyboard_struct._191 = 0;}
	
	if keyboard_check(vk_nokey)	{	keyboard_struct.key_code = 0;}
	else						{	keyboard_struct.key_code = keyboard_key;}
	
	keyboard_struct.ktime--;
	if keyboard_struct.ktime < -30	{	keyboard_struct.ktime = -1;	};
}