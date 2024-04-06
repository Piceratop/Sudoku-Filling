/**
 * @function draw_rectangle_width(_x1, _y1, _x2, _y2, _width);
 * Draws a rectangle with specified width of the outline.
 * @param {real} _x1 - The x-coordinate of the top-left corner (in pixel).
 * @param {real} _y1 - The y-coordinate of the top-left corner (in pixel).
 * @param {real} _x2 - The x-coordinate of the bottom-right corner (in pixel).
 * @param {real} _y2 - The y-coordinate of the bottom-right corner (in pixel).
 * @param {real} _width - The width of the outline of the rectangle (in pixel).
 */
function draw_rectangle_width(_x1, _y1, _x2, _y2, _width) {
    for (i = - _width div 2; i <= _width div 2; i++) {
		draw_rectangle(_x1 + i, _y1 + i, _x2 - i, _y2 - i, true);
	}
}

/**
 * @function draw_grid_ext(_x1, _y1, _x2, _y2, _width);
 * Draws a grid centered at position (_x, _y) with given outside and inside thickness.
 * @param {real} _x - The x-coordinate of the center of the grid (in pixel).
 * @param {real} _y - The y-coordinate of the center of the grid (in pixel).
 * @param {real} _no_h - Number of columns in the grid.
 * @param {real} _no_v - Number of rows in the grid.
 * @param {real} _cell_w - The width of the cell (in pixel).
 * @param {real} _out_w - The width of the outside edges of the grid (in pixel).
 * @param {real} _in_w - The width of the inside edges of the grid (in pixel).
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
}