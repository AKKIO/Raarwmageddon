/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
state = 0;
dino = irandom(1);

//normal dino
sprite_fell = spr_dino_fall;
sprite_idle	= spr_dino_idle;

grav    = 0.3;
vspd	= 0;

hug = 0;
hugnt = 0;
hug_max = 15;

//shader
uPixelH = shader_get_uniform(sh_outline, "pixelH");
uPixelW = shader_get_uniform(sh_outline, "pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index, 0));
colorR = shader_get_uniform(sh_outline, "ColorR");
colorG = shader_get_uniform(sh_outline, "ColorG");
colorB = shader_get_uniform(sh_outline, "ColorB");