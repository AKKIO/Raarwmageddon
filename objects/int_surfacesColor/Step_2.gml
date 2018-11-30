/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


switch(style){
	case(0):
		var back_id = layer_background_get_id("ly_bkg")
		layer_background_blend(back_id, c_black);
	
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
	break;
	
	case(1):
		var back_id = layer_background_get_id("ly_bkg")
		layer_background_blend(back_id, global.color_now);
		//background_color = c_black;
		
		with(obj_shit){
			image_blend = global.second_detail_color;
		}
		with(obj_bigger_shit){
			image_blend = global.second_detail_color;
		}
		with(obj_cloud){
			image_blend = global.second_detail_color;
		}
		with(obj_smmsg1){
			image_blend = global.second_detail_color
		}
		with(obj_smmsg2){
			image_blend = global.second_detail_color;
		}
		with(obj_dmsg1){
			image_blend = global.second_detail_color;
		}
		with(obj_dmsg2){
			image_blend = global.second_detail_color;
		}
		
		
		
		
		if instance_exists(int_GUI) && !instance_exists(int_menu){
			if global.counter > 14{
				global.counter = 0;
			}
			switch(global.counter){
				case(0):
					col_s = 12;
				break;
				
				case(4):
					col_s = 14;
				break;
				
				case(9):
					col_s = 16;
				break
			}
		}else if instance_exists(int_menu) && style = 1 || instance_exists(int_chars) && style = 1{
			var back_id = layer_background_get_id("ly_bkg")
			layer_background_blend(back_id, global.color_now);
			
			col_s = 12;
		}
	break;
}
if instance_exists(int_GUI){
	if difficulty < global.level && difficulty !=30{
		difficulty++
	}
	global.dif = 1+((difficulty*6)/100);
	
}


global.color_now = color[col_s];
global.second_detail_color = color[col_s+1];
