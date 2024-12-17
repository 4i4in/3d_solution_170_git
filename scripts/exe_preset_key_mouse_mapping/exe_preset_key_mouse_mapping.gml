function exe_preset_key_mouse_mapping()
{
	var _pad_map_struct =
		{
			Lscreen : ["mouse_struct","Lscreen"],	Rscreen : ["mouse_struct","Rscreen"],
			Tscreen : ["mouse_struct","Tscreen"],	Bscreen : ["mouse_struct","Bscreen"],
			wUD : ["mouse_struct","wUD"],
			mlbutt : ["mouse_struct","mlbutt"],	midbutt : ["mouse_struct","midbutt"],	mrbutt : ["mouse_struct","mrbutt"],
			
			Q : ["keyboard_struct","Q"],	W : ["keyboard_struct","W"],	E : ["keyboard_struct","E"],
			R : ["keyboard_struct","R"],	T : ["keyboard_struct","T"],	Y : ["keyboard_struct","Y"],
			U : ["keyboard_struct","U"],	I : ["keyboard_struct","I"],	O : ["keyboard_struct","O"],	P : ["keyboard_struct","P"],
			
			A : ["keyboard_struct","A"],	S : ["keyboard_struct","S"],	D : ["keyboard_struct","D"],
			F : ["keyboard_struct","F"],	G : ["keyboard_struct","G"],	H : ["keyboard_struct","H"],
			J : ["keyboard_struct","J"],	K : ["keyboard_struct","K"],	L : ["keyboard_struct","L"],
			
			Z : ["keyboard_struct","Z"],	X : ["keyboard_struct","X"],	C : ["keyboard_struct","C"],
			V : ["keyboard_struct","V"],	B : ["keyboard_struct","B"],	N : ["keyboard_struct","N"],	M : ["keyboard_struct","M"],
			
			F1 : ["keyboard_struct","F1"],	F2 : ["keyboard_struct","F2"],		F3 : ["keyboard_struct","F3"],		F4 : ["keyboard_struct","F4"],
			F5 : ["keyboard_struct","F5"],	F6 : ["keyboard_struct","F6"],		F7 : ["keyboard_struct","F7"],		F8 : ["keyboard_struct","F8"],
			F9 : ["keyboard_struct","F9"],	F10 : ["keyboard_struct","F10"],	F11 : ["keyboard_struct","F11"],	F12 : ["keyboard_struct","F12"],
			
			_1 : ["keyboard_struct","_1"],	_2 : ["keyboard_struct","_2"],	_3 : ["keyboard_struct","_3"],	_4 : ["keyboard_struct","_4"],
			_5 : ["keyboard_struct","_5"],	_6 : ["keyboard_struct","_6"],	_7 : ["keyboard_struct","_7"],	_8 : ["keyboard_struct","_8"],
			_9 : ["keyboard_struct","_9"],	_0 : ["keyboard_struct","_0"],	
			
			Q : ["keyboard_struct","Q"],	E : ["keyboard_struct","E"],
			A : ["keyboard_struct","A"],	D : ["keyboard_struct","D"],	
			W : ["keyboard_struct","W"],	S : ["keyboard_struct","S"],
			
			SHIFT : ["keyboard_struct","SHIFT"],	ALT : ["keyboard_struct","ALT"],	CONTROL : ["keyboard_struct","CONTROL"],
			ENTER : ["keyboard_struct","ENTER"],	ESC : ["keyboard_struct","ESC"],	BACKSPACE : ["keyboard_struct","BACKSPACE"],	TAB : ["keyboard_struct","TAB"],
			
			LSHIFT : ["keyboard_struct","LSHIFT"],	LCTRL : ["keyboard_struct","LCTRL"],	LALT : ["keyboard_struct","LALT"],
			SPACE : ["keyboard_struct","SPACE"],	RALT : ["keyboard_struct","RALT"],		RCTRL : ["keyboard_struct","RCTRL"],		RSHIFT : ["keyboard_struct","RSHIFT"],
			
			CAPSLOCK : ["keyboard_struct","CAPSLOCK"],	PRTSCR : ["keyboard_struct","PRTSCR"],	SCRLOCK : ["keyboard_struct","SCRLOCK"],
			PAUSE : ["keyboard_struct","PAUSE"],		INS : ["keyboard_struct","INS"],		HOME : ["keyboard_struct","HOME"],
			PGUP : ["keyboard_struct","PGUP"],			DEL : ["keyboard_struct","DEL"],		END : ["keyboard_struct","END"],			PGDWN : ["keyboard_struct","PGDWN"],
			
			
		};
	return(_pad_map_struct);
}