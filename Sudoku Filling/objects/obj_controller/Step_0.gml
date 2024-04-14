if (mouse_check_button_pressed(mb_left)) {
	var _curr_board_pos = position_in_grid(
		mouse_x, mouse_y,
		board_top_left[0], board_top_left[1],
		board_size, board_size,
		board_cell_width
	);
	var _curr_numpad_pos = position_in_grid(
		mouse_x, mouse_y,
		numpad_top_left[0], numpad_top_left[1],
		numpad_size[0], numpad_size[1],
		numpad_cell_width
	);
	var _curr_numpad_value = (_curr_numpad_pos != undefined) 
		? numpad_values[_curr_numpad_pos[1]][_curr_numpad_pos[0]]
		: undefined;
	function refresh() {
		board_current_cell_position = undefined;
		numpad_current = undefined;
	}
	if (_curr_board_pos != undefined) {
		if (numpad_current != undefined) {
			board_values[_curr_board_pos[1]][_curr_board_pos[0]] = numpad_current;
			refresh();
		} else {
			board_current_cell_position = _curr_board_pos;	
		}
	} else if (_curr_numpad_value != undefined) {
		if (board_current_cell_position != undefined) {
			board_values[board_current_cell_position[1]][board_current_cell_position[0]] = _curr_numpad_value;
			refresh();
		} else {
			numpad_current = _curr_numpad_value;
		}
	} else {
		refresh();
	}
}

