/// @description Insert description here
// You can write your code in this editor
//y+=spd;
if y > camera_get_view_y(view_camera)+(camera_get_view_height(view_camera)){
	instance_destroy();
}
if trail_on = 1{
trail.x = x;
trail.y = y;
trail.imdx = image_index;
trail.spdx = sprite_index;
trail.rot = image_angle;
trail.col = image_blend;
trail.dur = 3;
trail.start = 15;
}