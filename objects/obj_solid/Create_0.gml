/// @description Insert description here
// You can write your code in this editor
image_speed = 0;

image_index = scr_tileAuto(obj_solid, 0);

if place_free(x, y-16){
	detail = instance_create_layer(x, y-9, "ly_platforms", obj_detail);
	var i = irandom(10);
	if i <= 2{
		detail.image_index = choose(20, 21);
	}else{
		var e = irandom(1)
		if e = 1{
			detail.image_index = 1;
		}
	}
}