/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
with(obj_shit){
	image_blend = global.color_now;
}
with(obj_bigger_shit){
	image_blend = global.color_now;
}

if instance_exists(int_GUI){
	if global.counter > 32{
		global.counter = 0;
	}
	col_s = round((global.counter/3)-.3)

}

global.color_now = color[col_s];