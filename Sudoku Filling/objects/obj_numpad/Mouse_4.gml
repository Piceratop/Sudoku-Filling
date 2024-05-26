function refresh() {
	instance_destroy(obj_status);
	obj_controller.board_current = {
		position: [undefined, undefined],
		value: undefined
	};
	obj_controller.numpad_current = undefined;
}

switch (value) {
	case undefined:
		create_status(x, y, "error", sprite_width, sprite_height);
		break;
	case "Enter":
		var _bp = obj_controller.board_current.position;
		var _bv = obj_controller.board_values;
		var _nc = obj_controller.numpad_current;
		if (!check_valid(_bp, _nc, _bv)) {
			create_status(x, y, "error", sprite_width, sprite_height);
		} else {
			fill_in_value(_bv, _bp, _nc);
			refresh();
			create_status(x, y, "highlight", sprite_width, sprite_height);
		}
		break;
	case "\u232b":
		refresh();
		create_status(x, y, "highlight", sprite_width, sprite_height);
		break;
	default:
		obj_controller.numpad_current = value;
		create_status(x, y, "np_select", sprite_width, sprite_height);
		break;
}
