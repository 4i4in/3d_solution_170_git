function exe_create_cam_menu()
{
	var _this_menu = [];
	
	if menus.cam_menu.minimised > 0	//minimsed
		{
			var _menu_xsize = 3;	var _menu_ysize = 0.5;
			var _xref = menus.cam_menu.xref;	
			var _yref = menus.cam_menu.yref;
	
			var _tsize = control_array.tile_size;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.cam_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "cam_menu"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.cam_menu"];	
			var _info = "info cam_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_expand";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.cam_menu"];	var _info = "expand by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
		}
	else
		{
			var _menu_xsize = menus.cam_menu.menu_xsize;	var _menu_ysize = menus.cam_menu.menu_ysize;
			var _xref = menus.cam_menu.xref;	
			var _yref = menus.cam_menu.yref;
	
			var _tsize = control_array.tile_size;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.cam_menu"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "cam_menu"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.cam_menu"];		
			var _info = "info cam_menu";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_minimise";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.cam_menu"];	var _info = "minimise by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			
			//info_labels
			_xref += _button_size[0]+0.5;
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "<<"; var _lclick = "exe_change_show_cam"; var _rclick = "show_rclick_info"; var _carry = [-1];	var _info = "choose previous cam";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "cam : " + string(menus.cam_menu.show_cam); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current cam";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ">>"; var _lclick = "exe_change_show_cam"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "choose next cam";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			//page_labels
			_xref = _restricted[0];
			_yref += _button_size[1] +0.1;
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "<<"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["cam_menu","show_page1",-1];	var _info = "choose previous page";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "page : " + string(menus.cam_menu.show_page1[0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current show_page1";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ">>"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["cam_menu","show_page1",1];	var _info = "choose next page";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			
			//variable for pages
			var _cam_n = "cam"+string(menus.cam_menu.show_cam);
			var _cam_st = cam_struct[$ _cam_n];
							
							
			//pages
			switch(menus.cam_menu.show_page1[0])
				{
//===========================================page
					case 0:
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "raw matrix"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "v_submit"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "nothing";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0] +0.1;
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "X"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "Y"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "Z"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "cam pos"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0] +0.1;
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camx); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camy); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camz); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
			
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "target"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0] +0.1;
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camtox); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camtoy); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camtoz); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
			
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "up vec"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0] +0.1;
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camxup); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camyup); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camzup); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "fwd vec"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0] +0.1;
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camxF); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camyF); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camzF); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
			
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "R vec"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0] +0.1;
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camxR); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camyR); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = string(_cam_st.camzR); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.3;
							var _button_size = [1,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "CamMat"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							var _keep_xref = _xref;
							for(var _ii = 0; _ii < array_length(_cam_st.CamMat); _ii++)
								{
									_xref += _button_size[0]+0.1;
									var _button_size = [1,0.5];
									var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
									var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
									var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
									var _btext = string(_cam_st.CamMat[_ii]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
									var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
									array_push(_this_menu,_button);
					
									if (_ii+1) mod 4 == 0	{	_xref = _keep_xref; _yref += _button_size[1]+0.1;	};
								}
					
						break;
//===========================================page
					case 1:
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "cam values"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "look at distance : " + string(_cam_st.cam_lookat_dist); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "fov : " + string(_cam_st.fov); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0] + 0.1;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "aspect : " + string(_cam_st.aspect); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref = _restricted[0];
							_yref += _button_size[1] + 0.1;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "znear : " + string(_cam_st.znear); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0] + 0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "zfar : " + string(_cam_st.zfar); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.3;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "chunkX : " + string(_cam_st.in_chunk._x); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "chunkY : " + string(_cam_st.in_chunk._y); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "chunkZ : " + string(_cam_st.in_chunk._z); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//unused
							_xref = _restricted[0];
							_yref += _button_size[1] +0.3;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "pitch : " + string(_cam_st.pitch); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "yaw : " + string(_cam_st.yaw); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "tilt : " + string(_cam_st.tilt); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
						
						break;
