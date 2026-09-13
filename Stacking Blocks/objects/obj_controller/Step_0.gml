// Spawn shape if none exists
if (!instance_exists(obj_shape)) {
	instance_create_layer(SHAPE_SPAWN_X, SHAPE_SPAWN_Y, "Blocks", obj_shape);
}
