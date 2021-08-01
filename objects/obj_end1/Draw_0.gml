/// @description Yeah lol
draw_self();

if draw {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	draw_text(64,8,"Game Clear!");
	draw_text(64,24,"Crystals\nCollected");
	draw_text(64,48,string(global.crystals)+"/6");
	
	draw_set_halign(fa_left);
	
	draw_text(80,72,"Press\nAny\nKey");
}