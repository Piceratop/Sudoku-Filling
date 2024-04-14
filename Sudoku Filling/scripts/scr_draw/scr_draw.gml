function draw_rectangle_width(_x1, _y1, _x2, _y2, _width) {
    for (i = - _width div 2; i <= _width div 2; i++) {
		draw_rectangle(_x1 + i, _y1 + i, _x2 - i, _y2 - i, true);
	}
}

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