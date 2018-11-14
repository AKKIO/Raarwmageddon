/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
with(obj_shit){
	image_blend = global.color_now;
}
with(obj_bigger_shit){
	image_blend = global.color_now;
}

if instance_exists(int_GUI){
	/*switch(global.level){
		case(2):
			if col_s < 1{
				col_s +=1;
			}
		break;
	}*/
	
	col_s = round((global.level/3)+.1)

}

global.color_now = color[col_s];