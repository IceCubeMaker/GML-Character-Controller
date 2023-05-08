// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function smooth_to_target(value, target, spd){
	return ((target-value) / spd)*delta_time*0.00006;
}