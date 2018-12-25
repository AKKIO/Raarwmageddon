/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
force = 3;
dur = 0;
XX = 0;
YY = 0;
xm = (room_width/2);
scr = 0;
lel = 0;
ini_open(working_directory + "/save_files/"+"save.ini");
allow_C = ini_read_real("options", "scrshk", 1);
ini_close();