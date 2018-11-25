/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
with(obj_shit){
	image_blend = global.color_now;
}
with(obj_bigger_shit){
	image_blend = global.color_now;
}
with(obj_cloud){
	image_blend = global.color_now;
}
with(obj_smmsg1){
	image_blend = global.color_now;
}
with(obj_smmsg2){
	image_blend = global.color_now;
}
with(obj_dmsg1){
	image_blend = global.color_now;
}
with(obj_dmsg2){
	image_blend = global.color_now;
}

if instance_exists(int_GUI){
	if global.counter > 32{
		global.counter = 0;
	}
	col_s = round((global.counter/3)-.3)

}
if instance_exists(int_GUI){
	if difficulty < global.level && difficulty !=30{
		difficulty++
	}
	global.dif = 1+((difficulty*6)/100);
	
}

global.color_now = color[col_s];