// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dir_opposing(dir1, dir2){

// Calculate the angle between the two directions
angle = abs(angle_difference(dir1, dir2));

// Check if the angle is greater than or equal to 90 degrees
if (angle >= 120) {
    return true
} else return false;
}