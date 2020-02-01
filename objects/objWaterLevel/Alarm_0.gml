/// @description Increase water level based on num holes.

var numHoles = instance_number(objHole);

waterLevel += numHoles;
if (waterLevel >= 100) {
	waterLevel = 100;
	//todo Game over.
}

alarm[0] = room_speed * fillInterval;