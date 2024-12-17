function exe_return_menu_restriction(_menu_name)
{
	var _return_restricted = [];
	for(var _ii = 0; _ii < array_length(menu_templates); _ii+=2)
		{
			if menu_templates[_ii] == _menu_name
				{
					_return_restricted = variable_clone(menu_templates[_ii+1][0]);
					for(var _kk = 0; _kk < array_length(_return_restricted); _kk++)
						{
							_return_restricted[_kk] = floor(_return_restricted[_kk] * control_array.tile_size);
						}
					break;
				}
		}
	return(_return_restricted);
}