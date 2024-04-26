if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self)) {
	if (value == undefined) {
		create_status(x, y, "error", sprite_width);
	} else if (obj_controller.board_current_cell_position != undefined) { 
		fill_in_value(obj_controller.board_values, obj_controller.board_current_cell_position, value);
		instance_destroy(obj_status);
		obj_controller.board_current_cell_position = undefined;
		obj_controller.numpad_current = undefined;
	} else {
		obj_controller.numpad_current = value;
		with (obj_status) {
			if (status == "selected") {
				instance_destroy();
			}
		}
		create_status(x, y, "selected", sprite_width);
	}
}