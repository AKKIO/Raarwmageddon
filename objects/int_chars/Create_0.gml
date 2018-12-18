/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ini_open(working_directory + "/save_files/"+"save.ini");
if !ini_key_exists("DINOS", "PLAYER"){
	char_crypt = base64_encode(string("0"));
	ini_write_string("DINOS", "PLAYER", char_crypt);
}

if !ini_key_exists("DINOS", "dino00"){
	din_crypt[0] = base64_encode(string("499"))
	ini_write_string("DINOS", "dino00", din_crypt[0]);
}
if !ini_key_exists("DINOS", "dino01"){
	din_crypt[1] = base64_encode(string("0"))
	ini_write_string("DINOS", "dino01", din_crypt[1]);
}
if !ini_key_exists("DINOS", "dino02"){
	din_crypt[2] = base64_encode(string("0"))
	ini_write_string("DINOS", "dino02", din_crypt[2]);
}
if !ini_key_exists("DINOS", "dino03"){
	din_crypt[3] = base64_encode(string("0"))
	ini_write_string("DINOS", "dino03", din_crypt[3]);
}
ini_close();
ini_open(working_directory + "/save_files/"+"save.ini");
din_crypt[0] = ini_read_string("DINOS", "dino00", "0");
din_crypt[1] = ini_read_string("DINOS", "dino01", "0");
din_crypt[2] = ini_read_string("DINOS", "dino02", "0");
din_crypt[3] = ini_read_string("DINOS", "dino03", "0");
global.dins[1] = real(base64_decode(din_crypt[0]));
global.dins[2] = real(base64_decode(din_crypt[1]));
global.dins[3] = real(base64_decode(din_crypt[2]));
global.dins[4] = real(base64_decode(din_crypt[3]));
ini_close();

color = instance_create_layer(x, y, "ly_instances", int_surfacesColor);

instance_create_layer(x, y, "ly_instances", int_cloud_rng);
instance_create_layer(room_width/2, room_height-64, "ly_instances", obj_follower);
instance_create_layer((room_width/2)+8, room_height-80 , "ly_instances", obj_player);
instance_create_layer(room_width/2, (room_height)/2, "ly_instances", int_camera);