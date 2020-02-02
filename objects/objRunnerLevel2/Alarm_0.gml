/// @description Creates holes in quick succession

waveHoleCounter--;

var section = irandom_range(0, 2);

var xMin = 1, xMax = 16;
switch (section) {
	case 0:
		xMin = 1;
		xMax = 3;
		break;
	case 1:
		xMin = 8;
		xMax = 9;
		break;
	case 2:
		xMin = 14;
		xMax = 16;
		break;
}

var randX = 32 + irandom_range(xMin, xMax) * 32;
var randY = 352 - irandom_range(2, 6) * 32;

instance_create_layer(randX, randY, "layerHoles", objHole);
shake = true;
alarm[11] = room_speed * 0.3;

if (waveHoleCounter > 0) {
	alarm[0] = room_speed * 0.4;
}