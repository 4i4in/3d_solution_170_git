function exe_create_keyboard_menu()
{
	var _this_menu = [];
	
	if menus.keyboard_menu.minimised > 0	//minimsed
		{
			var _menu_xsize = 3;	var _menu_ysize = 0.5;
			var _xref = menus.keyboard_menu.xref;	
			var _yref = menus.keyboard_menu.yref;
	
			var _tsize = control_array.tile_size;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.keyboard_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "keyboard_menu"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.keyboard_menu"];	
			var _info = "info keyboard_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_expand";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.keyboard_menu"];	var _info = "expand by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
		}
	else
		{
			var _menu_xsize = menus.keyboard_menu.menu_xsize;	var _menu_ysize = menus.keyboard_menu.menu_ysize;
			var _xref = menus.keyboard_menu.xref;	
			var _yref = menus.keyboard_menu.yref;
	
			var _tsize = control_array.tile_size;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.keyboard_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "keyboard_menu"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.keyboard_menu"];		
			var _info = "info keyboard_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_minimise";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.keyboard_menu"];	var _info = "minimise by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			

			_xref = _restricted[0];
			_yref += _button_size[1];
			var _button_size = [16,4.5];
			//info_labels
			var _string = "";
			_string += "F1 : " + string(keyboard_struct.F1);_string += " | F2 : " + string(keyboard_struct.F2);_string += " | F3 : " + string(keyboard_struct.F3);_string += " | F4 : " + string(keyboard_struct.F4);
			_string += " | F5 : " + string(keyboard_struct.F5);_string += " | F6 : " + string(keyboard_struct.F6);_string += " | F7 : " + string(keyboard_struct.F7);_string += " | F8 : " + string(keyboard_struct.F8);
			_string += " | F9 : " + string(keyboard_struct.F9);_string += " | F10 : " + string(keyboard_struct.F10);_string += " | F11 : " + string(keyboard_struct.F11);_string += " | F12 : " + string(keyboard_struct.F12);
			_string+="\n";
			
				_string += "1 : " + string(keyboard_struct._1);	_string += " | 2 : " + string(keyboard_struct._2);	_string += " | 3 : " + string(keyboard_struct._3);
			_string += " | 4 : " + string(keyboard_struct._4);	_string += " | 5 : " + string(keyboard_struct._5);	_string += " | 6 : " + string(keyboard_struct._6);
			_string += " | 7 : " + string(keyboard_struct._7);	_string += " | 8 : " + string(keyboard_struct._8);	_string += " | 9 : " + string(keyboard_struct._9);
			_string += " | 0 : " + string(keyboard_struct._0);	
			_string+="\n";
			
				_string += "Q : " + string(keyboard_struct.Q);	_string += " | W : " + string(keyboard_struct.W);	_string += " | E : " + string(keyboard_struct.E);
			_string += " | R : " + string(keyboard_struct.R);	_string += " | T : " + string(keyboard_struct.T);	_string += " | Y : " + string(keyboard_struct.Y);
			_string += " | U : " + string(keyboard_struct.U);	_string += " | I : " + string(keyboard_struct.I);	_string += " | O : " + string(keyboard_struct.O);
			_string += " | P : " + string(keyboard_struct.P);	
			_string+="\n";
			
				_string += "A : " + string(keyboard_struct.A);	_string += " | S : " + string(keyboard_struct.S);	_string += " | D : " + string(keyboard_struct.D);
			_string += " | F : " + string(keyboard_struct.F);	_string += " | G : " + string(keyboard_struct.G);	_string += " | H : " + string(keyboard_struct.H);
			_string += " | J : " + string(keyboard_struct.J);	_string += " | K : " + string(keyboard_struct.K);	_string += " | L : " + string(keyboard_struct.L);
			_string+="\n";
			
				_string += "Z : " + string(keyboard_struct.Z);	_string += " | X : " + string(keyboard_struct.X);	_string += " | C : " + string(keyboard_struct.C);
			_string += " | V : " + string(keyboard_struct.V);	_string += " | B : " + string(keyboard_struct.B);	_string += " | N : " + string(keyboard_struct.N);
			_string += " | M : " + string(keyboard_struct.M);
			_string+="\n";
			
			_string += "SHIFT : " + string(keyboard_struct.SHIFT);	_string += " | ALT : " + string(keyboard_struct.ALT);	_string += " | CONTROL : " + string(keyboard_struct.CONTROL);
			_string += " | ENTER : " + string(keyboard_struct.ENTER);	_string += " | ESC : " + string(keyboard_struct.ESC);	_string += " | BACKSPACE : " + string(keyboard_struct.BACKSPACE);
			_string += " | TAB : " + string(keyboard_struct.TAB);
			_string+="\n";
			
			_string += "LSHIFT : " + string(keyboard_struct.LSHIFT);	_string += " | LCTRL : " + string(keyboard_struct.LCTRL);	_string += " | LALT : " + string(keyboard_struct.LALT);
			_string += " | SPACE : " + string(keyboard_struct.SPACE);	_string += " | RALT : " + string(keyboard_struct.RALT);	_string += " | RCTRL : " + string(keyboard_struct.RCTRL);
			_string += " | RSHIFT : " + string(keyboard_struct.RSHIFT);	_string += " | CAPSLOCK : " + string(keyboard_struct.CAPSLOCK);
			_string+="\n";
			
			_string += "PRTSCR : " + string(keyboard_struct.PRTSCR);	_string += " | SCRLOCK : " + string(keyboard_struct.SCRLOCK);	_string += " | PAUSE : " + string(keyboard_struct.PAUSE);
			_string += " | INS : " + string(keyboard_struct.INS);	_string += " | HOME : " + string(keyboard_struct.HOME);	_string += " | PGUP : " + string(keyboard_struct.PGUP);
			_string += " | DEL : " + string(keyboard_struct.DEL);	_string += " | END : " + string(keyboard_struct.END);	_string += " | PGDWN : " + string(keyboard_struct.PGDWN);
			_string+="\n";
			
			_string += "_- : " + string(keyboard_struct._189);	_string += " | ?/ : " + string(keyboard_struct._191);
			_string+="\n";
			
			_string += "kcode : " + string(keyboard_struct.key_code);	_string += " | ktime : " + string(keyboard_struct.ktime);		_string+="\n";
			
			_string += "writing_on : " + string(keyboard_struct.writing_on);	_string += " | write_default : " + string(keyboard_struct.write_default);		_string += " | extension : " + string(keyboard_struct.write_extension);		_string+="\n";
			_string += "writing_to : " + string(keyboard_struct.writing_to);	_string+="\n";
			_string += "text_input : " + string(keyboard_struct.text_input);	_string+="\n";
			
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
			var _btext = _string; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "info test_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
		}
	
	return(_this_menu);
}