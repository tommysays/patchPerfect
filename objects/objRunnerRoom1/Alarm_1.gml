/// @description Create waves of holes every so often.

waveHoleCounter = irandom_range(2,4);
alarm[0] = room_speed * 0.2;

waveCounter--;

if (waveCounter > 0) {
	alarm[1] = room_speed * 10;
}