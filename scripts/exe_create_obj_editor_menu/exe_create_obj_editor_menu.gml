function exe_create_obj_editor_menu()
{
	var _this_menu = [];
	
	if menus.obj_editor.minimised > 0	//minimsed
		{
			var _menu_xsize = 3;	var _menu_ysize = 0.5;
			var _xref = menus.obj_editor.xref;	
			var _yref = menus.obj_editor.yref;
	
			var _tsize = control_array.tile_size;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.obj_editor"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "obj editor"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.obj_editor"];	var _info = "info obj_editor";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_expand";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.obj_editor"];	var _info = "expand by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
		}
	else
		{
			var _menu_xsize = menus.obj_editor.menu_xsize;	var _menu_ysize = menus.obj_editor.menu_ysize;
			var _xref = menus.obj_editor.xref;	
			var _yref = menus.obj_editor.yref;
	
			var _tsize = control_array.tile_size;
			
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.obj_editor"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "obj editor"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.obj_editor"];
			var _info = "info obj_editor";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_minimise";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.obj_editor"];	var _info = "minimise by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0]+1;
			var _button_size = [4,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "select obj by mouse : " + string(menus.obj_editor.select_by_mouse); var _lclick = "exe_obj_editor_01_switch"; var _rclick = "show_rclick_info"; var _carry = ["select_by_mouse"];	var _info = "selection on screen by mouse click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			var _selected_object_type = menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]];
			
			//safet check return corect obj num;
			var _carry = ["obj_editor","obj_num",0];
			exe_change_obj_in_editor_menu(_carry);
			
			//page_labels object type
			_xref = _restricted[0];
			_yref += _button_size[1] +0.1;
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "<<"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","show_page1",-1];	var _info = "choose previous page";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [4,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = string(_selected_object_type); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current show_page1";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ">>"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","show_page1",1];	var _info = "choose next page";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			//obj nr
			_xref += _button_size[0] + 0.1;
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "<<"; var _lclick = "exe_change_obj_in_editor_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","obj_num",-1];	var _info = "choose previous obj";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "obj : " + string(menus.obj_editor.obj_num); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current object";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ">>"; var _lclick = "exe_change_obj_in_editor_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","obj_num",1];	var _info = "choose next obj";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);

			if menus.obj_editor.obj_num > -1
				{
					var _obj = map3d[$ _selected_object_type][menus.obj_editor.obj_num];
					var _part_ammount = array_length(_obj.part_naming);
					menus.obj_editor.show_page2[1] = _part_ammount -1; //set max page number for part ammount insed obj
					if menus.obj_editor.show_page2[0] > menus.obj_editor.show_page2[1]	{menus.obj_editor.show_page2[0] = 0;}//reset if amount excseded
					
					//writable file_name
					var _writable = 0;
					if	keyboard_struct.writing_on > 0	&&	keyboard_struct.writing_to[0] == "obj_editor_S1_S2"
						{if keyboard_struct.writing_to[1] == "character_sheet"{if keyboard_struct.writing_to[2] == "name"	{	_writable	= 1;}}};
					if 	_writable > 0
						{
							var _str_cariage = "";
							if game_time mod 50 > 25	{_str_cariage = "_"}
										
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.75];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_48x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "obj name : " + "\n" + string(keyboard_struct.text_input) + string(_str_cariage) + string(keyboard_struct.write_extension); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
						}
					else
						{
							_xref = _restricted[0];
							_yref += _button_size[1] +0.1;
							var _button_size = [4,0.75];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_48x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = "obj name : " + "\n" + string(_obj.character_sheet.name); var _lclick = "exe_start_typing_and_return"; var _rclick = "show_rclick_info"; var _carry = [["obj_editor_S1_S2","character_sheet","name"],	["illegal_signs"],	"",_obj.character_sheet.name];	var _info = "page label";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
						};
					
					_xref += _button_size[0];
					var _button_size = [4,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "hash : " + string(_obj.character_sheet.hash); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current show_page1";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
			
					//page_labels obj nr /name
					_xref = _restricted[0];
					_yref += _button_size[1] +0.26;
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "<<"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","show_page2",-1];	var _info = "choose previous page";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
			
			//editing
					//writable part_name
					var _writable = 0;
					if	keyboard_struct.writing_on > 0	&&	keyboard_struct.writing_to[0] == "obj_editor_S1_show_page2"
						{if keyboard_struct.writing_to[1] == "part_naming"{if keyboard_struct.writing_to[2] == "menus.obj_editor.show_page2"	{	_writable	= 1;}}};
					if 	_writable > 0
						{
							var _str_cariage = "";
							if game_time mod 50 > 25	{_str_cariage = "_"}
							
							_xref += _button_size[0];
							var _button_size = [6,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x512_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "part : " + string(menus.obj_editor.show_page2[0]) + " | " + string(keyboard_struct.text_input) + string(_str_cariage) + string(keyboard_struct.write_extension); 
							var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current show_page1";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
						}
					else
						{
							_xref += _button_size[0];
							var _button_size = [8,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "_32x512_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
							var _btext = "part : " + string(menus.obj_editor.show_page2[0]) + " | " + string(_obj.part_naming[menus.obj_editor.show_page2[0]]);
							var _lclick = "exe_start_typing_and_return"; var _rclick = "show_rclick_info"; var _carry = [["obj_editor_S1_show_page2","part_naming","menus.obj_editor.show_page2"],	["illegal_signs"],	"",_obj.part_naming[menus.obj_editor.show_page2[0]]];	var _info = "current show_page1";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
						}
						
					_xref += _button_size[0];
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = ">>"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","show_page2",1];	var _info = "choose next page";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					//page_labels obj nr /name
					_xref = _restricted[0];
					_yref += _button_size[1] +0.1;
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "<<"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","show_page3",-1];	var _info = "choose previous page";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
			
					_xref += _button_size[0];
					var _button_size = [4,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "page : " + string(menus.obj_editor.show_page3[0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current show_page1";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
			
					_xref += _button_size[0];
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = ">>"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","show_page3",1];	var _info = "choose next page";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					//overlay rainbow in shader
					_xref += _button_size[0]+0.1;
					var _button_size = [4,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "selection overlay : " + string(menus.obj_editor.selection_overlay); var _lclick = "exe_obj_editor_01_switch"; var _rclick = "show_rclick_info"; var _carry = ["selection_overlay"];	var _info = "selection on screen by mouse click";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					//pages
					switch(menus.obj_editor.show_page3[0])
						{
		//===========================================page
							case 0:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "character_sheet info"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								
								//writable file_name
								var _writable = 0;
								if	keyboard_struct.writing_on > 0	&&	keyboard_struct.writing_to[0] == "obj_editor_S1_S2"
									{if keyboard_struct.writing_to[1] == "character_sheet"{if keyboard_struct.writing_to[2] == "file_name"	{	_writable	= 1;}}};
								if 	_writable > 0
									{
										var _str_cariage = "";
										if game_time mod 50 > 25	{_str_cariage = "_"}
										
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.75];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_48x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "file_name : " + "\n" + string(keyboard_struct.text_input) + string(_str_cariage) + string(keyboard_struct.write_extension); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.75];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_48x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "file_name : " + "\n" + string(_obj.character_sheet.file_name); var _lclick = "exe_start_typing_and_return"; var _rclick = "show_rclick_info"; var _carry = [["obj_editor_S1_S2","character_sheet","file_name"],	["illegal_signs"],	".txt",_obj.character_sheet.file_name];	var _info = "page label";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									};
									
								//writable file_directory
								var _writable = 0;
								if	keyboard_struct.writing_on > 0	&&	keyboard_struct.writing_to[0] == "obj_editor_S1_S2"
									{if keyboard_struct.writing_to[1] == "character_sheet"{if keyboard_struct.writing_to[2] == "file_directory"	{	_writable	= 1;}}};
								if 	_writable > 0
									{
										var _str_cariage = "";
										if game_time mod 50 > 25	{_str_cariage = "_"}
										
										_xref += _button_size[0] +0.1
										var _button_size = [4,0.75];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_48x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "file_directory : " + "\n" + string(keyboard_struct.text_input) + string(_str_cariage) + string(keyboard_struct.write_extension); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								else
									{
										_xref += _button_size[0] +0.1
										var _button_size = [4,0.75];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_48x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "file_directory : " + "\n" + string(_obj.character_sheet.file_directory); var _lclick = "exe_start_typing_and_return"; var _rclick = "show_rclick_info"; var _carry = [["obj_editor_S1_S2","character_sheet","file_directory"],	["illegal_signs"],	"/",_obj.character_sheet.file_directory];	var _info = "page label";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								
								if struct_get(_obj.character_sheet, "load_controler") != undefined
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "controler : " + string(_obj.character_sheet.load_controler); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_controler in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "no controller variable"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_controler in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
									
								if struct_get(_obj.character_sheet, "load_phy") != undefined
									{	
										var _phy_arr = _obj.character_sheet.load_phy;
										if array_length(_phy_arr) < 2
											{
												_xref += _button_size[0] +0.1;
												var _button_size = [4,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = "phy : " + string(_phy_arr); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
										else
											{
												for(var _pha = 0; _pha < array_length(_phy_arr); _pha ++)
													{
														_xref += _button_size[0] +0.1;
														var _button_size = [4,0.5];
														if _xref + _button_size[0] - 0.5 > _restricted[2]
															{	_xref = _restricted[0];	_yref += _button_size[1];	};
														var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
														var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
														var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
														var _btext = "phy : " + string(_phy_arr[_pha]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
														var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
														array_push(_this_menu,_button);
													}
											}
									}
								else
									{
										_xref += _button_size[0] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "no phy variable"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_controler in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								if struct_get(_obj.character_sheet, "load_camera") != undefined
									{	
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "cam on/off: " + string(_obj.character_sheet.load_camera[0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "cam nr : " + string(_obj.character_sheet.load_camera[1]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] +0.1;
										var _button_size = [4,0.75];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_48x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "conected to part : "  + "\n" +  string(_obj.character_sheet.load_camera[1]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "no camera variable"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_controler in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
									
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "xyz : " + string(_obj.part_vsubmit[0][0]) + " | " + string(_obj.part_vsubmit[0][1]) + " | " + string(_obj.part_vsubmit[0][2]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								if struct_get(_obj.control_method, "phy_map_part") != undefined
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "map part : " + string(_obj.control_method.phy_map_part); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] + 0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "of : " + string(map3d.world_settings.map_part_size) + " size cubes"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
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
								var _btext = "controls"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								if struct_get(_obj.control_method, "active") != undefined
									{	
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [0.5,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
										var _btext = "<<"; var _lclick = "exe_in_obj_add_value"; var _rclick = "show_rclick_info"; var _carry = [["struct2_array1","control_method","active",0],["",""],-1];	var _info = "choose previous page";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
					
										_xref += _button_size[0];
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "active : " + string(_obj.control_method.active[0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0];
										var _button_size = [0.5,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
										var _btext = ">>"; var _lclick = "exe_in_obj_add_value"; var _rclick = "show_rclick_info"; var _carry = [["struct2_array1","control_method","active",0],["",""],1];	var _info = "choose previous page";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] + 0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = string(_obj.control_method.active[1]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] + 0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = string(_obj.control_method.active[2]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "no variable active"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
									
								if struct_get(_obj.control_method, "input_from") != undefined
									{	
										var _str = "control : ";
										if _obj.control_method.input_from[0] = "pad_struct.pad_result_array"
											{
												_str += "pad " + string(_obj.control_method.input_from[1]);
											}
										else	{	_str +=	_obj.control_method.input_from[0];}
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = _str; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "see page 11 to change;"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "no variable input_from"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
							//TBD		
								if struct_get(_obj.control_method, "strafe_sides") != undefined
									{	
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "strafe_sides:"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _array1 = _obj.control_method.strafe_sides[0];
										var _array2 = _obj.control_method.strafe_sides[1];
										for(var _ar1 = 0; _ar1 < array_length(_array1); _ar1++)
											{
												var _str = string(_array1[_ar1]) + ":" + string(_array2[_ar1]);
												_xref += _button_size[0];
												var _button_size = [2,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = _str; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
									}
							//TBD		
								if struct_get(_obj.control_method, "strafe_fb") != undefined
									{	
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "strafe_fb:"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _array1 = _obj.control_method.strafe_fb[0];
										var _array2 = _obj.control_method.strafe_fb[1];
										for(var _ar1 = 0; _ar1 < array_length(_array1); _ar1++)
											{
												var _str = string(_array1[_ar1]) + ":" + string(_array2[_ar1]);
												_xref += _button_size[0];
												var _button_size = [2,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = _str; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
									}
							//TBD		
								if struct_get(_obj.control_method, "strafe_up") != undefined
									{	
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "strafe_up:"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _array1 = _obj.control_method.strafe_up[0];
										var _array2 = _obj.control_method.strafe_up[1];
										for(var _ar1 = 0; _ar1 < array_length(_array1); _ar1++)
											{
												var _str = string(_array1[_ar1]) + ":" + string(_array2[_ar1]);
												_xref += _button_size[0];
												var _button_size = [2,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = _str; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
									}
							//TBD		
								if struct_get(_obj.control_method, "tilt") != undefined
									{	
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "tilt:"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _array1 = _obj.control_method.tilt[0];
										var _array2 = _obj.control_method.tilt[1];
										for(var _ar1 = 0; _ar1 < array_length(_array1); _ar1++)
											{
												var _str = string(_array1[_ar1]) + ":" + string(_array2[_ar1]);
												_xref += _button_size[0];
												var _button_size = [2,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = _str; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
									}
							//TBD		
								if struct_get(_obj.control_method, "yaw") != undefined
									{	
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "yaw:"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _array1 = _obj.control_method.yaw[0];
										var _array2 = _obj.control_method.yaw[1];
										for(var _ar1 = 0; _ar1 < array_length(_array1); _ar1++)
											{
												var _str = string(_array1[_ar1]) + ":" + string(_array2[_ar1]);
												_xref += _button_size[0];
												var _button_size = [2,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = _str; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
									}
							//TBD		
								if struct_get(_obj.control_method, "pitch") != undefined
									{	
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "pitch:"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _array1 = _obj.control_method.pitch[0];
										var _array2 = _obj.control_method.pitch[1];
										for(var _ar1 = 0; _ar1 < array_length(_array1); _ar1++)
											{
												var _str = string(_array1[_ar1]) + ":" + string(_array2[_ar1]);
												_xref += _button_size[0];
												var _button_size = [2,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = _str; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
									}
								if struct_get(_obj.control_method, "slow") != undefined
									{	
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "slow:"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _array1 = _obj.control_method.slow[0];
										var _array2 = _obj.control_method.slow[1];
										for(var _ar1 = 0; _ar1 < array_length(_array1); _ar1++)
											{
												var _str = string(_array1[_ar1]) + ":" + string(_array2[_ar1]);
												_xref += _button_size[0];
												var _button_size = [2,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = _str; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
									}
								
								if struct_get(_obj.control_method, "jump") != undefined
									{	
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "jump:"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _array1 = _obj.control_method.jump[0];
										var _array2 = _obj.control_method.jump[1];
										for(var _ar1 = 0; _ar1 < array_length(_array1); _ar1++)
											{
												var _str = string(_array1[_ar1]) + ":" + string(_array2[_ar1]);
												_xref += _button_size[0];
												var _button_size = [2,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = _str; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
									}
									
								if struct_get(_obj.control_method, "action") != undefined
									{	
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "action:"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _array1 = _obj.control_method.action[0];
										var _array2 = _obj.control_method.action[1];
										for(var _ar1 = 0; _ar1 < array_length(_array1); _ar1++)
											{
												var _str = string(_array1[_ar1]) + ":" + string(_array2[_ar1]);
												_xref += _button_size[0];
												var _button_size = [2,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = _str; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
									}
									
								if struct_get(_obj.control_method, "gravity") != undefined
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "gravity:"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = string(_obj.control_method.gravity); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] +0.1;
										var _button_size = [6,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "9,81m/s^2 is 0,0,-490.5 for 50px==1m;"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
							break;
		//===========================================page
							case 2:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "page 2 phy"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							//phy TBD in objects
								if struct_get(_obj.control_method, "behaviour_cycle") != undefined
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [6,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "behaviour_cycle : " + string(_obj.control_method.behaviour_cycle); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0];
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "see page 10;"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								if struct_get(_obj.character_sheet, "anim_cycles") != undefined
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [8,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x512_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "cycles_pack : " + string(_obj.character_sheet.anim_cycles); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								if struct_get(_obj.control_method, "anchor") != undefined
									{
										var _anchor_list = _obj.control_method.anchor;
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "anchors : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] +1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "remove all"; var _lclick = "exe_remove_anchor_in_object"; var _rclick = "show_rclick_info"; 
										var _carry = [_selected_object_type,menus.obj_editor.obj_num,"all"];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										for(var _anchl = 0; _anchl < array_length(_anchor_list); _anchl++)
											{
												_xref = _restricted[0];
												_yref += _button_size[1];
												var _button_size = [8,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x512_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = string(_obj.control_method.anchor[_anchl]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
												
												_xref += _button_size[0] +0.1;
												var _button_size = [2,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = "remove"; var _lclick = "exe_remove_anchor_in_object"; var _rclick = "show_rclick_info"; 
												var _carry = [_selected_object_type,menus.obj_editor.obj_num,_anchl];	var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
									}
								if struct_get(_obj.control_method, "ground_state") != undefined
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [8,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x512_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "ground_state : " + string(_obj.control_method.ground_state); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								if struct_get(_obj.control_method, "intertia_translation") != undefined
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "intertia_translation"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _inertial_array = _obj.control_method.intertia_translation;
										
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "current : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0];
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = string(_inertial_array[0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "min : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0];
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = string(_inertial_array[1]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "max : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0];
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = string(_inertial_array[2]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "drag : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0];
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = string(_inertial_array[3]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								
							break;
		//===========================================page
							case 3:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "camera settings"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								if struct_get(_obj.control_method, "camera") != undefined
									{
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "current :"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0];
										var _button_size = [6,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = string(_obj.control_method.camera); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "editable :"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "active : " + string(_obj.control_method.camera[0]); var _lclick = "exe_change_in_cam_in_object"; var _rclick = "show_rclick_info"; 
										var _carry = [_selected_object_type,menus.obj_editor.obj_num,0];	
										var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] + 0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "cam : " + string(_obj.control_method.camera[1]); var _lclick = "exe_change_in_cam_in_object"; var _rclick = "show_rclick_info"; 
										var _carry = [_selected_object_type,menus.obj_editor.obj_num,1];	
										var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] + 0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "!TBD : " + string(_obj.control_method.camera[2]); var _lclick = ""; var _rclick = "show_rclick_info"; 
										var _carry = [];	
										var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] + 0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "exe : " + string(_obj.control_method.camera[3]); var _lclick = "exe_change_in_cam_in_object"; var _rclick = "show_rclick_info"; 
										var _carry = [_selected_object_type,menus.obj_editor.obj_num,3];	
										var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
									}
								
							break;
		//===========================================page
							case 4:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [6,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "part description vbuff & textures"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
						//TBD writer		
								_xref = _restricted[0];
								_yref += _button_size[1];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "name : " + string(_obj.part_naming[menus.obj_editor.show_page2[0]]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [6,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "parent : " + string(_obj.part_dependency[menus.obj_editor.show_page2[0]]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								
								_xref = _restricted[0];
								_yref += _button_size[1] +0.2;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "visible vbuff"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "vbuff : " + string(_obj.part_vbuff_load_reference[menus.obj_editor.show_page2[0]][0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0]+0.1;
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "<<"; var _lclick = "exe_change_part_scale_vbuff"; var _rclick = "show_rclick_info"; 
								var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0], "add", -0.1,	[1,0,0]	];	
								var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "scale : " + string(_obj.part_vbuff_load_reference[menus.obj_editor.show_page2[0]][1]); var _lclick = "exe_change_part_scale_vbuff"; var _rclick = "show_rclick_info"; 
								var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0], "set", "main_part",	[1,0,0]	];		
								var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = ">>"; var _lclick = "exe_change_part_scale_vbuff"; var _rclick = "show_rclick_info"; 
								var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0], "add", 0.1,	[1,0,0]	];		
								var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] +0.2;
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "transform : " + string(_obj.part_vbuff_load_reference[menus.obj_editor.show_page2[0]][2]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1]+0.1;
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "texture C : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = string(_obj.part_texture_load_reference[menus.obj_editor.show_page2[0]][0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1];
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "texture N : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = string(_obj.part_texture_load_reference[menus.obj_editor.show_page2[0]][1]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1];
								var _button_size = [6,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "shader settings : " + string(_obj.part_texture_shader_setings[menus.obj_editor.show_page2[0]]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								
								_xref = _restricted[0];
								_yref += _button_size[1] +0.2;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "helper vbuff"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "helper vbuff : " + string(_obj.part_vbuff_helper_load_reference[menus.obj_editor.show_page2[0]][0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0]+0.1;
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "<<"; var _lclick = "exe_change_part_scale_vbuff"; var _rclick = "show_rclick_info"; 
								var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0], "add", -0.1,	[0,1,0]	];	
								var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "scale : " + string(_obj.part_vbuff_helper_load_reference[menus.obj_editor.show_page2[0]][1]); var _lclick = "exe_change_part_scale_vbuff"; var _rclick = "show_rclick_info"; 
								var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0], "set", "main_part",	[0,1,0]	];		
								var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = ">>"; var _lclick = "exe_change_part_scale_vbuff"; var _rclick = "show_rclick_info"; 
								var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0], "add", 0.1,	[0,1,0]	];		
								var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] +0.2;
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "transform : " + string(_obj.part_vbuff_helper_load_reference[menus.obj_editor.show_page2[0]][2]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1];
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "H texture C : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = string(_obj.part_texture_helper_load_reference[menus.obj_editor.show_page2[0]][0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1];
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "H texture N : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = string(_obj.part_texture_helper_load_reference[menus.obj_editor.show_page2[0]][1]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								
								_xref = _restricted[0];
								_yref += _button_size[1] +0.2;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "colider vbuff"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "colider : " + string(_obj.part_vbuff_colider_load_reference[menus.obj_editor.show_page2[0]][0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0]+0.1;
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "<<"; var _lclick = "exe_change_part_scale_vbuff"; var _rclick = "show_rclick_info"; 
								var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0], "add", -0.1,	[0,0,1]	];	
								var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "scale : " + string(_obj.part_vbuff_colider_load_reference[menus.obj_editor.show_page2[0]][1]); var _lclick = "exe_change_part_scale_vbuff"; var _rclick = "show_rclick_info"; 
								var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0], "set", "main_part",	[0,0,1]	];		
								var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [0.5,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = ">>"; var _lclick = "exe_change_part_scale_vbuff"; var _rclick = "show_rclick_info"; 
								var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0], "add", 0.1,	[0,0,1]	];		
								var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] +0.2;
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "transform : " + string(_obj.part_vbuff_colider_load_reference[menus.obj_editor.show_page2[0]][2]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1];
								var _button_size = [6,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "method : " + string(_obj.part_colision_method[menus.obj_editor.show_page2[0]]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
							break;
		//===========================================page
							case 5:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [6,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "part description part animation"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "name : " + string(_obj.part_naming[menus.obj_editor.show_page2[0]]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "parent : " + string(_obj.part_dependency[menus.obj_editor.show_page2[0]]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "loading ref : " + string(_obj.part_dependency_load_reference[menus.obj_editor.show_page2[0]][0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								var _transform_arr = _obj.part_dependency_load_reference[menus.obj_editor.show_page2[0]][1];
								
								_xref = _restricted[0];
								_yref += _button_size[1];
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "sequence length : " + string(array_length(_transform_arr)); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0]+0.1;
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "copy sequence\n to clipboard"; var _lclick = "exe_set_clipboard_with_carry"; var _rclick = "show_rclick_info"; 
								var _carry = [	"_temp_o.part_dependency_load_reference = ",_obj.part_dependency_load_reference];
								if struct_get(_obj.character_sheet,"anim_pack") != undefined
									{	var _carry = [	"new_pose : ",_obj,"order_by_dependecy_part"];		};
								var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								if struct_get(_obj.character_sheet,"anim_pack") != undefined
									{
										_xref += _button_size[0]+0.1;
										var _button_size = [3,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x192_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "mirror humanoid\n to clipboard"; var _lclick = "exe_set_clipboard_with_carry"; var _rclick = "show_rclick_info"; 
										var _carry = [	"new_pose : ",_obj,"mirror_humanoid_order_by_dependecy_part"];
										var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
									
								_xref = _restricted[0]+0.6;
								_yref += _button_size[1]+0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "tilt"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "pitch"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "yaw"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "fwd"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "up"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "left"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "tilt2"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "pitch2"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref += _button_size[0] + 0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "yaw2"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_yref += 1;
								for(var _trarr = 0; _trarr < array_length(_transform_arr); _trarr++)
									{
										_xref = _restricted[0];
										var _button_size = [0.5,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = string(_trarr); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _keep_xref = _xref;	var _keep_yref = _yref;
										
										_xref = _restricted[0];
										_yref = _keep_yref +0.5;
										var _button_size = [0.5,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
										var _btext = "copy"; var _lclick = "exe_set_clipboard_with_carry"; var _rclick = "show_rclick_info"; var _carry = [_obj.part_naming[menus.obj_editor.show_page2[0]],_transform_arr];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										for(var _bn = 0; _bn < array_length(_transform_arr[_trarr]); _bn++)
											{
												_xref = _keep_xref + _bn*1.1 + 0.6;
												_yref = _keep_yref -0.5;
												var _button_size = [0.5,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = "+"; var _lclick = "exe_change_dependency_reference_value"; var _rclick = "show_rclick_info"; 
												var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	_trarr,	_bn, "add",	1.,3];
												var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
												
												_xref = _keep_xref + _bn*1.1 + 1.1;
												var _button_size = [0.5,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = ".+"; var _lclick = "exe_change_dependency_reference_value"; var _rclick = "show_rclick_info"; 
												var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	_trarr,	_bn, "add",	0.05,3];
												var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
												
												_xref = _keep_xref + _bn*1.1 + 0.6;
												_yref = _keep_yref;
												var _button_size = [1,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = string(_transform_arr[_trarr][_bn]); var _lclick = "exe_change_dependency_reference_value"; var _rclick = "show_rclick_info";
												var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	_trarr,	_bn, "set",	0.,3];
												var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
												
												_xref = _keep_xref + _bn*1.1 + 0.6;
												_yref = _keep_yref +0.5;
												var _button_size = [0.5,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = "-"; var _lclick = "exe_change_dependency_reference_value"; var _rclick = "show_rclick_info";
												var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	_trarr,	_bn, "add",	-1.,3];
												var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
												
												_xref = _keep_xref + _bn*1.1 + 1.1;
												var _button_size = [0.5,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = ".-"; var _lclick = "exe_change_dependency_reference_value"; var _rclick = "show_rclick_info";
												var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	_trarr,	_bn, "add",	-.05,3];
												var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
										_yref += 1.2;
										
									}
								
								
								
							break;
		//===========================================page
							case 6:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [6,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "part position matrix"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1] +0.3;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "posMat"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
							
								var _keep_xref = _xref;
								for(var _ii = 0; _ii < array_length(_obj.part_posMat[menus.obj_editor.show_page2[0]]); _ii++)
									{
										_xref += _button_size[0]+0.1;
										var _button_size = [1,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
										var _btext = string(_obj.part_posMat[menus.obj_editor.show_page2[0]][_ii]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
					
										if (_ii+1) mod 4 == 0	{	_xref = _keep_xref; _yref += _button_size[1]+0.1;	};
									}
							break;
		//===========================================page
							case 7:
								
								var _vsub = _obj.part_vsubmit[menus.obj_editor.show_page2[0]];
								
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "v submit"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
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
								var _btext = "part pos"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
								_xref += _button_size[0] +0.1;
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = string(_vsub[0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
								_xref += _button_size[0];
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = string(_vsub[1]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
								_xref += _button_size[0];
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = string(_vsub[2]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
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
								var _btext = string(_vsub[3]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
								_xref += _button_size[0];
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = string(_vsub[4]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
								_xref += _button_size[0];
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = string(_vsub[5]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
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
								var _btext = string(_vsub[6]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
								_xref += _button_size[0];
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = string(_vsub[7]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
								_xref += _button_size[0];
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = string(_vsub[8]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
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
								var _btext = string(_vsub[12]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
								_xref += _button_size[0];
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = string(_vsub[13]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
								_xref += _button_size[0];
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = string(_vsub[14]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
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
								var _btext = string(_vsub[15]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
								_xref += _button_size[0];
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = string(_vsub[16]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
			
								_xref += _button_size[0];
								var _button_size = [1,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = string(_vsub[17]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								
								_xref = _restricted[0];
								_yref += _button_size[1] +0.3;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "tilt : " + string(_vsub[9]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1] +0.3;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "pitch : " + string(_vsub[10]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								_xref = _restricted[0];
								_yref += _button_size[1] +0.3;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
								var _btext = "yaw : " + string(_vsub[11]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "choose next cam";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
							break;
		//===========================================page
							case 8:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "anim pack"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								if struct_get(_obj.control_method, "anim_stack") != undefined
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [8,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x512_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "stack : " + string(_obj.control_method.anim_stack); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								if struct_get(_obj.character_sheet, "anim_pack") != undefined
									{
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [6,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "anim_pack : " + string(_obj.character_sheet.anim_pack); var _lclick = "exe_switch_anim_pack_anim_cycles_in_obj"; var _rclick = "show_rclick_info"; var _carry = [_obj];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0]+0.1;
										var _button_size = [0.5,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "<<"; var _lclick = "exe_obj_editor_change_anim_lerp_timer"; var _rclick = "show_rclick_info"; 
										var _carry = [-1,"add"];
										var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0];
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "lerp time : " + string(menus.obj_editor.anim_lerp_timer); var _lclick = "exe_obj_editor_change_anim_lerp_timer"; var _rclick = "show_rclick_info"; 
										var _carry = [30,"set"];	
										var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0];
										var _button_size = [0.5,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = ">>"; var _lclick = "exe_obj_editor_change_anim_lerp_timer"; var _rclick = "show_rclick_info"; 
										var _carry = [1,"add"];
										var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [6,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "affect transformation : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "rot from parent/ translate by rot/ rot result;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0]+0.1;
										var _button_size = [0.5,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
										var _btext = string(menus.obj_editor.anim_aff[0]); var _lclick = "exe_obj_editor_01_switch"; var _rclick = "show_rclick_info"; var _carry = ["anim_aff",0];	var _info = "selection on screen by mouse click";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0];
										var _button_size = [0.5,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
										var _btext = string(menus.obj_editor.anim_aff[1]); var _lclick = "exe_obj_editor_01_switch"; var _rclick = "show_rclick_info"; var _carry = ["anim_aff",1];	var _info = "selection on screen by mouse click";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0];
										var _button_size = [0.5,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
										var _btext = string(menus.obj_editor.anim_aff[2]); var _lclick = "exe_obj_editor_01_switch"; var _rclick = "show_rclick_info"; var _carry = ["anim_aff",2];	var _info = "selection on screen by mouse click";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										
										var _anim_ref_pack = reference_struct[$	_obj.character_sheet.anim_pack];
										var _anim_list = struct_get_names(_anim_ref_pack);
										
										menus.obj_editor.anim_list_bar[1] = array_length(_anim_list);
										
										var _al_start = menus.obj_editor.anim_list_bar[0];
										var _al_end = menus.obj_editor.anim_list_bar[0] + menus.obj_editor.anim_list_bar[2];
										
										if menus.obj_editor.anim_list_bar[0] < 1
											{
												_xref += _button_size[0] + 0.7;
												var _button_size = [0.5,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
												var _btext = "-"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "anim list up is max";
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
												var _btext = "-"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","anim_list_bar",-1,"fast"];	var _info = "anim list up";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
										if _al_end > array_length(_anim_list)-1
											{
												_xref += _button_size[0];
												var _button_size = [0.5,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
												var _btext = "+"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "anim list down is max";
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
												var _btext = "+"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","anim_list_bar",1,"fast"];	var _info = "anim list down";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
										
										
										var _anim_aff = menus.obj_editor.anim_aff;
										
										_yref += 0.1;
										
										for(var _al = _al_start; _al < _al_end; _al++)
											{	
												if _al < 1
													{
														_xref = _restricted[0];
														_yref += _button_size[1]-0.2;
														var _button_size = [8,0.5];
														var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
														var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
														var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
														var _btext = "=========== anim list start ==========="; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
														var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
														array_push(_this_menu,_button);
													}
												if _al > -1	&& _al < array_length(_anim_list)
													{
														if _anim_list[_al] !="part_naming"
															{
																_xref = _restricted[0];
																_yref += _button_size[1];
																var _button_size = [4,0.5];
																var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
																var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
																var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
																var _btext = string(_anim_list[_al]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
																var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
																array_push(_this_menu,_button);
												
																_xref += _button_size[0] +0.1;
																var _button_size = [2,0.5];
																var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
																var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
																var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
																var _btext = "enforce pose"; var _lclick = "exe_enforce_pose_on_obj"; var _rclick = "show_rclick_info"; 
																var _carry = [_selected_object_type,menus.obj_editor.obj_num,string(_obj.character_sheet.anim_pack),string(_anim_list[_al]),_anim_aff];
																var _info = "load_phy in character_sheet;";
																var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
																array_push(_this_menu,_button);
														
																_xref += _button_size[0] +0.1;
																var _button_size = [2,0.5];
																var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
																var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
																var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
																var _btext = "lerp to pose"; var _lclick = "exe_push_anim_stack_on_obj"; var _rclick = "show_rclick_info"; 
																var _carry = [_selected_object_type,menus.obj_editor.obj_num,string(_anim_list[_al]),menus.obj_editor.anim_lerp_timer,_anim_aff];
																var _info = "load_phy in character_sheet;";
																var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
																array_push(_this_menu,_button);
															}
													}
												if _al > array_length(_anim_list)-2
													{
														_xref = _restricted[0];
														_yref += _button_size[1]+0.2;
														var _button_size = [8,0.5];
														var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
														var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
														var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
														var _btext = "=========== anim list end ===========\n=click on -/+ to navigate up/down the list="; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
														var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
														array_push(_this_menu,_button);
													}
												else if _al == _al_end -1
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
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [6,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "there is no anim pack"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								
								
								
							break;
		//===========================================page
							case 9:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "detector pack"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								if struct_get(_obj.character_sheet, "detector_pack") != undefined
									{
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [8,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x512_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "detector_pack : " + string(_obj.character_sheet.detector_pack); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_yref += 0.1;
										var _atrl = reference_struct[$ _obj.character_sheet.detector_pack];
										var _atrl_gn = struct_get_names(_atrl);
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "avilable : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										for(var _l_atrl = 0; _l_atrl < array_length(_atrl_gn); _l_atrl++)
											{
												_xref += _button_size[0] + 0.1;
												var _button_size = [4,0.5];
												
												if _xref + _button_size[0] > _restricted[2]	{_xref = _restricted[0] + 0.1;_yref += _button_size[1];}
												
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = string(_atrl_gn[_l_atrl]); var _lclick = "exe_push_detector_stack_on_obj"; var _rclick = "show_rclick_info"; 
												var _carry = [_selected_object_type,menus.obj_editor.obj_num,"push",_atrl[$ _atrl_gn[_l_atrl]]];	
												var _info = string(_atrl[$ _atrl_gn[_l_atrl]]);
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
										
										
										_yref += 0.1;
										var _dtrl = _obj.part_detector_lines_load_reference;
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "current : " + string(array_length(_dtrl)); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										for(var _cdt = 0; _cdt < array_length(_dtrl); _cdt++)
											{
												_xref = _restricted[0]+0.1;
												_yref += _button_size[1];
												var _button_size = [8,0.5];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "_32x512_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = string(_dtrl[_cdt]); var _lclick = "exe_push_detector_stack_on_obj"; var _rclick = "show_rclick_info"; 
												var _carry = [_selected_object_type,menus.obj_editor.obj_num,"remove",_dtrl[_cdt]];	
												var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
										
									}
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1];
										var _button_size = [6,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "there is no detector pack"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								
								
							break;
		//===========================================page
							case 10:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "behaviour_cycle choice;"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								if struct_get(_obj.character_sheet, "anim_cycles") != undefined
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [8,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x512_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "anim_cycles : " + string(_obj.character_sheet.anim_cycles); var _lclick =  "exe_switch_anim_pack_anim_cycles_in_obj"; var _rclick = "show_rclick_info"; var _carry = [_obj];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "current : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0]+0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = string(_obj.control_method.behaviour_cycle); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "avilable : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _cycles_struct = reference_struct[$ _obj.character_sheet.anim_cycles];
										var _csgn = struct_get_names(_cycles_struct);
										menus.obj_editor.cycle_list_bar[1] = array_length(_csgn);
										
										var _al_start = menus.obj_editor.cycle_list_bar[0];
										var _al_end = menus.obj_editor.cycle_list_bar[0] + menus.obj_editor.cycle_list_bar[2];
										
										_xref += 3.5;
										if menus.obj_editor.cycle_list_bar[0] < 1
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
												var _btext = "-"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","cycle_list_bar",-1,"fast"];	var _info = "cycle list up";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
										if _al_end > array_length(_csgn)-1
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
												var _btext = "+"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","cycle_list_bar",1,"fast"];	var _info = "cycle list down";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
											
										_yref += 0.1;	
										for(var _sgn_csgn = _al_start; _sgn_csgn < _al_end; _sgn_csgn++)
											{
												if _sgn_csgn < 1
													{
														_xref = _restricted[0];
														_yref += _button_size[1]-0.2;
														var _button_size = [8,0.5];
														var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
														var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
														var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
														var _btext = "=========== cycle list start ==========="; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
														var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
														array_push(_this_menu,_button);
													}
												if _sgn_csgn > -1	&& _sgn_csgn < array_length(_csgn)
													{
														_xref = _restricted[0];
														_yref += _button_size[1] +0.1;
														var _button_size = [4,0.5];
														var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
														var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
														var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
														var _btext = string(_csgn[_sgn_csgn]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
														var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
														array_push(_this_menu,_button);
												
														_xref += _button_size[0] +0.1;
														var _button_size = [2,0.5];
														var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
														var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
														var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
														var _btext = "force cycle;"; var _lclick = "exe_push_anim_cycle_on_obj"; var _rclick = "show_rclick_info"; 
														var _carry = [_selected_object_type,menus.obj_editor.obj_num,string(_csgn[_sgn_csgn])];	
														var _info = "load_phy in character_sheet;";
														var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
														array_push(_this_menu,_button);
													}
												if _sgn_csgn > array_length(_csgn)-2
													{
														_xref = _restricted[0];
														_yref += _button_size[1]+0.2;
														var _button_size = [8,0.5];
														var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
														var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
														var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
														var _btext = "=========== cycle list end ===========\n=click on -/+ to navigate up/down the list="; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
														var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
														array_push(_this_menu,_button);
													}
												else if _sgn_csgn == _al_end -1
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
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [6,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x384_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "no behaviour_cycle in this object;"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								
							break;
		//===========================================page
							case 11:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "change controls"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								if struct_get(_obj.control_method, "input_from") != undefined
									{	
										var _str = "current : ";
										if _obj.control_method.input_from[0] = "pad_struct.pad_result_array"
											{
												_str += "pad " + string(_obj.control_method.input_from[1]);
											}
										else	{	_str +=	_obj.control_method.input_from[0];}
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = _str; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										//avilable controls
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "avilable:"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "key + mouse"; var _lclick = "exe_change_controller_in_object"; var _rclick = "show_rclick_info"; 
										var _carry = [_selected_object_type,menus.obj_editor.obj_num,"mouse_keyboard"];	
										var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "pad 0"; var _lclick = "exe_change_controller_in_object"; var _rclick = "show_rclick_info"; 
										var _carry = [_selected_object_type,menus.obj_editor.obj_num,"pad0"];	
										var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "pad 1"; var _lclick = "exe_change_controller_in_object"; var _rclick = "show_rclick_info"; 
										var _carry = [_selected_object_type,menus.obj_editor.obj_num,"pad1"];	
										var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref += _button_size[0] +0.1;
										var _button_size = [2,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x128_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "noone"; var _lclick = "exe_change_controller_in_object"; var _rclick = "show_rclick_info"; 
										var _carry = [_selected_object_type,menus.obj_editor.obj_num,"none"];	
										var _info = "value > 0 mod game_time \n trigger controls in \n exe_perform_moves_on_map3d_v2;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "no variable input_from"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								
							break;
		//===========================================page
							case 12:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [4,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "equip / vbuff change"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								if struct_get(_obj.character_sheet, "items_swaps") != undefined
									{	
										
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "current : " + string(_obj.part_vbuff_load_reference[menus.obj_editor.show_page2[0]][0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										_xref = _restricted[0];
										_yref += _button_size[1] +0.2;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "items_swaps list : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										_yref += 0.1;
										
										var _current_part_name = string(_obj.part_naming[menus.obj_editor.show_page2[0]]);
										var _part_items = reference_struct[$ _obj.character_sheet.items_swaps][$ _current_part_name];
										
										if _part_items == undefined
											{
												_xref = _restricted[0];
												_yref += _button_size[1] +0.1;
												var _button_size = [6,1];
												var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
												var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
												var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
												var _btext = "no items refered to this part on :\n" + string(_obj.character_sheet.items_swaps); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
										else
											{
												var _sgn_part_items = struct_get_names(_part_items);
												_xref = _restricted[0]+0.1;
												_yref += _button_size[1];
												for(var _inum = 0; _inum < array_length(_sgn_part_items); _inum++)
													{
														var _new_part = _part_items[$ _sgn_part_items[_inum]];
														
														var _button_size = [4,0.5];
														var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
														var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
														var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
														var _btext = string(_sgn_part_items[_inum]); var _lclick = "exe_vbuff_item_in_objcet_change"; var _rclick = "show_rclick_info"; 
														var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],	menus.obj_editor.obj_num,	menus.obj_editor.show_page2[0],	_new_part,	0	];
														var _info = "load_phy in character_sheet;";
														var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
														array_push(_this_menu,_button);
														
														_xref += _button_size[0];
														if _xref+4 > _restricted[0] + 8.1	{_xref = _restricted[0]+0.1;	_yref += _button_size[1];};
													}
											}
									}
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "no variable items_swaps"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
									
								
							break;
		//===========================================page
							case 13:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [6,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "body measures page 13"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
								if struct_get(_obj.character_sheet, "body_measures") != undefined
									{	
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "body_measures"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
										
										var _bm_str = _obj.character_sheet.body_measures;
										var _bm_str_names = struct_get_names(_bm_str);
										menus.obj_editor.measures_list_bar[1] = array_length(_bm_str_names);
										
										var _al_start = menus.obj_editor.measures_list_bar[0];
										var _al_end = menus.obj_editor.measures_list_bar[0] + menus.obj_editor.measures_list_bar[2];
										
										_xref += 3.5;
										if menus.obj_editor.measures_list_bar[0] < 1
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
												var _btext = "-"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","measures_list_bar",-1,"fast"];	var _info = "cycle list up";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
										if _al_end > array_length(_bm_str_names)-1
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
												var _btext = "+"; var _lclick = "exe_change_page_in_menu"; var _rclick = "show_rclick_info"; var _carry = ["obj_editor","measures_list_bar",1,"fast"];	var _info = "cycle list down";
												var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
												array_push(_this_menu,_button);
											}
											
										_yref += 0.1;
										
										for(var _bm_n = _al_start; _bm_n < _al_end; _bm_n++)
											{
												if _bm_n < 1
													{
														_xref = _restricted[0];
														_yref += _button_size[1]-0.2;
														var _button_size = [8,0.5];
														var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
														var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
														var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
														var _btext = "=========== measures list start ==========="; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
														var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
														array_push(_this_menu,_button);
													}
												if _bm_n > -1	&& _bm_n < array_length(_bm_str_names)
													{
														_xref = _restricted[0];
														_yref += _button_size[1] +0.1;
														var _button_size = [4,0.5];
														var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
														var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
														var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
														var _btext = string(_bm_str_names[_bm_n]) + " : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
														var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
														array_push(_this_menu,_button);
														
														if is_array(_bm_str[$ _bm_str_names[_bm_n]])
															{
																var _button_arr = _bm_str[$ _bm_str_names[_bm_n]];
																
																for(var _abn = 0; _abn < array_length(_button_arr);_abn++)
																	{
																		_xref += _button_size[0] +0.1;
																		var _button_size = [0.5,0.5];
																		var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
																		var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
																		var _pic = "_32x32_button";	var _pic_mo = string(_pic + "_mo");	var _mouse_over = 0;
																		var _btext = "-"; var _lclick = "exe_change_value_in_body_measures"; var _rclick = "show_rclick_info"; var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],menus.obj_editor.obj_num,string(_bm_str_names[_bm_n]),_abn,"add",-1];	var _info = "load_phy in character_sheet;";
																		var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
																		array_push(_this_menu,_button);
																		
																		_xref += _button_size[0];
																		var _button_size = [0.5,0.5];
																		var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
																		var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
																		var _pic = "_32x32_button";	var _pic_mo = string(_pic);	var _mouse_over = 0;
																		var _btext =_bm_str[$ _bm_str_names[_bm_n]][_abn]; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
																		var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
																		array_push(_this_menu,_button);
																		
																		_xref += _button_size[0];
																		var _button_size = [0.5,0.5];
																		var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
																		var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
																		var _pic = "_32x32_button";	var _pic_mo = string(_pic + "_mo") ;	var _mouse_over = 0;
																		var _btext = "+"; var _lclick = "exe_change_value_in_body_measures"; var _rclick = "show_rclick_info"; var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],menus.obj_editor.obj_num,string(_bm_str_names[_bm_n]),_abn,"add",1];	var _info = "load_phy in character_sheet;";
																		var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
																		array_push(_this_menu,_button);
																	}
															}
														else
															{
																_xref += _button_size[0] +0.1;
																var _button_size = [0.5,0.5];
																var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
																var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
																var _pic = "_32x32_button";	var _pic_mo = string(_pic + "_mo");	var _mouse_over = 0;
																var _btext = "-"; var _lclick = "exe_change_value_in_body_measures"; var _rclick = "show_rclick_info"; var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],menus.obj_editor.obj_num,string(_bm_str_names[_bm_n]),-1,"add",-1];	var _info = "load_phy in character_sheet;";
																var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
																array_push(_this_menu,_button);
																		
																_xref += _button_size[0] +0.1;
																var _button_size = [1,0.5];
																var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
																var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
																var _pic = "_32x64_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
																var _btext = string(_bm_str[$ _bm_str_names[_bm_n]]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
																var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
																array_push(_this_menu,_button);
																		
																_xref += _button_size[0];
																var _button_size = [0.5,0.5];
																var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
																var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
																var _pic = "_32x32_button";	var _pic_mo = string(_pic + "_mo") ;	var _mouse_over = 0;
																var _btext = "+"; var _lclick = "exe_change_value_in_body_measures"; var _rclick = "show_rclick_info"; var _carry = [menus.obj_editor.page1_names[menus.obj_editor.show_page1[0]],menus.obj_editor.obj_num,string(_bm_str_names[_bm_n]),-1,"add",1];	var _info = "load_phy in character_sheet;";
																var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
																array_push(_this_menu,_button);
															}
														
													}
												if _bm_n > array_length(_bm_str_names)-2
													{
														_xref = _restricted[0];
														_yref += _button_size[1]+0.2;
														var _button_size = [8,0.5];
														var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
														var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
														var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
														var _btext = "=========== measures list end ===========\n=click on -/+ to navigate up/down the list="; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
														var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
														array_push(_this_menu,_button);
													}
												else if _bm_n == _al_end -1
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
								else
									{
										_xref = _restricted[0];
										_yref += _button_size[1] +0.1;
										var _button_size = [4,0.5];
										var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
										var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
										var _pic = "_32x256_back";	var _pic_mo = string(_pic);	var _mouse_over = 0;
										var _btext = "no variable body_measures"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "load_phy in character_sheet;";
										var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
										array_push(_this_menu,_button);
									}
								
							break;
		//===========================================page
							case 14:
							
								_xref = _restricted[0];
								_yref += _button_size[1] +0.1;
								var _button_size = [2,0.5];
								var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
								var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
								var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
								var _btext = "page 14"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "page label";
								var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
								array_push(_this_menu,_button);
								
							break;
		//===========================================page
						}
					
				}
			else
				{
					_xref = _restricted[0];
					_yref += _button_size[1] +0.1;
					var _button_size = [6,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
					var _btext = "no objects in selected obj type"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current show_page1";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
				}
		}
	
	return(_this_menu);
}