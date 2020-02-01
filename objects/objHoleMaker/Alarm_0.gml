/// @description Creates holes in quick succession

waveHoleCounter--;

var randX = 32 + irandom_range(1, 12) * 32;
var randY = 352 - irandom_range(2, 5) * 32;

instance_create_layer(randX, randY, "layerHoles", objHole);

if (waveHoleCounter > 0) {
	alarm[0] = room_speed * 0.4;
}