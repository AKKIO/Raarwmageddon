/// @description start vars
ini_open(working_directory + "/save_files/"+"save.ini");
decode_dino = ini_read_string("DINOS", "PLAYER", "0")
var character = real(base64_decode(decode_dino))/pi;
dino = round(character);
ini_close();



grav    = 0.4; //Gravity
spd		= 2.5;
vspd	= 0;
hspd	= 0;
move	= 0;
jspd	= 7;
roll	= 0;
walk	= 0;

hugging = 0;

image_speed = 1.25

dir = 0;
dir_n = 0;
bkcp_j = 0;

air_rolls = 1;
state = 0;
ly_p = y;
ly[0] = 0;
ly[1] = 0;
ly[2] = 0;
ly_min = 0;
smash_counter = 0;
smash_allow = 0;

land = 0;
dust = 0;
dirt = instance_create_layer(x, y, "ly_platforms", obj_rundust)

//shader
uPixelH = shader_get_uniform(sh_outline, "pixelH");
uPixelW = shader_get_uniform(sh_outline, "pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index, 0));

///DINOS
//idle
spridle[0] = spr_player_idle;
spridle[1] = spr_dinocorn_idle;
spridle[2] = spr_dinobone_idle;
spridle[3] = spr_superdino_idle;
//walk
sprwalk[0] = spr_player_walk;
sprwalk[1] = spr_dinocorn_walk;
sprwalk[2] = spr_dinobone_walk;
sprwalk[3] = spr_superdino_walk;
//jump
sprjump[0] = spr_player_jump;
sprjump[1] = spr_dinocorn_jump;
sprjump[2] = spr_dinobone_jump;
sprjump[3] = spr_superdino_jump;
//roll
sprroll[0] = spr_player_roll;
sprroll[1] = spr_dinocorn_roll;
sprroll[2] = spr_dinobone_roll;
sprroll[3] = spr_superdino_roll;
alarm[4] = 2;

trail_on = global.allow_p;
if trail_on = 1{
	trail = instance_create_layer(x, y, "ly_objects", obj_trail);
}