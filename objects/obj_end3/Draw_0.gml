/// @description Draw stuff
draw_self();

if (y <= 0) {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	draw_text(88,y+48,"The orb\nis\nrestored!");
	draw_text(88,y+80,"You win!");
}