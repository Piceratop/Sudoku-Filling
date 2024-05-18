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

function draw_test_text(_x, _y, _text) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var _c_color = draw_get_color();
	draw_set_color(obj_controller.ctx_color);
	draw_text(_x, _y, _text);
	draw_set_color(_c_color);
}