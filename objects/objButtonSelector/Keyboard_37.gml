/// @description

if (isDebouncing) {
	return;
}

buttonIndex--;
if (buttonIndex < 0) {
	buttonIndex = array_length_1d(buttons) - 1;
}

x = buttons[buttonIndex].x;
y = buttons[buttonIndex].y;

isDebouncing = true;
alarm[0] = room_speed * 0.2;