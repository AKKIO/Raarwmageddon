/// @description start vars

grav    = 0.4; //Gravity
spd		= 2.5;
vspd	= 0;
hspd	= 0;
move	= 0;
jspd	= 7;
roll	= 0;

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
instance_create_layer(x, y, "ly_instances", obj_follower);