/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
instance_create_layer(x, y, "ly_platforms", obj_impact);
instance_create_layer(x, y, "ly_platforms", obj_soul);
if trail_on = 1{
	instance_destroy(trail);
	trail_on = 0;
}
scr_death();