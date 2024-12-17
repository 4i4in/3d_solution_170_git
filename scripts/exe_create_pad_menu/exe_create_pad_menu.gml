function exe_create_pad_menu()
{
	var _this_menu = [];
	
	if menus.pad_menu.minimised > 0	//minimsed
		{
			var _menu_xsize = 3;	var _menu_ysize = 0.5;
			var _xref = menus.pad_menu.xref;	
			var _yref = menus.pad_menu.yref;
	
			var _tsize = control_array.tile_size;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.pad_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "pad_menu"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.pad_menu"];	var _info = "info pad_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_expand";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.pad_menu"];	var _info = "expand by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
		}
	else
		{
			var _menu_xsize = menus.pad_menu.menu_xsize;	var _menu_ysize = menus.pad_menu.menu_ysize;
			var _xref = menus.pad_menu.xref;	
			var _yref = menus.pad_menu.yref;
	
			var _tsize = control_array.tile_size;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.pad_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "pad_menu"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.pad_menu"];
			var _info = "info pad_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_minimise";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.pad_menu"];	var _info = "minimise by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			//help
			_xref += _button_size[0] +0.2;
			var _button_size = [1,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "help"; var _lclick = "exe_swich_help_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.pad_menu"];	var _info = "show/hide help";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			//info_labels
			_xref += _button_size[0] +.3;
			var _button_size = [4,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "pad count : " + string(array_length(pad_struct.pad_array)); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "number of conected pads";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0] +0.5;
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "<<"; var _lclick = "exe_change_show_pad"; var _rclick = "show_rclick_info"; var _carry = [-1];	var _info = "choose previous pad";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "pad : " + string(menus.pad_menu.show_pad); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next pad";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ">>"; var _lclick = "exe_change_show_pad"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "choose next pad";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			_yref+=0.1
			
			if menus.pad_menu.help > 0
				{
			_xref = _restricted[0];
			_yref += _button_size[1];
			var _info_string = "raw input from pad_struct.pad_array[pad_num][axis 0,buttons 1][raw_input]";
			var _button_size = [12,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
			var _btext = _info_string; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "input interpratation";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			_yref+=0.1
				}
			if array_length(pad_struct.pad_array) > 0
				{
					_xref = _restricted[0];
					_yref += _button_size[1];
					
					var _pad_arr = pad_struct.pad_array[menus.pad_menu.show_pad];
					var _axis = _pad_arr[0];
					for(var _ii = 0; _ii < array_length(_axis); _ii++)
						{
							var _value = _pad_arr[0][_ii];
							
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "ax " + string(_ii) + " : " + string(_value); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next pad";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							if _xref >= _restricted[2]
								{
									_xref = _restricted[0];
									_yref += _button_size[1];
								};
						};
					var _buttons = _pad_arr[1];
					for(var _ii = 0; _ii < array_length(_buttons); _ii++)
						{
							var _value = _pad_arr[1][_ii];
							
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "bt" + string(_ii) + ":" + string(_value); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next pad";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							if _xref >= _restricted[2]
								{
									_xref = _restricted[0];
									_yref += _button_size[1];
								};
						};
					_yref+=0.1
					
					if menus.pad_menu.help > 0
						{
					_xref = _restricted[0];
					var _info_string =	"by struct in pad_struct.pad_maping[pad_num] raw input is translated to button names;\n";
					_info_string +=		"pad_struct.pad_maping[pad_num][$ button_name] holds array with 2 entry \n";
					_info_string +=		"[axis 0 or buttons 1 from raw input at 0, raw input reference num to axis or button]\n";
					_info_string +=		"struct in pad_struct.pad_maping[pad_num] is adres holder only for given pad like:\n";
					_info_string +=		"function exe_return_logitech_F310();presetload in function exe_preset_pad_mapping();";
					
					var _button_size = [12,1.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
					var _btext = _info_string; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "input interpratation";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					_yref+=0.1
						}
					else	{_yref-=0.5;}
						
					_xref = _restricted[0];
					_yref += _button_size[1];
					var _keep_xref = _xref;
					var _keep_yref = _yref;
					var _presult_s = pad_struct.pad_result_array[menus.pad_menu.show_pad];
					
					
					//left back
					_xref = _keep_xref+1;
					_yref = _keep_yref;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "l_trig:"+string(_presult_s.l_trig); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+1;
					_yref = _keep_yref+0.5;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "l_bump:"+string(_presult_s.l_bump); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					//right back
					_xref = _keep_xref+9;
					_yref = _keep_yref;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "r_trig:"+string(_presult_s.r_trig); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+9;
					_yref = _keep_yref+0.5;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "r_bump:"+string(_presult_s.r_bump); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					
					//select button
					_xref = _keep_xref+3.3;
					_yref = _keep_yref+1.4;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "select:"+string(_presult_s.select); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					//start button
					_xref = _keep_xref+3.3+3.5;
					_yref = _keep_yref+1.4;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "start:"+string(_presult_s.start); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					
					//dpad start
					_xref = _keep_xref+1;
					_yref = _keep_yref+1.5;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "dpad_up:"+string(_presult_s.dpad_up); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+1;
					_yref = _keep_yref+2.5;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "dpad_down:"+string(_presult_s.dpad_down); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref;
					_yref = _keep_yref+2;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "dpad_left:"+string(_presult_s.dpad_left); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+2;
					_yref = _keep_yref+2;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "dpad_right:"+string(_presult_s.dpad_right); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					//dpad end
					
					
					//bt start
					_xref = _keep_xref+1+8;
					_yref = _keep_yref+1.5;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "bt_Y:"+string(_presult_s.bt_Y); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+1+8;
					_yref = _keep_yref+2.5;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "bt_A:"+string(_presult_s.bt_A); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+8;
					_yref = _keep_yref+2;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "bt_X:"+string(_presult_s.bt_X); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+2+8;
					_yref = _keep_yref+2;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "bt_B:"+string(_presult_s.bt_B); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					//bt end
					
					//left leftjoyP
					_xref = _keep_xref+3.5;
					_yref = _keep_yref;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "leftjoyP:"+string(_presult_s.leftjoyP); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+3.5;
					_yref = _keep_yref+0.5;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "leftjoyX:"+string(_presult_s.leftjoyX); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+3.5;
					_yref = _keep_yref+1;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "leftjoyY:"+string(_presult_s.leftjoyY); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					
					_xref = _keep_xref+3.5;
					_yref = _keep_yref+2.6;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "leftjoy_l:"+string(_presult_s.leftjoy_l); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+3.5-2;
					_yref = _keep_yref+3.1;
					var _button_size = [4,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "leftjoy_dir:"+string(_presult_s.leftjoy_dir); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					//right rightjoyP
					_xref = _keep_xref+3.5+3;
					_yref = _keep_yref;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "rightjoyP:"+string(_presult_s.rightjoyP); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+3.5+3;
					_yref = _keep_yref+0.5;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "rightjoyX:"+string(_presult_s.rightjoyX); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+3.5+3;
					_yref = _keep_yref+1;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "rightjoyY:"+string(_presult_s.rightjoyY); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					
					_xref = _keep_xref+3.5+3;
					_yref = _keep_yref+2.6;
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "rightjoy_l:"+string(_presult_s.rightjoy_l); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref = _keep_xref+3.5+3;
					_yref = _keep_yref+3.1;
					var _button_size = [4,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "rightjoy_dir:"+string(_presult_s.rightjoy_dir); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					if menus.pad_menu.help > 0
						{
					_xref = _restricted[0];
					_yref = _keep_yref+3.5;
					var _info_string =	"function exe_pad_reaction_01() in step event grab raw input to use in:\n"
					_info_string +=		"function exe_pad_interpretation_01() storing results in:\n";
					_info_string +=		"pad_struct.pad_result_array[pad_num][$ _key]; right/leftjoy_dir hold result in:\n";
					_info_string +=		"pad_struct.pad_result_array[pad_num][$ _key][0], entry 1,2 holds multipler for\n";
					_info_string +=		"axis by 1 or -1(reversed) like Y; right/leftjoy_l holds strength on joystick and if\n";
					_info_string +=		"is lower then right/left_dz (dead zone) input for axis is nullified\n";
					var _button_size = [12,2.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
					var _btext = _info_string; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "input interpratation";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
						}
				}
			else
				{
					_xref = _restricted[0];
					_yref += _button_size[1];
					var _button_size = [4,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "no gamepad is conected"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "check cables?";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
			
			
		}
	
	return(_this_menu);
}