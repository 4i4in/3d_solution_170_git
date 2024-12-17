randomize();
window_set_fullscreen(true);
game_set_speed(60, gamespeed_fps);
game_speed = game_get_speed(gamespeed_fps);
display_reset(0,0);
//dgw = display_get_width();
//dgh = display_get_height();
window_set_showborder(false);
dgw = window_get_width();
dgh = window_get_height();

room_set_width(room, dgw);
room_set_height(room,dgh);
room_goto(room);		
surface_resize(application_surface,dgw,dgh);

//gpu_set_ztestenable(true); //this only in 3d
gpu_set_blendenable(true);
gpu_set_zwriteenable(true);
gpu_set_texfilter(false);
surface_depth_disable(false);
gpu_set_texrepeat(true);

math_set_epsilon(0.0000000001);
gc_enable(true);

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vformat = vertex_format_end();


x_scale = dgw/1920;	//scaling is just in case of adaptive window size turned on
y_scale = dgh/1080;
icon_scale = x_scale;
tile_base_size = 64;
game_time = 0;

collision_resolution = 5; //determine epsilon for checks in 3d

fps_dt = 0;	fps_timer = 60;	fps_dt_arr = array_create(fps_timer);
for(var _ii = 0; _ii < array_length(fps_dt_arr); _ii++)	{fps_dt_arr[_ii] = variable_clone(fps_real);};

mouse_struct = exe_return_mouse_struct_setup();
keyboard_struct = exe_return_keyboard_struct_setup();
keymouse_preset = exe_preset_key_mouse_mapping();

max_pads = 4; //max is 12, if You need,,,	
pad_struct = 
	{
		pad_array : [],	
		pad_maping : exe_preset_pad_mapping(), 
		pad_result_array : exe_preset_pad_results(),
	};
	
click_restricted = [];	reset_current_menu_array = 1;	current_restricted = -1;
mouse_info =
	{
		txt : "",	mx : -1,	my : -1,
	};
control_array = 
	{
		tile_size : floor(tile_base_size*icon_scale),	current_menu_array : [],
	};

cam_struct = exe_return_cam_struct();
exe_set_cam("cam1");	exe_set_cam("cam2");


main_surface = surface_create(dgw,dgh);
draw_3d_array = [];
draw_3d_helpers_array = [];

menus = exe_return_menus_struct();
menu_templates = exe_create_menu_templates();

//creating 3d world
var _worldsize = 4000;		//4k is big enough
var _map_part_size = 300;	//600 or 300	see: exe_return_map_part_ref
var _chunksize = 100;		//200 or 100	see: exe_return_map_part_ref

map3d =	
	{
		world_settings :
			{
				world_sqr_size : _worldsize,
				world_x_start: 0,
				world_y_start: 0,
				world_z_start: 0,
				chunksize : _chunksize,
				chunknumber : -1,
				chunk_check_range : 1,	//refer to exe_fill_gaps_in_refer_to_arr, see: exe_return_map_part_ref
				map_part_size : _map_part_size,
				chunknumber_in_map_part : _map_part_size / _chunksize,
				fast_check_scheeme : [],	//see : exe_check_collision_line_vs_geometry_v2, creation see: exe_create_fast_check_scheeme_for_colisions
				perform_fast_check : 0,	//see : exe_check_collision_line_vs_geometry_v2 -curently turned off in script;
			},		
		controlable_objects : [],
		static_objects : [],
		helpers_objects : [],//TBD
		temporary_helpers : [],
		celestial_objects : [],//TBD
		static_colider_arr : -1,			//This holds current static coliders to check
		map_part_static_colider_arr : -1,	//This hold source of coliders to loat for checks
		all_static_colider_arr : -1,		//This hold only reference from holder above to pass them to current
		general_gravity : [0,0,-9.81 *17],	//*17 where 17 is around 1meter for scale 1 humanoid
	};
