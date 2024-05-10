border_color = c_black;
image_blend = border_color;
image_speed = 0;

switch(value) {
	case undefined:
	case "Enter":
		image_index = 0;
		break;
	default:
		image_index = value;
		break;
}