/// @description Draw it!

if !options {
	draw_sprite_stretched(spr_menu,0,64,64,98,42);
	
	draw_set_halign(fa_left);
	
	draw_text(40,52,"Resume");
	draw_text(40,60,"Options");
	draw_text(40,68,"Quit");
	
	draw_sprite(spr_beebo,0,32,55+8*index);
} else {
	draw_sprite_stretched(spr_menu,0,64,64,98,98);
	
	draw_set_halign(fa_center);
	
	draw_text(64,28,"Sound");
	draw_sprite(spr_slider,global.sound*10,64,44);
	
	draw_text(64,60,"Music");
	draw_sprite(spr_slider,global.music*10,64,76);
	
	draw_text(64,92,"Confirm");
	
	//Selector?
	if index = 2 {
		draw_sprite(spr_beebo,0,30,95);
		draw_sprite(spr_beebo,0,98,95);
	} else {
		draw_sprite(spr_keys,3,34,32*(index+1)+8);
		draw_sprite(spr_keys,5,86,32*(index+1)+8);
	}
}