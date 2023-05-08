function shake_sprite(duration, strength, axis)
{
	var shaker = instance_create_depth(x, y, 0, oShakingXY); //change the layer name to one layer above your things to shake
	shaker.shake_duration = duration * 60;
	shaker.shake_strength = strength;
	shaker.shake_object = self;
	shaker.shake_direction = axis;
}