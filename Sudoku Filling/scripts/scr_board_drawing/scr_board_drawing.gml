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

function setup_draw(_halign, _valign, _color) {
	_halign = is_undefined(_halign) ? fa_center : _halign;
	_valign = is_undefined(_valign) ? fa_middle : _valign;
	_color = is_undefined(_color) ? obj_controller.ctx_color : _color;
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	draw_set_color(_color);
}