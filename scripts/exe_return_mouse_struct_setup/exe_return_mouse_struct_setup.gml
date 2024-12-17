function exe_return_mouse_struct_setup()
{
	var _struct =
		{
			mx : -1, my : -1, mtime : -1,	mlbutt : 0,	midbutt : 0, mrbutt : 0, mcool : 15,
			function_executed : 0,	
			wUD : 0, //mouse wheel +up -down
			screenEdge : 12.,	Lscreen : 0,	Rscreen : 1,	Tscreen : 0,	Bscreen : 0,
			func_carry : [],
		};
	return(_struct);
}