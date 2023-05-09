// This function moves the player in the specified direction,
// at the specified speed. It prevents the player from moving
// through solid objects, and adjusts the player's position
// so that they are directly touching the solid object when
// they collide.
function move(direction, speed)
{
	
	var collision = false;
    // Time scale is a constant used to convert the time interval
    // between frames into a more manageable value.
    // In this case, it is set to 1/10000, which means that
    // a time interval of 1 second will be represented as 10000.
    var time_scale = 1/10000;
    
    // Convert the direction parameter from a string to a numerical value
    // in degrees, if it is not already in that format.
    var dir = direction;
    if (typeof(direction) == "string")
    {
        // Convert the string direction value into a numerical value in degrees.
        if (direction == "down") dir = 270;
        if (direction == "up") dir = 90;
        if (direction == "left") dir = 180;
        if (direction == "right") dir = 0;
		if (direction == "left_down" or direction == "down_left") dir = 225;
        if (direction == "right_down" or direction == "down_right") dir = 315;
        if (direction == "left_up" or direction == "up_left") dir = 135;
        if (direction == "right_up" or direction == "up_right") dir = 45;
    }

    // Calculate the x and y components of the movement based on the direction,
    // speed, delta_time, and time_scale values.
    var move_x = lengthdir_x(speed * delta_time * time_scale, dir);
    var move_y = lengthdir_y(speed * delta_time * time_scale, dir);

    // Check if the player is going to collide with a solid object
    // by moving in the specified direction.
	    var new_x = x + move_x;
        var new_y = y + move_y;
	    if (!place_free(x + move_x, y))
        {   
		collision = "x";
		
        // If a collision is detected, adjust the player's position
        // so that they are directly touching the object.
        // This is done by moving the player slightly in the opposite
        // direction of their movement, until a non-colliding position
        // is found. The new position is then used to update the player's
        // position.
		var i = 0;
        while (!place_free(new_x, y) and i < 100) 
        {
        // Move the player slightly in the opposite direction of their movement
        // until a non-colliding position is found.
        new_x += sign(move_x);
		i++;
        }
		move_x = 0
		}
		
	    if (!place_free(x, y + move_y))
        {   
		
		if collision = "x" collision = "xy" else collision = "y";
        // If a collision is detected, adjust the player's position
        // so that they are directly touching the object.
        // This is done by moving the player slightly in the opposite
        // direction of their movement, until a non-colliding position
        // is found. The new position is then used to update the player's
        // position.
		var i = 0;
        while (!place_free(x, new_y) and i < 100) 
        {
        // Move the player slightly in the opposite direction of their movement
        // until a non-colliding position is found.
        new_y += sign(move_y);
		i++;
        }

        // Calculate the new movement values based on the adjusted position.
		move_y = 0
        }
		
    // Update the player's x and y position by adding the movement values.
    x += move_x*DELTA_TIME;
    y += move_y*DELTA_TIME;
	
	return collision
		
}