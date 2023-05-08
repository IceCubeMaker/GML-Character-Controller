// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ensure_existence_xy(instance, x_pos, y_pos) {
	var new_instance = instance
	if !instance_exists(instance) new_instance = instance_create(instance);
	new_instance.x = x_pos;
	new_instance.y = y_pos
	return new_instance;
}