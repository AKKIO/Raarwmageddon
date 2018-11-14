/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.level = 0;


ideal_width = 256;
ideal_height = 0;

aspect_ratio = display_get_width()/display_get_height();

ideal_height = round(ideal_width*aspect_ratio);

if (ideal_height & 1){
	ideal_height++;
}

for(var i = 1; i <=room_height; i++){
	if room_exists(i){
		room_set_viewport(i, 0, true, 0, 0, ideal_width, ideal_height);
		room_set_view_enabled(i, true);
	}
}

display_set_gui_size(ideal_width, ideal_height);

/*surface_resize(application_surface, ideal_width, ideal_height);
window_set_size(ideal_width, ideal_height);