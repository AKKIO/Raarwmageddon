/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var i = irandom_range(1, 2)
if instance_exists(int_surfacesColor){
	if int_surfacesColor.style = 0{
		part_particles_create(global.partsys[0], x, y, global.part[0], i)
	}else{
		part_particles_create_color(global.partsys[0], x, y, global.part[0], global.second_detail_color,i)
	}
}
if xplo = 1{
	instance_create_layer(x, y, "ly_platforms", obj_impact);
}
if instance_exists(int_camera){
	int_camera.scr = 1;
}

instance_destroy(dino_block);