#macro DELTA_TIME delta_time*0.00006


//Uncomment these if you own the UC camera addon:
//instance_create(Camera);
//uc_set_mode(CMODE.OBJECT_FOLLOWING);
//uc_add_instance_following_list(self);

spd = 0;
dir = 0;
orig_acceleration = 0.5
orig_max_spd = 3;
max_spd = 3;
dash_start_spd = 8;
dash_spd = 0;
dash = true;
collision = false;
collision_spd = 0;
collision_dir = dir;
dash_cooldown = 10;
acceleration = 0.5
dash_timeout = 10;

controlling_object = -1;

movement_mode = "top down"

player_gravity = 9.81
y_spd = 0;
jump_strength = 4;