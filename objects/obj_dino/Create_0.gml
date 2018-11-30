/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
state = 0;
dino = irandom(1);

ini_open(working_directory + "/save_files/"+"save.ini");
decode_dino = ini_read_string("DINOS", "dino01", "0");
var character = real(base64_decode(decode_dino));
horn = round(character);
ini_close();
if horn = 0{
	if instance_exists(int_GUI){
		if global.level = 4{
			var growhorn = irandom(100);
			if growhorn = 1{
				dino = 2;
			}
		}
	}
}

alarm[0] = room_speed;

//normal dino
sprite_fell = spr_dino_fall;
sprite_idle	= spr_dino_idle;

grav    = 0.3;
vspd	= 0;

hug = 0;
hugnt = 0;
hug_max = 15;
msg_allow = 0;
msg = 0;

//shader
uPixelH = shader_get_uniform(sh_outline, "pixelH");
uPixelW = shader_get_uniform(sh_outline, "pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index, 0));
colorR = shader_get_uniform(sh_outline, "ColorR");
colorG = shader_get_uniform(sh_outline, "ColorG");
colorB = shader_get_uniform(sh_outline, "ColorB");