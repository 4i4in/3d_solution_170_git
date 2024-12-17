function exe_walk_anchor_edge_exception_to_climb_lookup(_pose_name)
{
	var _continue = 0;
	switch(_pose_name)
		{
			case "walk_d5own_R":	case "walk_d5own_L":
			case "walk_d4own_R":	case "walk_d4own_L":
			case "walk_d3own_R":	case "walk_d3own_L":
			case "walk_d3own_R":	case "walk_d3own_L":
			_continue = 1; break;
		}
	
	return(_continue);
}