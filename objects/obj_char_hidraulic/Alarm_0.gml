/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(int_surfacesColor){
	if int_surfacesColor.style = 0{
		image_blend = global.color_now;
		blend = c_white;
	}else{
		image_blend = global.second_detail_color;
		blend = image_blend;
	}
}