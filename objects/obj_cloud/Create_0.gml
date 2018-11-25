/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
spd = random_range(.1, 1.5);
image_speed = 0;
image_index = irandom(2);
dir = irandom_range(-1, 1);
image_index = dir;
if dir = 1{
	x = room_width+96
	motion_set(180, spd);
}else{
	x = -96
	motion_set(0, spd);
}