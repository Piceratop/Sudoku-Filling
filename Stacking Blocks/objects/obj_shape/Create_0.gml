event_inherited();

dead_sprite_id = [];

var _spr = sprite_index;
if (_spr == -1) {
	_spr = object_get_sprite(object_index);
}

switch (_spr) {
	case spr_O4:
		dead_sprite_id = [
			[0, 1],
			[2, 3]
		];
		break;
}

alarm[2] = lock_delay;

lock_shape = function() {
	if (array_length(dead_sprite_id) > 0) {
		var _top_left_x = x - sprite_xoffset;
		var _top_left_y = y - sprite_yoffset;
		var _rows = array_length(dead_sprite_id);
		
		for (var _r = 0; _r < _rows; _r++) {
			var _cols = array_length(dead_sprite_id[_r]);
			for (var _c = 0; _c < _cols; _c++) {
				var _sub_img = dead_sprite_id[_r][_c];
				if (_sub_img >= 0) {
					var _bx = _top_left_x + _c * CELL_SIZE;
					var _by = _top_left_y + _r * CELL_SIZE;
					var _b = instance_create_layer(_bx, _by, "Blocks", obj_block);
					_b.is_locked = true;
					_b.alarm[0] = -1;
					_b.alarm[1] = -1;
					_b.image_index = _sub_img;
					_b.image_speed = 0;
				}
			}
		}
	}
	
	instance_destroy();
};
