/// @description Check for water level.

if (waterLevelObj.waterLevel <= 0) {
	winConditionMet = true;
	highlightDoor();
	var bubble = instance_find(uiBubbleA, 0);
	if (bubble != noone) {
		instance_destroy(bubble);
	}
}