/// @description
if (bubblesSpawned) {
	return;
}

var any = false;
with (Player) {
	if (patches > 0) {
		any = true;
	}
}

if (any) {
	with (objHole) {
		if (bubble != noone) {
			bubble.visible = true;
		}
	}
	bubblesSpawned = true;
	alarm[1] = 0.25 * room_speed;
}