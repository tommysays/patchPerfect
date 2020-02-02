/// @description Flying

if (isFlying) {
	throwStrength -= delta_time / 1000000;
	if (throwStrength <= 0) {
		throwStrength = 0;
		isFlying = false;
		vspeed = 0;
		// todo Detect if patch reached hole
		hole = instance_place(x, y, objHole);
		if (hole != noone) {
			with (hole) {
				instance_destroy();
			}
		}
	} else {
		image_angle += 10;
	}
} else {
	image_alpha -= 0.1;
	if (image_alpha <= 0) {
		instance_destroy();
	}
}
