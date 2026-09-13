event_inherited();

dead_sprite_id = [];

switch (object_get_sprite(self)) {
	case spr_O4:
		dead_sprite_id = [
			[0, 1],
			[2, 3]
		]
		break;
}

lock_delay = game_get_speed(gamespeed_fps);
lock_delay_reset = 15;