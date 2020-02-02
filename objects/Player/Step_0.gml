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

if (crosshairObj != noone) {
	crosshairObj.x = x + 16;
}

// Increase throw strength.
if (isThrowing) {
	if (throwStrength >= 10) {
		isThrowing = false;
		throwStrength = 0;
		if (crosshairObj != noone) {
			instance_destroy(crosshairObj);
			crosshairObj = noone;
		}
		show_debug_message("Throw failed - overcharged.");
	} else {
		throwStrength += delta_time / 1000000;
		if (crosshairObj == noone) {
			crosshairObj = instance_create_layer(x + 16, y, "layerPatches", objCrosshair);
			crosshairObj.image_blend = playerColor;
			crosshairObj.vspeed = -2;
		}
	}
}
