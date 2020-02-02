/// @description

if (isDebouncing) {
	return;
}

buttonIndex++;
if (buttonIndex >= array_length_1d(buttons)) {
	buttonIndex = 0;
}

x = buttons[buttonIndex].x;
y = buttons[buttonIndex].y;

isDebouncing = true;
alarm[0] = room_speed * 0.2;