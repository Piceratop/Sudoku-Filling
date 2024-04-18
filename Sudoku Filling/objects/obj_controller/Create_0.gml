// Board properties
_curr_board_pos = undefined;
_curr_board_value = undefined;
board_cell_width = 150;
board_center = [550, room_height / 2];
board_current_cell_position = undefined;
board_size = 4;
board_top_left = [0, 0];
board_values = [];
for (i = 0; i < board_size; i++) {
	bv = [];
	for (j = 0; j < board_size; j++) {
		array_push(bv, undefined);
	}
	array_push(board_values, bv);
}
max_input = 3;

// Numpad properties
_curr_numpad_pos = undefined;
_curr_numpad_value = undefined;
numpad_cell_width = 100;
numpad_center = [room_width - 550, room_height / 2];
numpad_current_cell_position = undefined;
numpad_current = undefined;
numpad_size = [4, 3];
numpad_top_left = [0, 0];
numpad_values = [
	[7, 8, 9],
	[4, 5, 6],
	[1, 2, 3],
	[0, "\u232b", "."]
];

// Gaming properties
allowed_values = [1, 2, 3, 4];
availability_numpad = [];
for (i = 0; i < numpad_size[0]; i++) {
	var _a = [];
	for (j = 0; j < numpad_size[1]; j++) {
		var _curr = numpad_values[i][j];
		if (array_contains(allowed_values, _curr) || _curr == "\u232b") {
			array_push(_a, _curr);
		} else {
			array_push(_a, undefined);
		}
	}
	array_push(availability_numpad, _a);
}

// Painting properties
edge_color = c_black;
cell_font = fnt_number;
cell_font_color = c_black;
highlight_color = make_color_rgb(101, 189, 222);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Debugging
show_debug_message("Type of font: {0}", typeof(fnt_number));