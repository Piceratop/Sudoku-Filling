function fill_in_value(_board, _pos, _value) {
	
	switch (_value) {
		case "\u232b":
			_board[_pos[0]][_pos[1]] = undefined;
			break;
		case ".":
			break;
		default:
			_board[_pos[0]][_pos[1]] = _value;	
	}
}

function create_status(_x, _y, _status, _cell_w, _cell_h) {
	with (obj_status) {
		if (status == "error" or status == _status) {
			instance_destroy();
		}
	}
	var _stat = instance_create_layer(_x, _y, "Status", obj_status, {
		status: _status,
		image_xscale: _cell_w / 64,
		image_yscale: _cell_h / 64
	});
}