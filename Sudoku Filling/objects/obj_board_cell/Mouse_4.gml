if (value != undefined) {
	create_status(x, y, "error", sprite_width, sprite_height);
} else {
	obj_controller.board_current = {
		position: self.position,
		value: self.value,
	}
	create_status(x, y, "board_select", sprite_width, sprite_height);
}