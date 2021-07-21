/// @description Draw it!

draw_sprite_stretched(spr_menu,0,64,64,98,42);

draw_set_halign(fa_left);

draw_text(40,52,"Resume");
draw_text(40,60,"Options");
draw_text(40,68,"Quit");

draw_sprite(spr_beebo,0,32,55+8*index);