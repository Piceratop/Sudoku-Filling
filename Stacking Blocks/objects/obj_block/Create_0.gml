event_inherited();

// Drop

fall_fast = obj_controller.fall_fast;
fall_normal = obj_controller.fall_normal;
fall_delay = obj_controller.fall_delay;
alarm[0] = fall_delay;

// Horizontal movements

move_DAS = game_get_speed(gamespeed_fps) div 2;
//move_ARR = max(1, game_get_speed(gamespeed_fps) div 20);
move_ARR = 1;
move_arr = move_ARR;
move_dir = 0;
