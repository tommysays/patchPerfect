/// @description Decrease throw strength.

if (throwStrength > 0) {
	throwStrength--;
	alarm[0] = room_speed * 0.5;
}
