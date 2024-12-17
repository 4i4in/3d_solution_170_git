function exe_map3d_add_controlled_objects_v2(_map,_obj)
{
	array_push(_map.controlable_objects,_obj);
	return(_map);
}