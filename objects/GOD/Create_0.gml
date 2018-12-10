/// @description start vars

//vars
global.details = 6;
global.demo = 0; 

//create instances and objects
instance_create_layer(room_width/2, (room_height)-(48), "ly_objects", obj_player)//player
instance_create_layer(0, 0, "ly_instances", int_surfacesColor)//surfaces and colors
instance_create_layer(0, 0, "ly_instances", int_rng_world)//world generator
instance_create_layer(0, 0, "ly_instances", int_particle_sys)//world generator
instance_create_layer(0, 0, "ly_instances", int_shitmaker)//shit maker
instance_create_layer(0, 0, "ly_instances", int_GUI)//GUI
instance_create_layer(x, y, "ly_instances", int_cloud_rng);
instance_create_layer(room_width/2, (room_height)-(32), "ly_objects", obj_small_hidraulic)//firs hidraulic
instance_create_layer(room_width/2, (room_height)/2, "ly_instances", int_camera)//camera

//barrier safezone
for(var b = 0; b <=14; b++){
	for(var bb = 0; bb <=5; bb++){
		instance_create_layer(16+(room_width/3)+(b*16), (room_height-20)-(bb*16), "ly_barrier", obj_barrier);
	}
}