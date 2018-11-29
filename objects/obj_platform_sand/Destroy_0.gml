/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if xplo = 1{
	instance_destroy(dino_block);
	instance_create_layer(x, y, "ly_platforms", obj_impact);
	
	var i = irandom_range(1, 2)
	if instance_exists(int_surfacesColor){
		if int_surfacesColor.style = 0{
			part_particles_create(global.partsys[0], x, y, global.part[0], i)
		}else{
			part_particles_create_color(global.partsys[0], x, y, global.part[0], global.second_detail_color,i)
		}
	}
	
}
if instance_exists(int_camera){
	int_camera.scr = 1;
}

if sand = 0{
	if tile = 0{
		sand = instance_create_layer(x, y, "ly_platforms", obj_platform_sand_t);
		sand.sprite_index = spr_platform_sand_t1;
	}else{
		sand = instance_create_layer(x, y, "ly_platforms", obj_platform_sand_t);
		sand.sprite_index = spr_platform_sand_t2;
	}
}
if place_meeting(x, y-2, obj_detail){
	det = instance_nearest(x, y, obj_detail);
	instance_destroy(det);
}
if place_meeting(x, y-2, obj_big_hidraulic){
	det1 = instance_nearest(x, y, obj_big_hidraulic);
	instance_destroy(det1);
}
if place_meeting(x, y-2, obj_small_hidraulic){
	det2 = instance_nearest(x, y, obj_small_hidraulic);
	instance_destroy(det2);
}