//===========================================page
					case 2:
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [2,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "old settings"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							
							_xref = _restricted[0];
							_yref += _button_size[1] + 0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "show geometry : " + string(_cam_st.show.geometry); var _lclick = "exe_switch_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["show","geometry"];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "show coliders : " + string(_cam_st.show.coliders); var _lclick = "exe_switch_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["show","coliders"];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
			
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "show helpers : " + string(_cam_st.show.helpers); var _lclick = "exe_switch_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["show","helpers"];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "wrap world : " + string(_cam_st.show.world_wrap); var _lclick = "exe_switch_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["show","world_wrap"];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref = _restricted[0];
							_yref += _button_size[1] + 0.1;
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_perspective_mod"; var _rclick = "show_rclick_info"; var _carry = [-0.01];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "p_mod : " + string(_cam_st.perspective_mod); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_perspective_mod"; var _rclick = "show_rclick_info"; var _carry = [0.01];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
			
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_perspective_range"; var _rclick = "show_rclick_info"; var _carry = [-100.];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "p_range : " + string(_cam_st.perspective_range); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
			
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_perspective_range"; var _rclick = "show_rclick_info"; var _carry = [100.];	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							var _curent_shader = _cam_st.throw_colisions_helpers;
							
							_xref = _restricted[0];
							_yref += _button_size[1]+0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "collsion helpers : " + string(_cam_st.throw_colisions_helpers[0]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["throw_colisions_helpers",0,-1,""];	var _info = "only cam1";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
					
						break;
//===========================================page
					case 3:
					
							var _curent_shader = _cam_st.shader_draw_grid;
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "draw grid shader"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
						
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "grid on : " + string(_curent_shader[0]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",0,-1,""];	var _info = "shader_draw_grid";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//X spacing
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",1,-1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "X spacing : " + string(_curent_shader[1]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",1,100,"reset"];	var _info = "shader_draw_grid";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",1,1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//Yspacing
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",2,-1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "Y spacing : " + string(_curent_shader[2]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",2,100,"reset"];	var _info = "shader_draw_grid";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",2,1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//Z spacing
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",3,-1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "Z spacing : " + string(_curent_shader[3]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",3,100,"reset"];	var _info = "shader_draw_grid";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",3,1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							
							//X treshold
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",4,-0.1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "X treshold : " + string(_curent_shader[4]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",4,1,"reset"];	var _info = "shader_draw_grid";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",4,.1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//Y treshold
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",5,-0.1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "Y treshold : " + string(_curent_shader[5]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",5,1,"reset"];	var _info = "shader_draw_grid";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",5,.1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							
							//Z treshold
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",6,-0.1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "Z treshold : " + string(_curent_shader[6]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",6,0.5,"reset"];	var _info = "shader_draw_grid";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_draw_grid",6,.1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
						break;
//===========================================page
					case 4:
							var _curent_shader = _cam_st.shader_blur_distance;
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "blur distance shader"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "shader on : " + string(_curent_shader[0]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",0,-1,""];	var _info = "shader_draw_grid";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "blur on : " + string(_curent_shader[1]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",1,-1,""];	var _info = "shader_draw_grid";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//treshold
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",2,-1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "treshold : " + string(_curent_shader[2]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",2,100,"reset"];	var _info = "shader_blur_distance";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",2,1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//distance limit
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",3,-16,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "distance limit : " + string(_curent_shader[3]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",3,1024,"reset"];	var _info = "shader_blur_distance";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",3,16,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//blur range
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",4,-1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "max blur range : " + string(_curent_shader[4]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",4,8,"reset"];	var _info = "shader_blur_distance";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",4,1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//shades on off
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "shades on : " + string(_curent_shader[5]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",5,-1,""];	var _info = "shader_draw_grid";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//_color_mul_min
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",6,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "color mul min : " + string(_curent_shader[6]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",6,0.8,"reset"];	var _info = "shader_blur_distance";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",6,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//_color_mul_max
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",7,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "color mul max : " + string(_curent_shader[7]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",7,1.2,"reset"];	var _info = "shader_blur_distance";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",7,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//_treshold_dist2
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",8,-1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "treshold : " + string(_curent_shader[8]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",8,256.,"reset"];	var _info = "shader_blur_distance";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",8,1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//_shade_step1
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",9,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "shade step1 : " + string(_curent_shader[9]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",9,0.25,"reset"];	var _info = "shader_blur_distance";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",9,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//_shade_step2
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",10,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "shade step2 : " + string(_curent_shader[10]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",10,0.75,"reset"];	var _info = "shader_blur_distance";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",10,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//max shade range
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",11,-1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "shade range : " + string(_curent_shader[11]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",11,3,"reset"];	var _info = "shader_blur_distance";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_blur_distance",11,1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							
							
						break;
