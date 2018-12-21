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
color = instance_create_layer(x, y, "ly_instances", int_surfacesColor);
logcol = c_white;
//color.col_s = irandom(10);
make_rain = instance_create_layer(x, y, "ly_instances", int_shitmaker);
make_rain.alarm[0] = 60;
make_rain.delay = 30;


platform = irandom(2);
weird = 0;
poppop = 0;
platform_t = irandom(1);
plt = obj_platform_brick;
din_rng = 15;

for (var yy = 1; yy <= 30; yy ++){
	var XX = 48+(room_width/3)+(irandom(10))*16;
	platform = irandom(2);
	platform_t = irandom(1);
	if platform_t = 0{
		plt = obj_platform;
	}else if platform_t = 1{
		plt = obj_platform_brick;
	}
	var YY = yy*48;
	poppop = irandom(4);
	if poppop = 1{
		instance_create_layer(XX, YY-16, "ly_platforms", obj_small_hidraulic);
	}
	if poppop = 2{
		var gg = irandom(50);
		if gg < 20{
			instance_create_layer(XX, YY-16, "ly_platforms", obj_big_hidraulic);
		}else{
			instance_create_layer(XX, YY-16, "ly_platforms", obj_small_hidraulic);
		}
	}
	
	if (yy = din_rng){
		din_allow = 1;
		instance_create_layer(XX, YY-18, "ly_objects", obj_dino);
	}
	
	switch(platform){
		case(0):
			instance_create_layer(XX+16, YY, "ly_platforms", plt);
			instance_create_layer(XX+32, YY, "ly_platforms", plt);
			instance_create_layer(XX, YY, "ly_platforms", plt);
			instance_create_layer(XX-16, YY, "ly_platforms", plt);
			instance_create_layer(XX-32, YY, "ly_platforms", plt);
		break;
		
		case(1):
			instance_create_layer(XX+16, YY, "ly_platforms", plt);
			instance_create_layer(XX+32, YY, "ly_platforms", plt);
			instance_create_layer(XX, YY, "ly_platforms", plt);
			instance_create_layer(XX-16, YY, "ly_platforms", plt);
			instance_create_layer(XX-32, YY, "ly_platforms", plt);
		break;
		
		case(2):
			weird = irandom(100);
			if weird < 20{
				instance_create_layer(XX+16, YY, "ly_platforms", plt);
				instance_create_layer(XX+32, YY, "ly_platforms", plt);
				instance_create_layer(XX+48, YY, "ly_platforms", plt);
				instance_create_layer(XX, YY, "ly_platforms", plt);
				instance_create_layer(XX-16, YY, "ly_platforms", plt);
				instance_create_layer(XX-32, YY, "ly_platforms", plt);
				instance_create_layer(XX-48, YY, "ly_platforms", plt);
			}else{
				instance_create_layer(XX+16, YY, "ly_platforms", plt);
				instance_create_layer(XX+32, YY, "ly_platforms", plt);
				instance_create_layer(XX, YY, "ly_platforms", plt);
				instance_create_layer(XX-16, YY, "ly_platforms", plt);
				instance_create_layer(XX-32, YY, "ly_platforms", plt);
			}
		break;
	
	}
}

///menu s
chapter = 0;
select = 0;
scroll = 0;

//ini
ini_open(working_directory + "/save_files/"+"save.ini");
	var st_decrypt = ini_read_string("options", "style", 1);
	st = real(base64_decode(st_decrypt));
ini_close();
style_read = st;
style_r[0] = "Retro.";
style_r[1] = "Normal."
