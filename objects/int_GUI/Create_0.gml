/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.level = 0;
global.dinos = 0;


ideal_width = 272;
ideal_height = 0;

aspect_ratio = display_get_width()/display_get_height();

ideal_height = round(ideal_width*(aspect_ratio)/1.2);

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

inc = 10;
rot = 0;
dir = 0;
txt = "."
sz = 2;
intext = irandom(100)
if intext <= 5{
	txt = "WELCOME TO JUMP SOULS B*TCH"
	sz = 1;
}else{
	txt = "YOU DIED";
}