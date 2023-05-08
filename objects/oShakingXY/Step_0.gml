ShakingCounter += delta_time * .00006;
shake_strength -= delta_time * .000006;
if shake_strength < 0 shake_strength = 0;

if !instance_exists(shake_object) {
	shake_object.visible = true;
	instance_destroy();
}