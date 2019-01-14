/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(int_surfacesColor){
	if int_surfacesColor.style = 0{
		col = c_white;
		bkg = c_black;
	}else{
		col = global.second_detail_color;
		bkg = global.color_now;
	}
}

draw_rectangle_color(ideal_width-ideal_width, ideal_height-ideal_height, ideal_width, ideal_width, bkg, bkg, bkg, bkg, 0);
draw_sprite_ext(spr_splashscreen, 0, ideal_width/2, ideal_height/2, (aspect_ratio/6), (aspect_ratio/6), 0, col, alpha/100);
if show = 0{
	alpha++;
}else if show = 1{
	alpha--;
}

if alpha >= 100 && show = 0{
	show = 2;
	alarm[1] = room_speed*2;
}
if alpha <= 0 && show = 1{
	alarm[0] = 60;
	show = 3;
}