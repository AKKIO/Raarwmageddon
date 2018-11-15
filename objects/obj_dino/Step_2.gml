/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_left  = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_jump  = keyboard_check(vk_space);
if instance_exists(obj_player){
	if place_meeting(x, y, obj_player){
		if key_up && state = 0{
			state = 1;
		}
	}
	
	if state > 0{
		x = obj_player.x;
		y = obj_player.y;
		image_index = obj_player.image_index;
		image_xscale = obj_player.image_xscale;
		if keyboard_check(vk_shift){
			state = 0;
		}
	}
}

switch(dino){
	case(0):
		if state = 0{
			sprite_index = spr_dino_fall;
		}else if state = 1{
			sprite_index = spr_dino_idle;
		}
	break
}

if state = 1{
	if key_left || key_right{
		switch(dino){
			case(0): sprite_index = spr_dino_run break;
		}
		
	}
	if key_jump{
		switch(dino){
			case(0): sprite_index = spr_dino_jump break;
		}
	}
}

if state = 0{
	//gravity
	if !place_meeting(x, y+1, obj_blockd){
		vspd += grav; //Apply gravity
	}
	
	//Vertical collision
	if(place_meeting(x, y + vspd, obj_blockd))
	{
	    while(!place_meeting(x, y + sign(vspd), obj_blockd))
	    {
	        y += sign(vspd);
	    }
	    vspd = 0;
	}
	y += vspd;
}