//===========================================page
					case 5:
							var _curent_shader = _cam_st.shader_outlines;
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "outline shader"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "outlines on : " + string(_curent_shader[0]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_outlines",0,-1,""];	var _info = "shader_outlines";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//distance
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_outlines",1,-16,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "distance mul : " + string(_curent_shader[1]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_outlines",1,1024,"reset"];	var _info = "shader_outlines";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_outlines",1,16,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//treshold
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_outlines",2,-1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "treshold : " + string(_curent_shader[2]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_outlines",2,32,"reset"];	var _info = "shader_outlines";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_outlines",2,1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//max line thicknes
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_outlines",3,-1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "max l thicknes : " + string(_curent_shader[3]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_outlines",3,4,"reset"];	var _info = "shader_outlines";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_outlines",3,1,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
						break;
//===========================================page
					case 6:
							var _curent_shader = _cam_st.shader_sol_pos;
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "sol_1 "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//sol x pos
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_pos",0,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "Sol_1 X pos : " + string(_curent_shader[0]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_pos",0,0.,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_pos",0,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//sol y pos
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_pos",1,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "Sol_1 Y pos : " + string(_curent_shader[1]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_pos",1,0.,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_pos",1,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//sol z pos
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_pos",2,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "Sol_1 Z pos : " + string(_curent_shader[2]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_pos",2,-1.,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_pos",2,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							var _curent_shader = _cam_st.shader_sol_col;
							
							//sol r color
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_col",0,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "Sol_1 Red : " + string(_curent_shader[0]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_col",0,1.,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_col",0,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//sol g color
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_col",1,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "Sol_1 Green : " + string(_curent_shader[1]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_col",1,1.,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_col",1,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//sol b color
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_col",2,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "Sol_1 Blue : " + string(_curent_shader[2]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_col",2,1.,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["shader_sol_col",2,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							var _curent_shader = _cam_st.ambient_NdotL;
							
							//ambient_NdotL min
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_NdotL",0,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "ambient NdotL min : " + string(_curent_shader[0]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_NdotL",0,-1.,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_NdotL",0,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//ambient_NdotL max
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_NdotL",1,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "ambient NdotL max : " + string(_curent_shader[1]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_NdotL",1,1.,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_NdotL",1,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//low pass
							var _curent_shader = _cam_st.NdotL_lowpass;
							
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "NdotL lowpass : " + string(_curent_shader[0]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["NdotL_lowpass",0,1.,"reset"];	var _info = "NdotL_lowpass";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//low pass min
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["NdotL_lowpass",1,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "low pass min : " + string(_curent_shader[1]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["NdotL_lowpass",1,-.3,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["NdotL_lowpass",1,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//low pass max
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["NdotL_lowpass",2,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "low pass max : " + string(_curent_shader[2]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["NdotL_lowpass",2,0.3,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["NdotL_lowpass",2,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//low pass mul
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["NdotL_lowpass",3,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "low pass mul : " + string(_curent_shader[3]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["NdotL_lowpass",3,.5,"reset"];	var _info = "if min max diff is < low pass mul";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["NdotL_lowpass",3,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							
							var _curent_shader = _cam_st.ambient_mul;
							
							//ambient_mul for dark vision blinding in light
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_mul",0,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "NdotL mul : " + string(_curent_shader[0]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_mul",0,1.,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_mul",0,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//ambient_mul trugger, for dark vision blinding in light
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "NdotL rev trigger : " + string(_curent_shader[1]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_mul",1,1.,""];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//ambient_mul treshold for dark vision blinding in light
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_mul",2,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "blind treshold : " + string(_curent_shader[2]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_mul",2,0.,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_mul",2,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							//ambient_mul forced value if blinded for dark vision blinding in light
							_xref = _restricted[0];
							_yref += _button_size[1];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "<<"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_mul",3,-0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [4,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "blinding value : " + string(_curent_shader[3]); var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_mul",3,1.,"reset"];	var _info = "s0l1 control";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
							_xref += _button_size[0];
							var _button_size = [0.5,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = ">>"; var _lclick = "exe_change_shader_settings_in_cam"; var _rclick = "show_rclick_info"; var _carry = ["ambient_mul",3,0.01,""];;	var _info = "choose next cam";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							
						break;
//===========================================page
				}
		}
	
	return(_this_menu);
}