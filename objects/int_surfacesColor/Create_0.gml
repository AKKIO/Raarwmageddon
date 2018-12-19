/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ini_open(working_directory + "/save_files/"+"save.ini");
var style_decrypt = (ini_read_string("options", "style", "MQ=="));
ini_close();
style = real(base64_decode(style_decrypt));

//style 1
color[0]	= make_color_rgb(221, 11, 11);
color[1]	= make_color_rgb(38, 28, 221);
color[2]	= make_color_rgb(16, 186, 42);
color[3]	= make_color_rgb(232, 200, 18);
color[4]	= make_color_rgb(232, 16, 214);
color[5]	= make_color_rgb(13, 198, 226);
color[6]	= make_color_rgb(139, 15, 226);
color[7]	= make_color_rgb(234, 121, 28);
color[8]	= make_color_rgb(10, 216, 110);
color[9]	= make_color_rgb(214, 12, 49)
color[10]	= make_color_rgb(170, 170, 170);
color[11]	= make_color_rgb(221, 11, 11);

//style 2
color[12] = make_color_rgb(255, 63, 82);//background 1
color[13] = make_color_rgb(255, 244, 165);//details 1
color[14] = make_color_rgb(99, 100, 242);//background 2
color[15] = make_color_rgb(255, 107, 223);//details 2
color[16] = make_color_rgb(143, 17, 182);//background 3
color[17] = make_color_rgb(118, 220, 111);//details 3
color[18] = make_color_rgb(143, 17, 182);//background 4 safe
color[19] = make_color_rgb(118, 220, 111);//details 4 safe

global.color_now = color[0] ;
global.second_detail_color = color[0]
col_s = 0;
global.counter = 0;

difficulty = 0;
global.dif = 0;


alarm[0] = 1;