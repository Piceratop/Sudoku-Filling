/**
 * Draws a rectangle with a specified coordinate.
 * @param {real} _x1 - The x-coordinate of the top-left corner of the rectangle.
 * @param {real} _y1 - The y-coordinate of the top-left corner of the rectangle.
 * @param {real} _x2 - The x-coordinate of the bottom-right corner of the rectangle.
 * @param {real} _y2 - The y-coordinate of the bottom-right corner of the rectangle.
 * @param {real} _width - The width of the border of the rectangle.
 * @returns {undefined}
 */
function draw_rectangle_width(_x1, _y1, _x2, _y2, _width) {
    for (i = - _width div 2; i <= _width div 2; i++) {
		draw_rectangle(_x1 + i, _y1 + i, _x2 - i, _y2 - i, true);
	}
}

/**
 * Draws an extended grid with specified parameters.
 * @param {real} _x - The x-coordinate of the center of the grid.
 * @param {real} _y - The y-coordinate of the center of the grid.
 * @param {real} _no_h - The number of horizontal rows in the grid.
 * @param {real} _no_v - The number of vertical columns in the grid.
 * @param {real} _cell_w - The width of each cell in the grid.
 * @param {real} _out_w - The width of border of the outer rectangle (positive integer).
 * @param {real} _in_w - The width of the inner grid lines (positive integer).
 * @returns {array<real>} An array containing the top and left coordinates of the grid.
 */
function draw_grid_ext(_x, _y, _no_h, _no_v, _cell_w, _out_w, _in_w) {
	var _top = _y - _no_h / 2 * _cell_w;
	var _bottom = _y + _no_h / 2 * _cell_w;
	var _left = _x - _no_v / 2 * _cell_w;
	var _right = _x + _no_v / 2 * _cell_w;
	draw_rectangle_width(_left, _top, _right, _bottom, _out_w);
	for (i = 1; i < _no_h; i++) {
		draw_line_width(_left, _top + i * _cell_w, _right, _top + i * _cell_w, _in_w);
	}
	for (i = 1; i < _no_v; i++) {
		draw_line_width(_left + i * _cell_w, _top, _left + i * _cell_w, _bottom, _in_w);
	}
	return [_top, _left];
}

function draw_grid_with_values(
	_x,
	_y,
	_values_grid,
	_cell_w,
	_out_w,
	_in_w,
	_edge_color,
	_font,
	_font_color,
) {
	var _no_h = array_length(_values_grid);
	var _no_v = array_length(_values_grid[0]);
	var _top = _y - _no_h / 2 * _cell_w;
	var _bottom = _y + _no_h / 2 * _cell_w;
	var _left = _x - _no_v / 2 * _cell_w;
	var _right = _x + _no_v / 2 * _cell_w;
	
	draw_set_color(_edge_color);
	draw_rectangle_width(_left, _top, _right, _bottom, _out_w);
	for (i = 1; i < _no_h; i++) {
		draw_line_width(_left, _top + i * _cell_w, _right, _top + i * _cell_w, _in_w);
	}
	for (i = 1; i < _no_v; i++) {
		draw_line_width(_left + i * _cell_w, _top, _left + i * _cell_w, _bottom, _in_w);
	}
	
	draw_set_font(_font);
	draw_set_color(_font_color);
	for (id_row = 0; id_row < _no_h; id_row++) {
		for (id_col = 0; id_col < _no_v; id_col++) {
			var _c = _values_grid[id_row][id_col];
			if (_c != undefined) {
				draw_text(
					_left + (id_col + 0.5) * _cell_w,
					_top + (id_row + 0.5) * _cell_w,
					string(_c)
				);
			}
		}
	}
	return [_left, _top];
}

/**
 * Draws a highlight rectangle on a grid.
 * @param {array<real>} _grid_tl - The top-left coordinates of the grid.
 * @param {array<real>} _cell_pos - The position of the cell within the grid (optional).
 * @param {real} _cell_w - The width of each cell in the grid.
 * @returns {undefined}
 */
function draw_highlight(_grid_tl, _cell_pos, _cell_w) {
    if (_cell_pos != undefined) {
        draw_rectangle(
            _grid_tl[0] + _cell_pos[0] * _cell_w,
            _grid_tl[1] + _cell_pos[1] * _cell_w,
            _grid_tl[0] + (_cell_pos[0] + 1) * _cell_w,
            _grid_tl[1] + (_cell_pos[1] + 1) * _cell_w,
            false
        );
    }
}