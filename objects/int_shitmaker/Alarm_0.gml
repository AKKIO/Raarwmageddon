/// @description Insert description here
// You can write your code in this editor
var XX = (4+irandom(11))*16;
var shit = irandom(10);
var YY = yy-40;
if shit < 2{
	instance_create_layer(XX+16, YY, "ly_objects", obj_bigger_shit);
	var shit = irandom(10);
}else{
	instance_create_layer(XX+16, YY, "ly_objects", obj_shit);
	var shit = irandom(10);
}
alarm[0] = room_speed*2; 