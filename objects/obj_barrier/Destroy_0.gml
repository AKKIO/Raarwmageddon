/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
int_shitmaker.alarm[0] = 20;
if !place_meeting(x, y-16, obj_barrier){
	instance_create_layer(x, y, "ly_barrier", obj_safezone_d)
}