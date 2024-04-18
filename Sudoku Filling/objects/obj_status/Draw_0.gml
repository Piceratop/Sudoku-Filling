draw_set_alpha(alpha);
var _color = draw_get_color();
switch (status) {
	case "danger":
		draw_set_color(col_danger);
		break;
	default:
		break;
}

draw_rectangle_width(
	x - sprite_width / 2 + 10, 
	y - sprite_height / 2 + 10,
	x + sprite_width / 2 - 10,
	y + sprite_height / 2 - 10,
	7
);
draw_set_alpha(1);
draw_set_color(_color);