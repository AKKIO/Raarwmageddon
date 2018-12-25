/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ini_open(working_directory + "/save_files/"+"save.ini");
global.allow_p = ini_read_real("options", "particles", 1);
ini_close();
if global.allow_p = 1{
global.partsys[0] = part_system_create();

//create particles
global.part[0] = part_type_create();
part_type_sprite(global.part[0], spr_particle_00, 0, 0, 0);
part_type_gravity(global.part[0], .2, -90);
part_type_speed(global.part[0], 0, 1, .1, 0);
part_type_direction(global.part[0], 80, 100, 0, 0);
part_type_orientation(global.part[0], 0, 360, 0, 10, 5);
part_type_size(global.part[0], .5, 1.5, 0, 0);
}