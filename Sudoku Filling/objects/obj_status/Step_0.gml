function fade_out_status() {
	image_alpha = (1 - time_lived / time_to_live) * (1 + time_lived / time_to_live);
	time_lived++;
	if (time_lived > time_to_live)
		instance_destroy();
}

switch(status) {
	case "board_select":
	case "np_select":
		image_index = 2;
		break;
	case "error":
		image_index = 1;
		fade_out_status();
		break;
	case "highlight":
		image_index = 2;
		fade_out_status();
		break;
	default:
		break;
}