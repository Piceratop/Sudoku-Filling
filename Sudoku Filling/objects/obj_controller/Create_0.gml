// Customization
bg_color = c_white;
ctx_color = c_black;
padding = 20;
fnt_text = font_add_sprite_ext(spr_fnt, "0123456789abcdefghijklmnopqr", true, 2);
fnt_big_number = font_add_sprite_ext(spr_fnt_big, "0123456789", true, 2);

// Player Tag Properties
instance_create_layer(padding, padding, "Numpad", obj_player_tag, {image_index: 0});

// Board properties
board_cell_gap = sprite_get_width(spr_board_cell) + 4;
board_current = {
	position: [undefined, undefined],
	value: undefined
};
board_size = 4;
board_top_left = [
	padding + sprite_get_width(spr_board_cell) / 2,
	room_height / 2 - (board_size - 1) / 2 * board_cell_gap
];
board_values = [];
for (i = 0; i < board_size; i++) {
	var _bv = [];
	for (j = 0; j < board_size; j++) {
		instance_create_layer(
			board_top_left[0] + j * board_cell_gap,
			board_top_left[1] + i * board_cell_gap,
			"Board", obj_board_cell, {
				position: [i, j],
				value: undefined
			}
		)
		array_push(_bv, undefined);
	}
	array_push(board_values, _bv);
}

// Numpad properties
numpad_cell_gap = sprite_get_width(spr_numpad) + 4;
numpad_center = [room_width - numpad_cell_gap * 2.5, room_height / 2];
numpad_current = undefined;
numpad_size = [4, 3];
numpad_values = [
	[7, 8, 9],
	[4, 5, 6],
	[1, 2, 3],
	[0, ".", "\u232b"]
];

allowed_values = [1, 2, 3, 4];
availability_numpad = [];
for (i = 0; i < numpad_size[0]; i++) {
	var _a = [];
	var _left = numpad_center[0] - (numpad_size[1] - 1) / 2 * numpad_cell_gap;
	var _top = numpad_center[1] - numpad_size[0] / 2 * numpad_cell_gap;
	for (j = 0; j < numpad_size[1]; j++) {
		var _curr = numpad_values[i][j];
		if (!array_contains(allowed_values, _curr) && _curr != "\u232b") {
			_curr = undefined;
		}
		array_push(_a, _curr);
		instance_create_layer(
			_left + j * numpad_cell_gap,
			_top + i * numpad_cell_gap,
			"Numpad",
			obj_numpad, {
				value: _curr
			}
		);
	}
	array_push(availability_numpad, _a);
}
var _enter_pad = instance_create_layer(
	numpad_center[0],
	numpad_center[1] + numpad_size[0] / 2 * numpad_cell_gap,
	"Numpad",
	obj_numpad, {
		value: "Enter"
	}
);
_enter_pad.sprite_index = spr_numpad_enter;

// Debugging
show_debug_message($"obj_controller: {typeof(true)}");