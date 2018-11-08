/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_big_hidraulic, tile, x, y, image_xscale, 1, 0, image_blend, 1);

if distance_to_object(obj_shit) < 1 || distance_to_object(obj_bigger_shit) < 4{
	instance_destroy();
}