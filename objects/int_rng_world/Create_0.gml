/// @description Insert description here
// You can write your code in this editor
randomize();

//start vars
platform = irandom(2);
weird = 0;
poppop = 0;

for (var yy = 1; yy <= 15; yy ++){
	var XX = (5+irandom(10))*16;
	platform = irandom(2);
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
	
	switch(platform){
		case(0):
			instance_create_layer(XX+16, YY, "ly_platforms", obj_platform);
			instance_create_layer(XX+32, YY, "ly_platforms", obj_platform);
			instance_create_layer(XX, YY, "ly_platforms", obj_platform);
			instance_create_layer(XX-16, YY, "ly_platforms", obj_platform);
			instance_create_layer(XX-32, YY, "ly_platforms", obj_platform);
		break;
		
		case(1):
			instance_create_layer(XX+16, YY, "ly_platforms", obj_platform);
			instance_create_layer(XX+32, YY, "ly_platforms", obj_platform);
			instance_create_layer(XX, YY, "ly_platforms", obj_platform);
			instance_create_layer(XX-16, YY, "ly_platforms", obj_platform);
			instance_create_layer(XX-32, YY, "ly_platforms", obj_platform);
		break;
		
		case(2):
			weird = irandom(100);
			if weird < 20{
				instance_create_layer(XX+16, YY, "ly_platforms", obj_platform);
				instance_create_layer(XX+32, YY, "ly_platforms", obj_platform);
				instance_create_layer(XX+48, YY, "ly_platforms", obj_platform);
				instance_create_layer(XX, YY, "ly_platforms", obj_platform);
				instance_create_layer(XX-16, YY, "ly_platforms", obj_platform);
				instance_create_layer(XX-32, YY, "ly_platforms", obj_platform);
				instance_create_layer(XX-48, YY, "ly_platforms", obj_platform);
			}else{
				instance_create_layer(XX+16, YY, "ly_platforms", obj_platform);
				instance_create_layer(XX+32, YY, "ly_platforms", obj_platform);
				instance_create_layer(XX, YY, "ly_platforms", obj_platform);
				instance_create_layer(XX-16, YY, "ly_platforms", obj_platform);
				instance_create_layer(XX-32, YY, "ly_platforms", obj_platform);
			}
		break;
	
	}
	
}
instance_destroy();