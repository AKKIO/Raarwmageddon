/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
for(i = 0; i < 64; i++){
	if !place_free(x, y-i){
		instance_destroy();
	}
}
image_blend = global.color_now;