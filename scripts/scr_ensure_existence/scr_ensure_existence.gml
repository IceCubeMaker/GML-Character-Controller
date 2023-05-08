// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ensure_existence(instance) {
	var new_instance = instance
	if !instance_exists(instance) new_instance = instance_create(instance);
	return new_instance;
}