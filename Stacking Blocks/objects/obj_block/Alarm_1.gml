// For horizontal movements

if (move_dir == -1 && !get_key_move_left()) {
	move_dir = 0;
} else if (move_dir == 1 && !get_key_move_right()) {
	move_dir = 0;
}

if (move_dir != 0) {
	if (!place_meeting(x + move_dir * CELL_SIZE, y, obj_border)) {
		x += move_dir * CELL_SIZE;
	}
	alarm[1] = move_ARR;
}