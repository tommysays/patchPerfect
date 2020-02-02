/// @description Check for water level.

if (waterLevelObj.waterLevel <= 0) {
	winConditionMet = true;
	var bubble = instance_find(objBubble, 0);
	if (bubble != noone) {
		instance_destroy(bubble);
	}
	highlightDoor();
} else {
	alarm[0] = 0.25 * room_speed;
}