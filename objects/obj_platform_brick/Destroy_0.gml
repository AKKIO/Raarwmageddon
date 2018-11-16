/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var i = irandom_range(1, 2)
part_particles_create(global.partsys[0], x, y, global.part[0], i)
if xplo = 1{
	instance_create_layer(x, y, "ly_platforms", obj_impact);
}
if instance_exists(int_camera){
	int_camera.scr = 1;
}

instance_destroy(dino_block);