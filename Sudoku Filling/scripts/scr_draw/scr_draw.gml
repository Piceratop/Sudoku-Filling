/**
 * @function draw_rectangle_width(_x1, _y1, _x2, _y2, _width);
 * Draws a rectangle with specified width of the outline.
 * @param {real} _x1 - The x-coordinate of the top-left corner.
 * @param {real} _y1 - The y-coordinate of the top-left corner.
 * @param {real} _x2 - The x-coordinate of the bottom-right corner.
 * @param {real} _y2 - The y-coordinate of the bottom-right corner.
 * @param {real} _width - The width of the outline of the rectangle.
 */
function draw_rectangle_width(_x1, _y1, _x2, _y2, _width) {
    for (i = - _width div 2; i <= _width div 2; i++) {
		draw_rectangle(_x1 + i, _y1 + i, _x2 - i, _y2 - i, true);
	}
}
