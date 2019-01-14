/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ideal_width = 0; //336;
ideal_height = 360;

aspect_ratio = display_get_width()/display_get_height();

ideal_width = round(ideal_height*(aspect_ratio));

if (ideal_width & 1){
	ideal_width++;
}

for(var i = 1; i <=room_height; i++){
	if room_exists(i){
		room_set_viewport(i, 0, true, 0, 0, ideal_width, ideal_height);
		room_set_view_enabled(i, true);
	}
}

display_set_gui_size(ideal_width, ideal_height);
show = 0;
alpha = 1;

instance_create_depth(x, y, "Instances", int_surfacesColor);
col = c_white;
bkg = c_white;