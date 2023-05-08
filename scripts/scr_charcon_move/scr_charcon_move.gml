// this is for if you need the character controller to move based on other factors than the controller input

function charcon_move(dir, spd){
	with (obj_character_controller) {
		move(dir, spd);
	}
}