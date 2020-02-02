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
	bubble = instance_find(objBubble, 0);
	bubble.visible = false;
	isInteracting = true;
	alarm[1] = room_speed * 0.5;
	return;
}

// Pump interaction.
pumpObj = instance_position(x + 16, y + 16, objPump);
if (pumpObj != noone && !pumpObj.isPumping) {
	isInteracting = true;
	waterLevel = waterLevelObj.waterLevel;
	waterLevel -= 10;
	if (waterLevel < 0) {
		waterLevel = 0;
	}
	waterLevelObj.waterLevel = waterLevel;
	pumpObj.sprite_index = sprPumpAnimated;
	pumpObj.isPumping = true;
	pumpObj.alarm[0] = (13/15) * room_speed;
	alarm[1] = room_speed * 1;
	audio_play_sound(sndPerc, 0, 0);
	return;
}

// Door interaction.
if (gameRunnerObj.winConditionMet) {
	doorObj = instance_position(x + 16, y + 16, objDoor);
	if (doorObj != noone) {
		isInteracting = true;
		alarm[2] = room_speed * 0.1;
		return;
	}
}


// Throw only if other interactions are not available AND you have patches left.
if (!isThrowing && patches > 0) {
	// throw patch
	isThrowing = true;
	throwStrength = 0;
	alarm[0] = room_speed * 0.05;
}