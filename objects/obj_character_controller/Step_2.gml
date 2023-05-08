
if controlling_object != -1 {
controlling_object.x = x;
controlling_object.y = y;
sprite_index = controlling_object.sprite_index;
if !instance_exists(controlling_object) instance_destroy();
} else {
	show_error("character does not have", true);
}