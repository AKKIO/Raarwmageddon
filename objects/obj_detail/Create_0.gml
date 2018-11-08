/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_speed = 0;
if !place_free(x, y){
	instance_destroy();
}
if !place_empty(x, y){
	instance_destroy();
}