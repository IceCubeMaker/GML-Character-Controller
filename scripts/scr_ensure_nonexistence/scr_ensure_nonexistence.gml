// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ensure_nonexistence(instance){
	while instance_exists(instance) {
		instance_destroy(instance)
	}
}