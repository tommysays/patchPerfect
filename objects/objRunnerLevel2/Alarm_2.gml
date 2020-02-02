/// @description Check victory condition.

if (instance_number(objHole) == 0 && waterLevelObj.waterLevel <= 0) {
	winConditionMet = true;
	highlightDoor();
} else {
	alarm[2] = 0.25 * room_speed;
}