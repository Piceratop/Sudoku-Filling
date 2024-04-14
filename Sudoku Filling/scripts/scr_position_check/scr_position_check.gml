function position_in_grid(_p_x, _p_y, _left_grid, _top_grid, _no_h, _no_v, _cell_w) {
	var _grid_pos_x = floor((_p_x - _left_grid) / _cell_w);
	var _grid_pos_y = floor((_p_y - _top_grid) / _cell_w);
	if (_grid_pos_x < 0 || _grid_pos_x >= _no_v || _grid_pos_y < 0 || _grid_pos_y >= _no_h) {
		return undefined;
	}
	return [_grid_pos_x, _grid_pos_y];
}