// This function moves the player in the specified dir,
// at the specified spd. It prevents the player from moving
// through solid objects, and adjusts the player's position
// so that they are directly touching the solid object when
// they collide.
function move(dir, spd)
{
	
	var collision = false;
    // Time scale is a constant used to convert the time interval
    // between frames into a more manageable value.
    // In this case, it is set to 1/10000, which means that
    // a time interval of 1 second will be represented as 10000.

    
    // Convert the dir parameter from a string to a numerical value
    // in degrees, if it is not already in that format.
    if (typeof(dir) == "string")
    {
        // Convert the string dir value into a numerical value in degrees.
        if (dir == "down") dir = 270;
        if (dir == "up") dir = 90;
        if (dir == "left") dir = 180;
        if (dir == "right") dir = 0;
		if (dir == "left_down" or dir == "down_left") dir = 225;
        if (dir == "right_down" or dir == "down_right") dir = 315;
        if (dir == "left_up" or dir == "up_left") dir = 135;
        if (dir == "right_up" or dir == "up_right") dir = 45;
    }

    // Calculate the x and y components of the movement based on the dir,
    // spd, delta_time, and time_scale values.
    var move_x = lengthdir_x(spd * delta_time/10000, dir);
    var move_y = lengthdir_y(spd * delta_time/10000, dir);

    // Check if the player is going to collide with a solid object
    // by moving in the specified dir.
	    if (!place_free(x+move_x, y))
        {   
		collision = "x";
		
        // If a collision is detected, adjust the player's position
        // so that they are directly touching the object.
        // This is done by moving the player slightly in the opposite
        // dir of their movement, until a non-colliding position
        // is found. The new position is then used to update the player's
        // position.
        while (place_free(x+sign(move_x), y)) 
        {
        // Move the player slightly in the opposite dir of their movement
        // until a non-colliding position is found.
        x += sign(move_x);
        }
		move_x = 0
		}
		
	    if (!place_free(x, y + move_y))
        {   
		
		if collision = "x" collision = "xy" else collision = "y";
	
		while (place_free(x, y+sign(move_y))) 
        {
        // Move the player slightly in the opposite dir of their movement
        // until a non-colliding position is found.
        y += sign(move_y);
        }
		// Calculate the new movement values based on the adjusted position.
		move_y = 0
        }
        // If a collision is detected, adjust the player's position
        // so that they are directly touching the object.
        // This is done by moving the player slightly in the opposite
        // dir of their movement, until a non-colliding position
        // is found. The new position is then used to update the player's
        // position.wa
		
    // Update the player's x and y position by adding the movement values.
    x += move_x*DELTA_TIME;
    y += move_y*DELTA_TIME;
	
	return collision
		
}