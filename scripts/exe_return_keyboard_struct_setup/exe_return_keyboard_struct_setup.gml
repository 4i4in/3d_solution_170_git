function exe_return_keyboard_struct_setup()
{
	var _struct =
		{
			Q : 0,	W : 0,	E : 0,	R : 0,	T : 0,	Y : 0,	U : 0,	I : 0,	O : 0,	P : 0,
			A : 0,	S : 0,	D : 0,	F : 0,	G : 0,	H : 0,	J : 0,	K : 0,	L : 0,
			Z : 0,	X : 0,	C : 0,	V : 0,	B : 0,	N : 0,	M : 0,
			F1 : 0,	F2 : 0,	F3 : 0,	F4 : 0,	F5 : 0,	F6 : 0,	F7 : 0,	F8 : 0,	F9 : 0,	F10 : 0,	F11 : 0,	F12 : 0,

			SHIFT : 0, ALT : 0, CONTROL : 0, ENTER : 0, ESC : 0,	BACKSPACE : 0,	TAB : 0,
			LSHIFT : 0,	LCTRL : 0, LALT : 0, SPACE : 0,	RALT : 0, RCTRL : 0, RSHIFT : 0,
		
			CAPSLOCK : 0, PRTSCR : 0, SCRLOCK : 0, PAUSE : 0, INS : 0, HOME : 0, PGUP : 0, DEL : 0, END : 0, PGDWN : 0,
		
			_1 : 0, _2 : 0, _3 : 0,	_4 : 0, _5 : 0, _6 : 0, _7 : 0, _8 : 0, _9 : 0, _0 : 0,
		
			_189 : 0,	_191 : 0,
	
			key_code : 0, key_cool : 15,	ktime : -1,
		
			writing_on : 0,	writing_to : -1,	text_input : "",	illegal_sign : [],	write_default : "",	write_extension : "",
		};
	return(_struct);
}