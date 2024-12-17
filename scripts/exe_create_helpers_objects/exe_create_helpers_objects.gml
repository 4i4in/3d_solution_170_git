function exe_create_helpers_objects()
{
var _push_pos = [0,0,0,0,0,0,1,1,1];
var _push_controler = exe_return_controller("none");

var _return_geometry = exe_return_geometry_vbuff("dir_arrow5");
var _push_vbuff_list =	variable_clone(_return_geometry[0]);
var _push_colision_vbuff =	variable_clone(_return_geometry[1]);
var _helpers_vbuff = variable_clone(_return_geometry[2]);


var _naming = ["world_origin","","dir_arrow50"];//second position would be filled with hash
map3d = exe_map3d_add_helpers_objects(map3d,_naming,_push_pos,_push_controler,_push_vbuff_list,_push_colision_vbuff,_helpers_vbuff);



var _push_pos = [map3d.world_settings.world_sqr_size/2, map3d.world_settings.world_sqr_size/2, map3d.world_settings.world_sqr_size/2,0,0,0,1,1,1];
var _push_controler = exe_return_controller("none");

var _return_geometry = exe_return_geometry_vbuff("vbuff_100x100_inverted_orientation");
var _push_vbuff_list =	variable_clone(_return_geometry[0]);
var _push_colision_vbuff =	variable_clone(_return_geometry[1]);
var _helpers_vbuff = variable_clone(_return_geometry[2]);

var _naming = ["space_orientation","","vbuff_100x100_inverted_orientation"];//second position would be filled with hash
map3d = exe_map3d_add_helpers_objects(map3d,_naming,_push_pos,_push_controler,_push_vbuff_list,_push_colision_vbuff,_helpers_vbuff);

}