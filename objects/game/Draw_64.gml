
if surface_exists(main_surface)	{draw_surface(main_surface,0,0);};

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(10,10,"F1 - menu bar;\n" +	"F11 - restart;\n"	+	"F12 - exit program;\n"	+ "fps d(t) : " + string(fps_dt) + " | fps : "+ string(fps_real));






















