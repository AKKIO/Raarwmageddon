/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
instance_create_layer(0, 0, "ly_instances", int_rng_world)//world generator
instance_create_layer(0, 0, "ly_instances", int_particle_sys)//particles
instance_create_layer(0, 0, "ly_instances", int_shitmaker)//shit maker
instance_create_layer(0, 0, "ly_instances", int_GUI)//GUI
instance_create_layer(0, 0, "ly_instances", int_surfacesColor)//surfaces and color
instance_create_layer(room_width/2, (room_height)-(32), "ly_objects", obj_small_hidraulic)//firs hidraulic