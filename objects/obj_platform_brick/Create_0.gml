/// @description Insert description here
// You can write your code in this editor
alarm[1] = 2;
image_speed = 0;
draw_a = 0;
allow_d = 0;
hp = 2;
xplo = 1;

if place_free(x, y-16){
	detail = instance_create_layer(x, y-9, "ly_platforms", obj_detail);
	var i = irandom(20);
	if i <= 2{
		detail.image_index = choose(20, 21);
	}else if i >= 19{
		detail.image_index = 1+irandom(23);
	}else{
		var e = irandom(1)
		if e = 1{
			detail.image_index = 1;
		}
	}
}