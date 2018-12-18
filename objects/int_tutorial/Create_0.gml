/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
instance_create_layer(x, y, "ly_instances", int_cloud_rng);
instance_create_layer(x, y, "ly_instances", int_surfacesColor);
instance_create_layer(room_width/2, room_height-64, "ly_instances", obj_follower);
instance_create_layer((room_width/2)+8, room_height-80 , "ly_instances", obj_player);
instance_create_layer(room_width/2, (room_height)/2, "ly_instances", int_camera);