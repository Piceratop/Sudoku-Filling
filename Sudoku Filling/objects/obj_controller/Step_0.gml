//// Handle mouse input

if (mouse_check_button_pressed(mb_left)) {
	var _grid_pos = position_in_grid(
		mouse_x, mouse_y,
		board_top_left[0], board_top_left[1],
		board_size, board_size, board_cell_width
	);
	if (_grid_pos != undefined) {
		var _p_x = board_top_left[0] + board_cell_width * (_grid_pos[0] + 0.5);
		var _p_y = board_top_left[1] + board_cell_width * (_grid_pos[1] + 0.5);
		if (board_values[_grid_pos[1]][_grid_pos[0]] != undefined) {
			create_status(_p_x, _p_y, "error", board_cell_width, board_cell_width);
		} else {
			board_pos_current = _grid_pos;
			with (obj_status) {
				if (status == "selected" && !place_meeting(x, y, obj_numpad)) {
					instance_destroy();
				}
			}
			create_status(_p_x, _p_y, "selected", board_cell_width, board_cell_width);
		}
	} else if (!position_meeting(mouse_x, mouse_y, obj_numpad)) {
		refresh();
	}
}