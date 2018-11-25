/// @description Insert description here
// You can write your code in this editor
if !instance_exists(int_menu){
	alarm[0] = delay;
}else{
	alarm[0] = 60;
}
var XX = 32+(room_width/3)+(irandom(12))*16;
var shit = irandom(10);
var YY = yy-40;
if shit < 2{
	instance_create_layer(XX+16, YY, "ly_objects", obj_bigger_shit);
	var shit = irandom(10);
}else{
	instance_create_layer(XX+16, YY, "ly_objects", obj_shit);
	var shit = irandom(10);
}