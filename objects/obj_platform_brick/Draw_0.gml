/// @description Insert description here
// You can write your code in this editor
if hp = 2{
	if draw_a = 1{
		draw_sprite_ext(spr_platform_brick, tile, x, y, image_xscale, 1, 0, c_white, 1);
	}
}else{
	if draw_a = 1{
	draw_sprite_ext(spr_platform_brickd, tile, x, y, image_xscale, 1, 0, c_white, 1);
	}
}
if keyboard_check(ord("C")){
	draw_text_transformed(x, y+8, hp, .5, .5, 0);
}