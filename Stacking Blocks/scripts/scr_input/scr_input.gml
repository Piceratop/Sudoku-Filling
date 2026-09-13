function get_key_move_right() {
	return keyboard_check(vk_right);
}

function get_key_move_right_pressed() {
	return keyboard_check_pressed(vk_right);
}

function get_key_move_left() {
	return keyboard_check(vk_left);
}

function get_key_move_left_pressed() {
	return keyboard_check_pressed(vk_left);
}

function get_key_soft_drop() {
	return keyboard_check(vk_down);
}

function get_key_hard_drop() {
	return keyboard_check(vk_space);
}
