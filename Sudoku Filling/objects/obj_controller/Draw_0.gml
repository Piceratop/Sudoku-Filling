// Board drawing
board_top_left = draw_grid_with_values(
	board_center[0],
	board_center[1],
	board_values,
	board_cell_width,
	9, 3, edge_color, cell_font, cell_font_color
);

// Numpad drawing

numpad_top_left = draw_grid_with_values(
	numpad_center[0],
	numpad_center[1],
	availability_numpad,
	numpad_cell_width,
	5, 5, edge_color, cell_font, cell_font_color
);