/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var i = irandom_range(1, 2)
repeat(i){
	instance_create_layer(x, y, "ly_platforms", obj_particle_00);
}
instance_create_layer(x, y, "ly_platforms", obj_impact);
int_camera.scr = 1;