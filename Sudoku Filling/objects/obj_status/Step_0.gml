switch(status) {
	case "error":
		image_index = 1;
		image_alpha = (1 - time_lived / time_to_live) * (1 + time_lived / time_to_live);
		time_lived++;
		if (time_lived > time_to_live)
			instance_destroy();
		break;
	case "board_select":
	case "np_select":
		image_index = 2;
	default:
		break;
}