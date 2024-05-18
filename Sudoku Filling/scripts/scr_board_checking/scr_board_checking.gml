function position_in_grid(_p_x, _p_y, _left_grid, _top_grid, _no_h, _no_v, _cell_w) {
	var _grid_pos_x = floor((_p_x - _left_grid) / _cell_w);
	var _grid_pos_y = floor((_p_y - _top_grid) / _cell_w);
	if (_grid_pos_x < 0 || _grid_pos_x >= _no_v || _grid_pos_y < 0 || _grid_pos_y >= _no_h) {
		return undefined;
	}
	return [_grid_pos_x, _grid_pos_y];
}

function check_valid(_board_pos, _value, _board) {
	if (_board_pos == undefined || _value == undefined)
		return false;
	var _p_h = _board_pos[0];
	var _p_v = _board_pos[1];
	var _no_h = array_length(_board[0]);
	var _no_v = array_length(_board);
	for (ph = 0; ph < _no_h; ph++)
		if (ph != _p_h && _board[ph][_p_v] == _value)
			return false;
	for (pv = 0; pv < _no_v; pv++)
		if (pv != _p_v && _board[_p_h][pv] == _value) 
			return false;
	return true;
}