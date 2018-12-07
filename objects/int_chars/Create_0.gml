/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ini_open(working_directory + "/save_files/"+"save.ini");
if !ini_section_exists("DINOS"){
	char_crypt = base64_encode(string("0"));
	din_crypt[0] = base64_encode(string("499"))
	din_crypt[1] = base64_encode(string("0"))
	din_crypt[2] = base64_encode(string("0"))
	din_crypt[3] = base64_encode(string("0"))
	ini_write_string("DINOS", "PLAYER", char_crypt);
	ini_write_string("DINOS", "dino00", din_crypt[0]);
	ini_write_string("DINOS", "dino01", din_crypt[1]);
	ini_write_string("DINOS", "dino02", din_crypt[2]);
	ini_write_string("DINOS", "dino03", din_crypt[3]);
}
ini_open(working_directory + "/save_files/"+"save.ini");
din_crypt[0] = ini_read_string("DINOS", "dino00", "0");
din_crypt[1] = ini_read_string("DINOS", "dino01", "0");
din_crypt[2] = ini_read_string("DINOS", "dino02", "0");
din_crypt[3] = ini_read_string("DINOS", "dino03", "0");
din[0] = real(base64_decode(din_crypt[0]));
din[1] = real(base64_decode(din_crypt[1]));
din[2] = real(base64_decode(din_crypt[2]));
din[3] = real(base64_decode(din_crypt[3]));
ini_close();

color = instance_create_layer(x, y, "ly_instances", int_surfacesColor);

instance_create_layer(x, y, "ly_instances", int_cloud_rng);
instance_create_layer(x, y, "ly_instances", int_cloud_rng);
instance_create_layer(room_width/2, room_height-64, "ly_instances", obj_follower);
instance_create_layer(room_width/2, (room_height)/2, "ly_instances", int_camera);