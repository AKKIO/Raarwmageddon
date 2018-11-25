/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
alarm[0] = room_speed*2;
if state = 0{
	switch(dino){
		case(0): instance_create_layer(x, y-8, "ly_objects", obj_dmsg1) break;//mesagge 1 normal dino
		case(1): instance_create_layer(x, y-16, "ly_objects", obj_smmsg1) break;//mesage 1 smoking dino
	}
}