//// Handle mouse input

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

// Handle board change
function refresh() {
	instance_destroy(obj_status);
	board_current_cell_position = undefined;
	numpad_current = undefined;
}
if (mouse_check_button_pressed(mb_left)) {
	if (_curr_board_pos != undefined) {
		if (_curr_board_value != undefined) {
			create_status(
				board_top_left[0] + (_curr_board_pos[0] + 0.5) * board_cell_width,
				board_top_left[1] + (_curr_board_pos[1] + 0.5) * board_cell_width,
				"error",
				board_cell_width
			)
		} else if (numpad_current != undefined) {
			fill_in_value(board_values, _curr_board_pos, numpad_current);
			refresh();
		} else {
			create_status(
				board_top_left[0] + (_curr_board_pos[0] + 0.5) * board_cell_width,
				board_top_left[1] + (_curr_board_pos[1] + 0.5) * board_cell_width,
				"selected",
				board_cell_width
			);
			board_current_cell_position = _curr_board_pos;	
		}
	} else if (!position_meeting(mouse_x, mouse_y, obj_numpad)) {
		refresh();
	}
}
if (mouse_check_button_pressed(mb_right)) {
	refresh();
}
//// Show selected cell