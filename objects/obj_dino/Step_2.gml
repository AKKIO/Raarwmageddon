/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_left  = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_jump  = keyboard_check(vk_space);
key_roll = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift);
if instance_exists(obj_player){
	if place_meeting(x, y, obj_player){
		if hug <= hug_max && state = 0{
			hug++
		}
		if obj_player.state = 1 && obj_player.move !=0{
			hug+=3;
		}
	}else{
		hug = 0;
	}
	
	if hug >= hug_max && state = 0 && hugnt = 0 && obj_player.hugging !=1{
		state = 1;
		hug = 0;
		obj_player.hugging = 1;
	}
	
	if state > 0{
		x = obj_player.x;
		y = obj_player.y;
		image_index = obj_player.image_index;
		image_xscale = obj_player.image_xscale;
		if key_roll{
			state = 0;
			hugnt = 30;
			obj_player.hugging = 0;
		}
		if msg_allow = 0{
			msg_allow = 1;
			switch(dino){
				case(0): msg = instance_create_layer(x, y-16, "ly_instances", obj_dmsg2) break;//mesagge 1 normal dino
				case(1): msg = instance_create_layer(x, y-16, "ly_instances", obj_smmsg2) break;//mesage 1 smoking dino
				case(2): msg = instance_create_layer(x, y-16, "ly_objects", obj_dmsg2) break;//mesagge 1 normal dino
			}
		}
		if instance_exists(msg){
			msg.x = x-(image_xscale*6);
			msg.y = y-18
		}
	}
}else{
	state = 0;
}

switch(dino){
	case(0)://normal dino
		if state = 0{
			sprite_index = spr_dino_fall;
		}else if state = 1{
			sprite_index = spr_dino_idle;
		}
	break
	
	case(1)://smoking dino
		if state = 0{
			sprite_index = spr_smdino_fall;
		}else if state = 1{
			sprite_index = spr_smdino_idle;
		}
	break
	
	case(2)://unicorn
		if state = 0{
			sprite_index = spr_dinocornnpc_fall;
		}else if state = 1{
			sprite_index = spr_dinocornnpc_idle;
		}
	break
}

if state = 1{
	if key_left || key_right{
		switch(dino){
			case(0): sprite_index = spr_dino_run break;//normal dino
			case(1): sprite_index = spr_smdino_run break;//smoking dino
			case(2): sprite_index = spr_dinocornnpc_run break;//unicorn
		}
		
	}
	if key_jump{
		switch(dino){
			case(0): sprite_index = spr_dino_jump break;//normal dino
			case(1): sprite_index = spr_smdino_jump break;//smoking dino
			case(2): sprite_index = spr_dinocornnpc_jump break;//unicorn
		}
	}
}

if state = 0{
	//moods
	msg_allow = 0;
	
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
if hugnt > 0{
	hugnt--;
}
if instance_exists(obj_player){
	if distance_to_object(obj_player) > 32{
		state = 0;
	}
}