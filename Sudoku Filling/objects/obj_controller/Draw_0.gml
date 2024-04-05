var _left_position = board_center[0] - board_size / 2 * cell_width;
var _right_position = board_center[0] + board_size / 2 * cell_width;
var _up_position = board_center[1] - board_size / 2 * cell_width;
var _down_position = board_center[1] + board_size / 2 * cell_width;
draw_set_color(edge_color);

draw_rectangle_width(_left_position, _up_position, _right_position, _down_position, 9);
