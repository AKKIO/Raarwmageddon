/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if place_free(x, y-16){
	detail = instance_create_layer(x, y-9, "ly_platforms", obj_detail);
	var i = irandom(10);
	if i <= 2{
		detail.image_index = choose(2, 17);
	}else{
		var e = irandom(1)
		if e = 1{
			detail.image_index = 1;
		}
	}
}

if instance_exists(int_surfacesColor){
	if int_surfacesColor.style = 1{
		image_blend = global.color_now;
	}else{
		image_blend = c_white;
	}
}