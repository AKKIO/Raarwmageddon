/// @description Insert description here
// You can write your code in this editor
tile = scr_tileAuto(obj_platform, 1);
alarm[0] = 2;

if instance_exists(int_surfacesColor){
	if int_surfacesColor.style = 1{
		image_blend = global.color_now;
	}else{
		image_blend = -1;
	}
}