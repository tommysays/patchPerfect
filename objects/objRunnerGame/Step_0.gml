/// @description Shake if you must.

if (shake) {
	var randX = random_range(-shakeMagnitude, shakeMagnitude);
	var randY = random_range(-shakeMagnitude, shakeMagnitude);
	camera_set_view_pos(view_camera[0], randX, randY);
}