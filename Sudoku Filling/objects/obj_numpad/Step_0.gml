if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self)) {
	if (value == undefined) {
		create_status(x, y, "error", sprite_width, sprite_height);
	} else if (value != "Enter") {
		obj_controller.numpad_current = value;
		with (obj_status) {
			if (status == "selected" && position_meeting(x, y, obj_numpad)) {
				instance_destroy();
			}
		}
		create_status(x, y, "selected", sprite_width, sprite_height);
	} else {
		var _bp = obj_controller.board_pos_current;
		var _nc = obj_controller.numpad_current;
		if (_bp == undefined || _nc == undefined) {
			create_status(x, y, "error", sprite_width, sprite_height);
		} else {
			fill_in_value(obj_controller.board_values, _bp, _nc);
			
			obj_controller.refresh();
		}
	}
}