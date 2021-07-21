/// @description Draw the tutorial text

draw_set_halign(fa_center);
if !instance_exists(obj_knifepickup) {
	draw_text(x,y,"Attack\nwith  ");
	draw_sprite(spr_keys,1,x+16,y+8);
}

draw_set_halign(fa_left);