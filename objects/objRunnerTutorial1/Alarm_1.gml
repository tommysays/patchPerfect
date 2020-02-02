/// @description Check for win condition.

if (bubblesSpawned && instance_number(objHole) == 0) {
	winConditionMet = true;
	highlightDoor();
} else {
	alarm[1] = 0.25 * room_speed;
}