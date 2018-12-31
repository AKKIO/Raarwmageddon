/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

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

randomize();

instance_create_layer(x, y, "ly_instances", int_particle_sys);
instance_create_layer(x, y, "ly_instances", int_cloud_rng);
instance_create_layer(room_width/2, room_height/2, "ly_instances", int_camera);

color = instance_create_layer(x, y, "ly_instances", int_surfacesColor);
logcol = c_white;
//color.col_s = irandom(10);
make_rain = instance_create_layer(x, y, "ly_instances", int_shitmaker);
make_rain.alarm[0] = 60;
make_rain.delay = 30;


alarm[1] = 1;

///menu s
chapter = 0;
select = 0;
blip = select;
scroll = 0;
up = 3;

//ini
ini_open(working_directory + "/save_files/"+"save.ini");
	var st_decrypt = ini_read_string("options", "style", 1);
	st = real(base64_decode(st_decrypt));
	var a = ini_read_real("options", "particles", 1);
	var c = ini_read_real("options", "scrshk", 1);
	FX = ini_read_real("options", "FX", 1);
	MUSIC = ini_read_real("options", "MUSIC", 1);
	global.allow_p = a;
	if a = 0{
		txtp = "OFF"
	}else{
		txtp = "ON"
	}
	
	if c = 0{
		txtC = "OFF"
	}else{
		txtC = "ON"
	}
ini_close();
style_read = st;
style_r[0] = "Retro.";
style_r[1] = "Normal."

snd_fx = FX*10;
snd_music = MUSIC*10;