map3d.keep_world_settings = 
	{
		world_sqr_size :	variable_clone(map3d.world_settings.world_sqr_size),
		world_x_start :		variable_clone(map3d.world_settings.world_x_start),
		world_y_start :		variable_clone(map3d.world_settings.world_y_start),
		world_z_start :		variable_clone(map3d.world_settings.world_z_start),
		chunknumber :		variable_clone(map3d.world_settings.chunknumber),
	};


reference_struct =
	{
		humanoid_sceleton_scale_1_part_set :				exe_return_humanoid_sceleton_scale_1_part_set(),
		
		humanoid_sceleton_anim_pack_01 :					exe_return_humanoid_sceleton_anim_pack_01(),
		humanoid_sceleton_anim_cycle_01 :					exe_return_humanoid_sceleton_anim_cycle_01(),
		
		humanoid_sceleton_anim_pack_02 :					exe_return_humanoid_sceleton_anim_pack_02(),
		humanoid_sceleton_anim_cycle_02 :					exe_return_humanoid_sceleton_anim_cycle_02(),
		
		humanoid_sceleton_anim_pack_03 :					exe_return_humanoid_sceleton_anim_pack_03(),
		humanoid_sceleton_anim_cycle_03 :					exe_return_humanoid_sceleton_anim_cycle_03(),
		
		humanoid_sceleton_anim_pack_04 :					exe_return_humanoid_sceleton_anim_pack_04(),
		humanoid_sceleton_anim_cycle_04 :					exe_return_humanoid_sceleton_anim_cycle_04(),
		
		humanoid_sceleton_anim_pack_05 :					exe_return_humanoid_sceleton_anim_pack_05(),
		humanoid_sceleton_anim_cycle_05 :					exe_return_humanoid_sceleton_anim_cycle_05(),
		
		humanoid_sceleton_anim_pack_06 :					exe_return_humanoid_sceleton_anim_pack_06(),
		humanoid_sceleton_anim_cycle_06 :					exe_return_humanoid_sceleton_anim_cycle_06(),
		
		humanoid_sceleton_anim_pack_07 :					exe_return_humanoid_sceleton_anim_pack_07(),
		humanoid_sceleton_anim_cycle_07 :					exe_return_humanoid_sceleton_anim_cycle_07(),
		
		humanoid_sceleton_anim_pack_08 :					exe_return_humanoid_sceleton_anim_pack_08(),
		humanoid_sceleton_anim_cycle_08 :					exe_return_humanoid_sceleton_anim_cycle_08(),
		
		humanoid_sceleton_anim_pack_09 :					exe_return_humanoid_sceleton_anim_pack_09(),
		humanoid_sceleton_anim_cycle_09 :					exe_return_humanoid_sceleton_anim_cycle_09(),
		
		humanoid_sceleton_anim_pack_10 :					exe_return_humanoid_sceleton_anim_pack_10(),
		humanoid_sceleton_anim_cycle_10 :					exe_return_humanoid_sceleton_anim_cycle_10(),
		
		humanoid_sceleton_detector_lines_pack_01 :			exe_return_humanoid_sceleton_detector_lines_pack_01(),
		humanoid_sceleton_items_swaps:						exe_humanoid_sceleton_items_swaps_01(),
	};

//var _temp_o = exe_object_template();//testowe
//clipboard_set_text(string(_temp_o));

exe_create_basic_vbuffs();

exe_create_controlled_objects_v2();
exe_create_static_objects_v2();

//show_debug_message("working_directory :" + string(working_directory ));
//show_debug_message("game_save_id  :" + string(game_save_id));

//var _tt1 = variable_clone(current_time);
//show_debug_message("current_time : " + string(_tt1));

map3d.world_settings.fast_check_scheeme = exe_create_fast_check_scheeme_for_colisions();
map3d.all_static_colider_arr = exe_create_static_colider_array_v2();
map3d.static_colider_arr = map3d.all_static_colider_arr;
map3d.map_part_static_colider_arr = exe_create_map_part_static_colider_arr();



//var _tt2 = current_time - _tt1;
//show_debug_message("lapsed : " + string(_tt2));


