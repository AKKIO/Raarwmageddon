/// @description Insert description here
// You can write your code in this editor
var sprite_scale = sprite_get_width(spr_smash_trail);

if state != 1{
	if state !=2{
		draw_self();
	}
}
if state = 2 && place_free(x, ly_min){
	//draw_sprite_stretched(spr_smash_trail, image_index, x-(sprite_scale/2), mean(ly_p, y)-36, sprite_scale, point_distance(x, y, x, ly));
	//draw_sprite_stretched(spr_smash_trail, image_index, x-(sprite_scale/2), mean(ly, y)-42, sprite_scale, point_distance(x, y, x, ly));
	draw_sprite_ext(spr_smash_trail, image_index, x, mean(ly_min, y)+16, dir_n, point_distance(x, y, x, ly_min)/sprite_scale, 0, c_white, 1);
}
//draw_sprite_ext(spr_smash_trail, image_index, x-(sprite_scale/2), mean(ly, y)+16, 1, point_distance(x, y, x, ly)/sprite_scale, 0, c_white, 1);
//draw_sprite_stretched(spr_smash_trail, image_index, x-(sprite_scale/2), mean(ly, y)-42, sprite_scale, point_distance(x, y, x, ly));
//draw_line(x, y, x, ly);

if state = 1{
	draw_sprite_ext(spr_player_roll, 1, x, y+8, image_xscale, 1, roll, c_white, 1);
	if hspd < 0{
		roll+=9;
	}else if hspd > 0{
		roll-=9;
	}else{
		roll = 0;
	}
}