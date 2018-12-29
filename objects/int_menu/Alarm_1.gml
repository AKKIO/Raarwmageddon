/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
instance_create_layer(room_width/2, room_height-96, "ly_instances", obj_follower);
platform = irandom(2);
weird = 0;
poppop = 0;
platform_t = irandom(1);
plt = obj_platform_brick;
din_rng = 15;

for (var yy = 1; yy <= 30; yy ++){
	var XX = 48+(room_width/3)+(irandom(10))*16;
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
	if poppop = 2{
		var gg = irandom(50);
		if gg < 20{
			instance_create_layer(XX, YY-16, "ly_platforms", obj_big_hidraulic);
		}else{
			instance_create_layer(XX, YY-16, "ly_platforms", obj_small_hidraulic);
		}
	}
	
	if (yy = din_rng){
		din_allow = 1;
		instance_create_layer(XX, YY-18, "ly_objects", obj_dino);
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