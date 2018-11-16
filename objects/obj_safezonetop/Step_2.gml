/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(obj_player){
	if place_meeting(x, y, obj_player){
		int_shitmaker.alarm[0] = 60;
		if instance_exists(obj_shit){
			instance_destroy(obj_shit)
		}
		if instance_exists(obj_bigger_shit){
			instance_destroy(obj_bigger_shit)
		}
	}
}