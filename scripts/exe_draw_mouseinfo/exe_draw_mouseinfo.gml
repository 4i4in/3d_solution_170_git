function exe_draw_mouseinfo()
{
	if mouse_info.mx + mouse_info.my > 0	&&	mouse_info.txt != ""
		{
			var _text_w = string_width(mouse_info.txt);
			var _text_h = string_height(mouse_info.txt);
			
			if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}
	
			surface_set_target(main_surface);
	
			//adapt to screen
			var _text_xpos = mouse_info.mx;	var _text_ypos = mouse_info.my;
			if mouse_info.mx + _text_w > dgw-1
				{	_text_xpos = dgw - _text_w};
			if mouse_info.my + _text_h > dgh-1
				{	_text_ypos = dgh - _text_h};
			
			draw_set_color(c_dkgray);
			draw_set_alpha(0.7);
			draw_rectangle(_text_xpos-1,_text_ypos-1,_text_xpos+_text_w+1,_text_ypos+_text_h+1,0);
			draw_set_color(c_white);
			draw_set_alpha(1);
			
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			
			
			draw_text(_text_xpos,_text_ypos,string(mouse_info.txt));
			
			surface_reset_target();
		}
}