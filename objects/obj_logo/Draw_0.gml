/// @description Menu shit.
draw_set_halign(fa_left);
draw_text(0,0,string(global.sound));
draw_text(0,8,string(global.music));


draw_set_font(fnt_main);

if !menu {
	draw_self();
	
	draw_set_halign(fa_center);
	
	if show {
		draw_text(64,88,"Press  ");
		draw_sprite(spr_keys,0,84,87);
	}
} else if options {
	draw_set_halign(fa_center);
	
	draw_text(64,16,"Sound");
	draw_sprite(spr_slider,global.sound*10,64,32);
	
	draw_text(64,48,"Music");
	draw_sprite(spr_slider,global.music*10,64,64);
	
	draw_text(64,88,"Confirm");
	
	//Selector?
	if index = 2 {
		draw_sprite(spr_beebo,0,30,91);
		draw_sprite(spr_beebo,0,98,91);
	} else {
		draw_sprite(spr_keys,3,34,32*(index+1)-4);
		draw_sprite(spr_keys,5,86,32*(index+1)-4);
	}
} else {
	draw_self();
	
	draw_set_halign(fa_left);
	
	draw_text(40,81,"Start");
	draw_text(40,89,"Continue");
	draw_text(40,97,"Options");
	
	draw_sprite(spr_beebo,0,34,84+8*index);
}