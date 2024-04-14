// Board properties
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
numpad_cell_width = 100;
numpad_center = [room_width - 550, room_height / 2];
numpad_current = undefined;
numpad_size = [4, 3];
numpad_top_left = [0, 0];
numpad_values = [
	[7, 8, 9],
	[4, 5, 6],
	[1, 2, 3],
	[0, "\u232b", "."]
];

// Painting properties
edge_color = c_black;
cell_font = fnt_number;
cell_font_color = c_black;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Debugging
show_debug_message("Type of font: {0}", typeof(fnt_number));