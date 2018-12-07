/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if room = rm_work{
x = room_width/2;
y = room_height-48;

if instance_exists(int_rng_world){
	instance_destroy(int_rng_world);
}

global.level +=1;
if instance_exists(int_surfacesColor){
	if int_surfacesColor.style = 0{
		global.counter +=1;
	}else{
		global.counter+=1;
	}
}
if instance_exists(int_camera){
	int_camera.x = room_width/2;
	int_camera.y = room_height+64;
}
if instance_exists(int_GUI){
	int_GUI.ly = room_height-63.15;
}

if instance_exists(int_shitmaker){
	int_shitmaker.alarm[0] = room_speed*2;
}
if hugging = 1{
	if instance_exists(obj_dino){
		if obj_dino.dino = 2{
			ini_open(working_directory + "/save_files/"+"save.ini");
			din_crypt[1] = base64_encode(string("499"))
			ini_write_string("DINOS", "dino01", din_crypt[1]);
			ini_close();
		}
		global.saved_dinos++;
		global.dinos +=1;
		instance_destroy(obj_dino);
		hugging = 0;
		global.temp_scr = global.mult_scr*2;
	}
}else{
	instance_destroy(obj_dino);
}

if instance_exists(int_GUI){
	global.scr += global.temp_scr;
	global.temp_scr = 0;
	global.mult_scr = 0;
	int_GUI.show_scr = 0;
}
}else{
	room_goto(rm_work);
}

if instance_exists(GOD){
ini_open(working_directory + "/save_files/"+"save.ini");	
var gsdinos = global.saved_dinos*pi;
var gkdinos = global.killed_dinos*pi;
var code_sd = base64_encode(string(gsdinos));
var code_kd = base64_encode(string(gkdinos    ));
ini_write_string("rewards", "s_d", code_sd); 
ini_write_string("rewards", "k_d", code_kd); 
ini_close(); 
}