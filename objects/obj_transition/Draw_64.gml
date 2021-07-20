/// @description Let's do it

if out {
	draw_sprite_ext(spr_transition,0,position+24,0,-1,1,0,c_white,1);
	
	draw_set_color(c_black);
	draw_rectangle(position+24,0,128,128,false);
	draw_set_color(c_white);
} else {
	draw_sprite(spr_transition,0,position,0);
	
	draw_set_color(c_black);
	draw_rectangle(0,0,position,128,false);
	draw_set_color(c_white);
}