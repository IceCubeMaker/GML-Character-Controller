depth = shake_object.depth + 1;
shake_object.visible = false;

if ((ShakingCounter < shake_duration)) {
	if (shake_direction = "xy") {
		draw_sprite(shake_object.sprite_index, sprite_index.image_index, x + choose(-shake_strength, shake_strength), y + choose(-shake_strength, shake_strength));
	}
	if (shake_direction = "x") {
	draw_sprite(shake_object.sprite_index, sprite_index.image_index, x + choose(-shake_strength, shake_strength), y);
	}
if (shake_direction = "y") {
	draw_sprite(shake_object.sprite_index, sprite_index.image_index, x, y + choose(-shake_strength, shake_strength));
	}
} else {
	shake_object.visible = true;
	instance_destroy();
}
