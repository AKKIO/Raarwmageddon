/// @description Insert description here
// You can write your code in this editor
randomize();

//start vars
platform = irandom(2);
weird = 0;
poppop = 0;
platform_t = irandom(1);
plt = obj_platform_brick;
din_rng = irandom_range(15, 20);
din_allow = 0;
for (var yy = 1; yy <= 30; yy ++){
	var XX = (5+irandom(10))*16;
	platform = irandom(2);
	platform_t = irandom(1);
	if platform_t = 0{
		plt = obj_platform;
	}else if platform_t = 1{
		plt = obj_platform_brick;
	}
	var YY = yy*48;
	poppop = irandom(4);
	if poppop = 1{
		instance_create_layer(XX, YY-16, "ly_platforms", obj_small_hidraulic);
	}
	
	//generate dino
	if (yy = din_rng) && din_allow = 0{
		din_allow = 1;
		instance_create_layer(XX, YY-18, "ly_objects", obj_dino);
	}
	
	if poppop = 2{
		var gg = irandom(50);
		if gg < 20{
			instance_create_layer(XX, YY-16, "ly_platforms", obj_big_hidraulic);
		}else{
			instance_create_layer(XX, YY-16, "ly_platforms", obj_small_hidraulic);
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