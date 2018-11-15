/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var i = irandom_range(2, 4)
if instance_exists(int_particle_sys){
	part_particles_create_color(global.partsys[0], x, y, global.part[0], image_blend,i)
	int_camera.scr = 1;
}
if xplo = 1{
	dest = instance_create_layer(x, y, "ly_platforms", obj_impact);
	dest.image_blend = image_blend;
}