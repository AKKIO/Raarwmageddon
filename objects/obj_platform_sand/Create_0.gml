/// @description Insert description here
// You can write your code in this editor
alarm[1] = 2;
image_speed = 0;
draw_a = 0;
det_a = 0;

xplo = 1;
sand = 0;
des = 0;

if place_free(x, y-16){
	detail = instance_create_layer(x, y-9, "ly_platforms", obj_detail);
	det_a = 1;
	var i = irandom(20);
	if i <= 2{
		detail.image_index = choose(2, 17);
	}else if i >= 19{
		if instance_exists(GOD){
			detail.image_index = 1+irandom(global.details);
		}
	}else{
		var e = irandom(1)
		if e = 1{
			detail.image_index = 1;
		}
	}
}

dino_block = instance_create_layer(x, y, "ly_platforms", obj_blockd);