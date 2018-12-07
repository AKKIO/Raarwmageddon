/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !directory_exists("save_files"){
	directory_create("save_files");
}

ini_open(working_directory + "/save_files/"+"save.ini");
if !ini_section_exists("options"){
	ini_write_string("options", "style", "MQ==");
}
if !ini_section_exists("rewards"){
	var crypt = base64_encode(string(pi));
	ini_write_string("rewards", "s_d", crypt);
	ini_write_string("rewards", "k_d", crypt);
}
var st_decrypt = ini_read_string("options", "style", 0);
st = real(base64_decode(st_decrypt));
ini_close();

ini_open(working_directory + "/save_files/"+"save.ini");
	if !ini_section_exists("Score"){
		ini_write_string("Score", "highscore", "MAo=");
	}
ini_close();

ini_open(working_directory + "/save_files/"+"save.ini");
var decode_sd = ini_read_string("rewards", "s_d", "MQ==");
var decode_kd = ini_read_string("rewards", "k_d", "MQ==");
saved_dinos = real(base64_decode(decode_sd))/pi;
killed_dinos = real(base64_decode(decode_kd))/pi;
ini_close();

if saved_dinos >= 100{
	ini_open(working_directory + "/save_files/"+"save.ini");
	din_crypt[3] = base64_encode(string("499"))
	ini_write_string("DINOS", "dino03", din_crypt[3]);
	ini_close();
}
if killed_dinos >= 100{
	ini_open(working_directory + "/save_files/"+"save.ini");
	din_crypt[2] = base64_encode(string("499"))
	ini_write_string("DINOS", "dino02", din_crypt[2]);
	ini_close();
}