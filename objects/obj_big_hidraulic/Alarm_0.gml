/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
for(i = 0; i < 64; i++){
	if !place_free(x, y-i){
		instance_destroy();
	}
}
if instance_exists(int_surfacesColor){
	if int_surfacesColor.style = 0{
		image_blend = global.color_now;
	}else{
		image_blend = global.second_detail_color;
	}
}