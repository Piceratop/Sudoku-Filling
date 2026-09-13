// Soft drop

if (get_key_soft_drop()) {
	fall_delay = fall_fast;
	if (alarm[0] > fall_delay) {
		fall_delay = fall_fast;
		alarm[0] = fall_fast;
	}
} else {
	fall_delay = fall_normal;
}

// Horizontal movement

var _key_left = get_key_move_left();
var _key_right = get_key_move_right();
var _key_left_pressed = get_key_move_left_pressed();
var _key_right_pressed = get_key_move_right_pressed();

if (_key_left_pressed && !_key_right_pressed) {
	move_dir = -1;
	if (!place_meeting(x - CELL_SIZE, y, obj_border)) {
		x -= CELL_SIZE;
	}
	alarm[1] = move_DAS;
} else if (_key_right_pressed && !_key_left_pressed) {
	move_dir = 1;
	if (!place_meeting(x + CELL_SIZE, y, obj_border)) {
		x += CELL_SIZE;
	}
	alarm[1] = move_DAS;
} else if (move_dir == -1) {
	if (!_key_left) {
		if (_key_right) {
			move_dir = 1;
			alarm[1] = move_DAS;
		} else {
			move_dir = 0;
			alarm[1] = -1;
		}
	}
} else if (move_dir == 1) {
	if (!_key_right) {
		if (_key_left) {
			move_dir = -1;
			alarm[1] = move_DAS;
		} else {
			move_dir = 0;
			alarm[1] = -1;
		}
	}
} else if (move_dir == 0) {
	if (_key_left && !_key_right) {
		move_dir = -1;
		if (!place_meeting(x - CELL_SIZE, y, obj_border)) {
			x -= CELL_SIZE;
		}
		alarm[1] = move_DAS;
	} else if (_key_right && !_key_left) {
		move_dir = 1;
		if (!place_meeting(x + CELL_SIZE, y, obj_border)) {
			x += CELL_SIZE;
		}
		alarm[1] = move_DAS;
	}
}