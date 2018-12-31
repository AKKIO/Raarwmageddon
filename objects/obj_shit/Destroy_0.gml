/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
dest = instance_create_layer(x, y, "ly_platforms", obj_impact);
dest.image_blend = image_blend;
if trail_on = 1{
	instance_destroy(trail);
	trail_on = 0;
}