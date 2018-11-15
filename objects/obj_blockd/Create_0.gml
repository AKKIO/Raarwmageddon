/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
i = irandom(100);
if i = 0 && place_free(x, y-16) && layer_exists("ly_objects"){
	instance_create_layer(x, y-16, "ly_objects", obj_dino);
}