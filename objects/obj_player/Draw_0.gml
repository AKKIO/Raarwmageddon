/// @description Insert description here
// You can write your code in this editor
var sprite_scale = sprite_get_width(spr_smash_trail);

if state != 1{
	if state !=2{
		draw_self();
	}
}
if state = 2 && place_free(x, ly_min){
	
	draw_sprite_ext(spr_smash_trail, image_index, x, mean(ly_min, y)+16, dir_n, point_distance(x, y, x, ly_min)/sprite_scale, 0, image_blend, 1);
}

if state = 1{
	draw_sprite_ext(sprroll[dino], 1, x, y+8, image_xscale, 1, roll, image_blend, 1);
	if hspd < 0{
		roll+=9;
	}else if hspd > 0{
		roll-=9;
	}else{
		roll = 0;
	}
}