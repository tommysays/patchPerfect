/// @description Movement

// Prevent movement if interacting.
if (isInteracting) {
	return;
}

keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);

var hInput = keyRight - keyLeft;

var waterLevel = 0;
if (waterLevelObj != noone) {
	waterLevel = waterLevelObj.waterLevel;
}
hMove = hInput * walkSpeed * (1 - waterLevel * waterLevelHindranceMultiplier);

if (place_meeting(x + hMove, y, objWall)) {
	while (!place_meeting(x + sign(hMove), y, objWall)) {
		x += sign(hMove);
	}
} else {
	x += hMove;
}
