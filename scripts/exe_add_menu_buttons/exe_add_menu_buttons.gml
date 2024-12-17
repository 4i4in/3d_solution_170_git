function exe_add_menu_buttons(_menu_name)
{
	var _return_buttons = control_array.current_menu_array;
	
	var _new_buttons = [];
	for(var _ii = 0; _ii < array_length(menu_templates); _ii+=2)
		{
			if menu_templates[_ii] == _menu_name
				{
					_new_buttons = variable_clone(menu_templates[_ii+1]);
					array_delete(_new_buttons,0,1);
					break;
				}
		}
		
	if array_length(_new_buttons) > 0
		{
			for(var _ii = 0; _ii < array_length(_new_buttons); _ii++)
				{
					var _this_button = _new_buttons[_ii];
					array_push(_return_buttons,_this_button);
				}
		}
	return(_return_buttons);
}