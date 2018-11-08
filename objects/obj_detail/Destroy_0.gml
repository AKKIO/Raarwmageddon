/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var i = irandom_range(2, 4)
repeat(i){
	instance_create_layer(x, y-16, "ly_platforms", obj_particle_00);
}