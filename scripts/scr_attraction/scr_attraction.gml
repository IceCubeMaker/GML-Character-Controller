// This script should be placed in the step event of the objects you want to be attracted to the player

function attraction(object, attraction_strength) {
    // Calculate the distance between the object and the player
    var dist = distance_to_object(object);

    // Calculate the attraction force based on the distance and attraction strength
    var force = attraction_strength / dist;

    // Use the attraction force to determine the direction and speed at which to move the object
    var dir = point_direction(x, y, object.x, object.y);
    var item_speed = force * dist;

    // Increase the speed exponentially over time
    item_speed *= item_speed/4;

    // Use the move() function to move the object in the calculated direction and at the calculated speed
    move(dir, item_speed);
}