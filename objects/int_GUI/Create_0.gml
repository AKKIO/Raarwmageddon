/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.level = 0;
global.dinos = 0;
global.scr = 0;
global.mult_scr = 0;
global.temp_scr = 0;
show_scr = 0;
score_gui = 0;
less = 0;
step = 0;
ms = 0;
second = 0
minute = 0;


ideal_width = 0; //336;
ideal_height = 360;
show = 120;

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

/*inc = 10;
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