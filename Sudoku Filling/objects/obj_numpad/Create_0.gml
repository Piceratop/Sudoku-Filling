image_blend = obj_controller.ctx_color;
image_speed = 0;

switch(value) {
	case undefined:
	case "Enter":
		image_index = 0;
		break;
	case "\u232b":
		break;
	default:
		image_index = value;
		break;
}