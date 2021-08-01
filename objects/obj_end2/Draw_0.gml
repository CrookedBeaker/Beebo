/// @description Insert description here
// You can write your code in this editor

draw_self();
//draw_text(x,y,string(dist))

if drawN {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	draw_text(64,y-40,"The orb remains\nincomplete.");
	draw_text(64,y-16,"Try again!");
}