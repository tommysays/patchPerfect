/// @description Interaction

if (isInteracting || isThrowing) {
	return;
}

// Bucket interaction.
patchBucket = instance_position(x + 16, y + 16, objBucket);
if (patchBucket != noone) {
	if (patches = 3) {
		return;
	}
	patches = 3;
	bubble = instance_find(uiBubbleA, 0);
	bubble.visible = false;
	isInteracting = true;
	alarm[1] = room_speed * 0.5;
	return;
}

// Pump interaction.
pumpObj = instance_position(x + 16, y + 16, objPump);
if (pumpObj != noone) {
	isInteracting = true;
	waterLevel = waterLevelObj.waterLevel;
	waterLevel -= 10;
	if (waterLevel < 0) {
		waterLevel = 0;
	}
	waterLevelObj.waterLevel = waterLevel;
	pumpObj.sprite_index = sprPumpAnimated;
	pumpObj.alarm[0] = (13/15) * room_speed;
	alarm[1] = room_speed * 1;
	return;
}


// Throw only if other interactions are not available AND you have patches left.
if (!isThrowing) {// && patches > 0) {
	// throw patch
	isThrowing = true;
	throwStrength = 0;
	alarm[0] = room_speed * 0.15;
}