/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var i = irandom_range(1, 2)
if instance_exists(int_surfacesColor) && global.allow_p = 1{
	if int_surfacesColor.style = 0{
		if xplo = 1{
			part_particles_create(global.partsys[0], x, y, global.part[0], i)
		}
	}else{
		if xplo = 1 {
			part_particles_create_color(global.partsys[0], x, y, global.part[0], global.second_detail_color,i)
		}
	}
}
if xplo = 1{
	audio_play_sound(snd_dest, 1, 0);
	if int_surfacesColor.style = 1{
		actc = global.second_detail_color;
	}else{
		actc = -1;
	}
	imp = instance_create_layer(x, y, "ly_platforms", obj_impact);
	imp.image_blend = actc;
	
}
if instance_exists(int_camera){
	int_camera.scr = 1;
}

instance_destroy(dino_block);

if place_meeting(x, y-2, obj_big_hidraulic){
	det1 = instance_nearest(x, y, obj_big_hidraulic);
	instance_destroy(det1);
}
if place_meeting(x, y-2, obj_small_hidraulic){
	det2 = instance_nearest(x, y, obj_small_hidraulic);
	instance_destroy(det2);
}
if det_a = 1{
	if instance_exists(detail){
		instance_destroy(detail);
	}
}