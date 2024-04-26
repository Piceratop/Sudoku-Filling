// Board properties
_curr_board_pos = undefined;
_curr_board_value = undefined;
board_cell_width = 120;
board_center = [350, room_height / 2];
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
numpad_cell_gap = 70;
numpad_center = [room_width - 150, room_height / 2];
numpad_current = undefined;
numpad_size = [4, 3];
numpad_values = [
	[7, 8, 9],
	[4, 5, 6],
	[1, 2, 3],
	[0, ".", "\u232b"]
];

// Gaming properties
allowed_values = [1, 2, 3, 4];
availability_numpad = [];
for (i = 0; i < numpad_size[0]; i++) {
	var _a = [];
	var _left = numpad_center[0] - (numpad_size[1] - 1) / 2 * numpad_cell_gap;
	var _top = numpad_center[1] - (numpad_size[0] - 1) / 2 * numpad_cell_gap;
	for (j = 0; j < numpad_size[1]; j++) {
		var _curr = numpad_values[i][j];
		if (!array_contains(allowed_values, _curr) && _curr != "\u232b") {
			_curr = undefined;
		}
		array_push(_a, _curr);
		var _numpad_cell = instance_create_layer(
			_left + j * numpad_cell_gap,
			_top + i * numpad_cell_gap,
			"Numpad",
			obj_numpad, {
				value: _curr
			}
		);
	}
	array_push(availability_numpad, _a);
}
current_player_id = 1

// Painting properties
edge_color = c_black;
cell_font = fnt_number;
cell_font_color = c_black;
highlight_color = make_color_rgb(101, 189, 222);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Debugging