/// @description Insert description here
// You can write your code in this editor
randomize();

//start vars
platform = irandom(2);
weird = 0;
poppop = 0;
platform_t = irandom(1);
plt = obj_platform_brick;
hidraulic_t = 1;;
hlt = obj_small_hidraulic;
din_rng = irandom_range(15, 20);
din_allow = 0;
lvl_dif = 0;

if instance_exists(int_GUI){
	if global.level > 15{
		lvl_dif = (((global.level-15)*100)/30);
	}else if global.level < 15{
		lvl_dif = 0;
	}
	
	lvl_difh = (((global.level)*100)/30);
}
for (var topl = 0; topl <= 14; topl++){
	instance_create_layer((16+(room_width/3))+(topl*16), y+48, "ly_platforms", obj_platform_brick);
}

for (var yy = 2; yy <= 31; yy ++){
	var XX = 48+(room_width/3)+(irandom(10))*16;
	platform = irandom(2);
	platform_t = irandom(1);
	hidraulic_t = irandom(1);
	if platform_t = 0{
		plt = obj_platform;
	}else if platform_t = 1{
		plt = obj_platform_brick;
	}else if platform_t = 2{
		plt = obj_platform_sand;
	}
	if hidraulic_t = 0{
		hlt = obj_small_hidraulic;
	}else if hidraulic_t = 1{
		hlt = obj_big_hidraulic;
	}
	if instance_exists(int_GUI){
		var dif_hidraulic = irandom(100);
		if dif_hidraulic <= lvl_difh{
			hlt = obj_small_xhidraulic;
		}
	}
	
	var YY = yy*48;
	poppop = irandom(4);
	if poppop <= 1{
		instance_create_layer(XX, YY-16, "ly_platforms", hlt);
	}
	
	//generate dino
	if (yy = din_rng) && din_allow = 0{
		din_allow = 1;
		instance_create_layer(XX, YY-18, "ly_objects", obj_dino);
	}
	
	var dif_plat = irandom(100);
	if instance_exists(int_GUI){
		if dif_plat <= lvl_dif && lvl_dif !=0{
			plt = obj_platform_sand;
		}
	}
	
	
	switch(platform){
		case(0):
			instance_create_layer(XX+16, YY, "ly_platforms", plt);
			instance_create_layer(XX+32, YY, "ly_platforms", plt);
			instance_create_layer(XX, YY, "ly_platforms", plt);
			instance_create_layer(XX-16, YY, "ly_platforms", plt);
			instance_create_layer(XX-32, YY, "ly_platforms", plt);
		break;
		
		case(1):
			instance_create_layer(XX+16, YY, "ly_platforms", plt);
			instance_create_layer(XX+32, YY, "ly_platforms", plt);
			instance_create_layer(XX, YY, "ly_platforms", plt);
			instance_create_layer(XX-16, YY, "ly_platforms", plt);
			instance_create_layer(XX-32, YY, "ly_platforms", plt);
		break;
		
		case(2):
			weird = irandom(100);
			if weird < 20{
				instance_create_layer(XX+16, YY, "ly_platforms", plt);
				instance_create_layer(XX+32, YY, "ly_platforms", plt);
				instance_create_layer(XX+48, YY, "ly_platforms", plt);
				instance_create_layer(XX, YY, "ly_platforms", plt);
				instance_create_layer(XX-16, YY, "ly_platforms", plt);
				instance_create_layer(XX-32, YY, "ly_platforms", plt);
				instance_create_layer(XX-48, YY, "ly_platforms", plt);
			}else{
				instance_create_layer(XX+16, YY, "ly_platforms", plt);
				instance_create_layer(XX+32, YY, "ly_platforms", plt);
				instance_create_layer(XX, YY, "ly_platforms", plt);
				instance_create_layer(XX-16, YY, "ly_platforms", plt);
				instance_create_layer(XX-32, YY, "ly_platforms", plt);
			}
		break;
	
	}
	
}
for(var b = 0; b <=14; b++){
	for(var bb = 0; bb <=5; bb++){
		instance_create_layer(16+(room_width/3)+(b*16), (bb*16), "ly_barrier", obj_safezonetop);
	}
}