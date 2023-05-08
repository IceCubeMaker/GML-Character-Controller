// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instance_create_xy(object, x_pos,y_pos) {
     var new_object = instance_create_depth(x_pos,y_pos,depth,object);
	 return new_object;
}