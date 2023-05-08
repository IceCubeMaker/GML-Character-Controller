//attaches the character controller to the avatar


function charcon_attach() {
	var char_con = instance_create(obj_character_controller);
	char_con.controlling_object = self;
}