/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var i = irandom_range(2, 4)
if instance_exists(int_particle_sys){
	if global.allow_p = 1{
		part_particles_create_color(global.partsys[0], x, y, global.part[0], image_blend,i)
	}
	if instance_exists(int_camera){
		int_camera.scr = 1;
	}
}
if type = 1{
	instance_create_layer(x, y-16, "ly_platforms", obj_soul);
}