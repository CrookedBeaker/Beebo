/// @description Draw the tutorial text

draw_set_halign(fa_center);
if !instance_exists(obj_knifepickup) {
	draw_text(x,y,"Attack\nwith  ");
	draw_sprite(spr_keys,1,x+16,y+8);
	draw_text(x,y-52,"Try it with   ");
	draw_sprite(spr_keys,2,x+40,y-53);
	draw_sprite(spr_keys,4,x+48,y-53);
}

draw_set_halign(fa_left);