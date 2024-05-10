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