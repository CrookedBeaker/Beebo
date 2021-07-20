/// @description Menu shit.

draw_self();

draw_set_font(fnt_main);

if !menu {
	draw_set_halign(fa_center);
	
	if show {draw_text(64,88,"Press Z")};
} else {
	draw_set_halign(fa_left);
	
	draw_text(40,81,"Start");
	draw_text(40,89,"Continue");
	draw_text(40,97,"Options");
	
	draw_sprite(spr_beebo,0,34,84+8*index);
}