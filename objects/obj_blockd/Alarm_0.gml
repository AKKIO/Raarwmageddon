/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
i = irandom(100);
if i <= 2 && place_free(x, y-16) && layer_exists("ly_objects"){
	if distance_to_object(obj_safezonetop) > 194{
		instance_create_layer(x, y-16, "ly_objects", obj_dino);
	}
}