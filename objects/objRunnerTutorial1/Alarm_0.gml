/// @description After space is pressed, check for patches before spawning help bubbles.
if (bubblesSpawned) {
	return;
}

var player = instance_find(Player, 0);
if (player != noone) {
	if (player.patches > 0) {
		with (objHole) {
			if (bubble != noone) {
				self.bubble.visible = true;
			}
		}
		bubblesSpawned = true;
		alarm[1] = 0.25 * room_speed;
	}
}