/// @description Delayed check for win, then advance.

if (gameRunnerObj.winConditionMet) {
	if (gameRunnerObj.nextRoom != noone) {
		room_goto(gameRunnerObj.nextRoom);
	}
}
isInteracting = false;