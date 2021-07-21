/// @description Funny keys :3

draw_set_font(fnt_main);
draw_set_color(c_white);

draw_text(48,16,"Jump\nSelect");
draw_sprite(spr_keys,0,24,24);

draw_text(48,48,"Attack");
draw_sprite(spr_keys,1,24,48);

draw_text(48,72,"Move\nScroll");
draw_sprite(spr_keys,2,24,72);
draw_sprite(spr_keys,3,16,80);
draw_sprite(spr_keys,4,24,80);
draw_sprite(spr_keys,5,32,80);

draw_set_halign(fa_center);
draw_text(64,104,"Press any key");

draw_set_halign(fa_left);