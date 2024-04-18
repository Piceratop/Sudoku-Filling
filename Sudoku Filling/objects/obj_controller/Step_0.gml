// Find the cell or value at the clicked position.
_curr_board_pos = position_in_grid(
	mouse_x, mouse_y,
	board_top_left[0], board_top_left[1],
	board_size, board_size,
	board_cell_width
);
_curr_board_value = (_curr_board_pos!= undefined)
	? board_values[_curr_board_pos[1]][_curr_board_pos[0]]
	: undefined;
_curr_numpad_pos = position_in_grid(
	mouse_x, mouse_y,
	numpad_top_left[0], numpad_top_left[1],
	numpad_size[0], numpad_size[1],
	numpad_cell_width
);
_curr_numpad_value = (_curr_numpad_pos != undefined) 
	? availability_numpad[_curr_numpad_pos[1]][_curr_numpad_pos[0]]
	: undefined;
if (mouse_check_button_pressed(mb_left)) {
	/* Check if:
	 * - The numpad choice is not blank;
	 * - The board choice is blank.
	 * If the check failed, create a failed status (code 0).
	 * If the check passed, fill in the value in the designated cell.
	 */
	function refresh() {
		board_current_cell_position = undefined;
		numpad_current_cell_position = undefined;
		numpad_current = undefined;
	}
	if (_curr_board_pos != undefined) {
		if (_curr_board_value != undefined) {
			create_status(
				board_top_left[0] + (_curr_board_pos[0] + 0.5) * board_cell_width,
				board_top_left[1] + (_curr_board_pos[1] + 0.5) * board_cell_width,
				"danger",
				board_cell_width
			)
		} else if (numpad_current != undefined) {
			fill_in_value(board_values, _curr_board_pos, numpad_current);
			refresh();
		} else {
			board_current_cell_position = _curr_board_pos;	
		}
	} else if (_curr_numpad_pos != undefined) {
		if (_curr_numpad_value == undefined) {
			create_status(
				numpad_top_left[0] + (_curr_numpad_pos[0] + 0.5) * numpad_cell_width,
				numpad_top_left[1] + (_curr_numpad_pos[1] + 0.5) * numpad_cell_width,
				"danger",
				numpad_cell_width
			);
		} else if (board_current_cell_position != undefined) {
			fill_in_value(board_values, board_current_cell_position, _curr_numpad_value);
			refresh();
		} else {
			numpad_current_cell_position = _curr_numpad_pos;
			numpad_current = _curr_numpad_value;
		}
	} else {
		refresh();
	}
}

