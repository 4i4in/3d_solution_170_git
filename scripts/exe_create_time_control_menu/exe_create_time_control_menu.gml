function exe_create_time_control_menu()
{
	var _this_menu = [];
	
	if menus.time_control_menu.minimised > 0	//minimsed
		{
			var _menu_xsize = 4;	var _menu_ysize = 0.5;
			var _xref = menus.time_control_menu.xref;	
			var _yref = menus.time_control_menu.yref;
	
			var _tsize = control_array.tile_size;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.time_control_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [3,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x192_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "time_control_menu"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.time_control_menu"];	
			var _info = "info mouse_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_expand";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.time_control_menu"];	var _info = "expand by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
		}
	else
		{
			var _menu_xsize = menus.time_control_menu.menu_xsize;	var _menu_ysize = menus.time_control_menu.menu_ysize;
			var _xref = menus.time_control_menu.xref;	
			var _yref = menus.time_control_menu.yref;
	
			var _tsize = control_array.tile_size;
			
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.time_control_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [3,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x192_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "time_control_menu"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.time_control_menu"];		
			var _info = "info mouse_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_minimise";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.time_control_menu"];	var _info = "minimise by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref = _restricted[0];
			_yref += _button_size[1];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "play : " + string(menus.time_control_menu.pause); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "play or pausing";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			if menus.time_control_menu.pause == 0
				{
					_xref += _button_size[0];
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
					var _btext = ">"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "play normal;";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref += _button_size[0] +0.1;
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "||"; var _lclick = "exe_time_control_pause"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "pause;";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
			else
				{
					_xref += _button_size[0];
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
					var _btext = "||"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "pause;";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref += _button_size[0] +0.1;
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = ">|"; var _lclick = "exe_time_control_pause"; var _rclick = "show_rclick_info"; var _carry = [2];	var _info = "play to next step;";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref += _button_size[0] +0.1;
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = ">"; var _lclick = "exe_time_control_pause"; var _rclick = "show_rclick_info"; var _carry = [0];	var _info = "play normal;";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref += _button_size[0] +1;
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "-"; var _lclick = "exe_time_control_menu_click_speed"; var _rclick = "show_rclick_info"; var _carry = [-1];	var _info = "click_speed-;";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref += _button_size[0];
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "click_t : " + string(menus.time_control_menu.click_speed); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [0];	var _info = "click_speed for playing;";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref += _button_size[0];
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "+"; var _lclick = "exe_time_control_menu_click_speed"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "click_speed+;";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
				
			_yref += 0.1;	
			if array_length(menus.time_control_menu.activity_control) < 1	{	menus.time_control_menu.activity_control = exe_grab_controled_activity()};
			
			_xref = _restricted[0];
			_yref += _button_size[1];
			var _button_size = [4,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "d(t) : " + string(abs(menus.time_control_menu.frame_time)) + " ms of 16.7"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "play or pausing";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref = _restricted[0];
			_yref += _button_size[1];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "reset"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "play or pausing";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			menus.time_control_menu.obj_list_bar[1] = array_length(menus.time_control_menu.activity_control);
			var _al_start = menus.time_control_menu.obj_list_bar[0];
			var _al_end = menus.time_control_menu.obj_list_bar[0] + menus.time_control_menu.obj_list_bar[2];
			_xref += 2.5;
			
			if menus.time_control_menu.obj_list_bar[0] < 1
				{
					_xref += _button_size[0] + 0.7;
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "-"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "cycle list up is max";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
			else
				{
					_xref += _button_size[0] + 0.7;
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "-"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["time_control_menu","obj_list_bar",-1,"fast"];	var _info = "cycle list up";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
			if _al_end > array_length(menus.time_control_menu.activity_control)-1
				{
					_xref += _button_size[0];
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "+"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "cycle list down is max";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
			else
				{
					_xref += _button_size[0];
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "+"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["time_control_menu","obj_list_bar",1,"fast"];	var _info = "cycle list down";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
			
			
			_yref += 0.1;
			
			_xref = _restricted[0];
			_yref += _button_size[1];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "name"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "play or pausing";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "hash"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "play normal;";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [1,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "active"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "play normal;";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [1,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "always"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "play normal;";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [1,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "steps"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "play normal;";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_yref += 0.1;
			
			for(var _tac = _al_start; _tac < _al_end; _tac++)
				{
					if _tac < 1
						{
							_xref = _restricted[0];
							_yref += _button_size[1]-0.2;
							var _button_size = [8,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "=========== obj list start ==========="; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
						}
						
					if _tac > -1	&& _tac < array_length(menus.time_control_menu.activity_control)
						{
							var _cobj = menus.time_control_menu.activity_control[_tac];
					
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = _cobj[0]; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "play or pausing";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = _cobj[1]; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "play normal;";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = _cobj[2]; var _lclick = "exe_activity_control"; var _rclick = "show_rclick_info"; var _carry = [_tac,2];	var _info = "play normal;";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = _cobj[3]; var _lclick = "exe_activity_control"; var _rclick = "show_rclick_info"; var _carry = [_tac,3];	var _info = "play normal;";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = _cobj[4]; var _lclick = "exe_activity_control"; var _rclick = "show_rclick_info"; var _carry = [_tac,4];	var _info = "play normal;";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
						}
					if _tac > array_length(menus.time_control_menu.activity_control)-2
						{
							_xref = _restricted[0];
							_yref += _button_size[1]+0.2;
							var _button_size = [8,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "=========== obj list end ===========\n=click on -/+ to navigate up/down the list="; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
						}
					else if _tac == _al_end -1
						{
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [8,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "=click on -/+ to navigate up/down the list="; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
						}
				}
		}
	
	return(_this_menu);
}