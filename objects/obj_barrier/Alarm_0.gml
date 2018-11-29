/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if place_meeting(x, y-16, obj_barrier){
	sprite_index = spr_safezone0;
}
if instance_exists(int_surfacesColor){
	if int_surfacesColor.style = 0{
		image_blend = global.color_now;
	}else{
		image_blend = global.second_detail_color;
	}
}
