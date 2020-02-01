/// @description Increase throw strength over time

if (isThrowing) {
	if (throwStrength >= 10) {
		// stop throwing.
		isThrowing = false;
		throwStrength = 0;
		show_debug_message("Throw failed - overcharged.");
	} else {
		alarm[0] = room_speed * 0.25;
		throwStrength++;
	}
}