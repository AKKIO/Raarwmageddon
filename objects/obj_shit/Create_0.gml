/// @description Insert description here
// You can write your code in this editor
spd = 4;
motion_set(-90, spd);
trail_on = global.allow_p;
if trail_on = 1{
	trail = instance_create_layer(x, y, "ly_objects", obj_trail);
}