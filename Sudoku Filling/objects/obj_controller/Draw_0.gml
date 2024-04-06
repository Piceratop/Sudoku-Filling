// Board drawing
draw_set_color(edge_color);
draw_grid_ext(board_center[0], board_center[1], board_size, board_size, board_cell_width, 9, 3);

// Numpad drawing
draw_grid_ext(numpad_center[0], numpad_center[1], numpad_size[0], numpad_size[1], numpad_cell_width, 5, 5);

