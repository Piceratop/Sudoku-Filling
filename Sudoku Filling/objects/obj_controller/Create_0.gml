// Board properties
board_cell_width = 64;
board_center = [board_cell_width * 2.5 , room_height / 2];
board_font = fnt_board_value;
board_pos_current = undefined;
board_size = 4;
board_top_left = [0, 0];
board_values = [];
for (i = 0; i < board_size; i++) {
	bv = [];
	for (j = 0; j < board_size; j++) {
		array_push(bv, undefined);
	}
	array_push(board_values, bv);
}
max_input = 3;

// Numpad properties
numpad_cell_gap = sprite_get_width(spr_numpad) + 4;
numpad_center = [room_width - numpad_cell_gap * 2.5, room_height / 2];
numpad_current = undefined;
numpad_size = [4, 3];
numpad_values = [
	[7, 8, 9],
	[4, 5, 6],
	[1, 2, 3],
	[0, ".", undefined]
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

// Utility Functions
function refresh() {
	instance_destroy(obj_status);
	board_pos_current = undefined;
	numpad_current = undefined;
}

// Debugging