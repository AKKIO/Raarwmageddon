/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
x = room_width/2;
y = room_height-48;

if instance_exists(int_rng_world){
	instance_destroy(int_rng_world);
}

global.level +=1;
global.counter +=1;
if global.details < 28{
	global.details +=2;
}else if global.details =26{
	global.details++;
}

int_camera.x = room_width/2;
int_camera.y = room_height+64;
int_GUI.ly = room_height-63.15;