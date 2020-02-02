/// @description Activate selected button.

if (isDebouncing) {
	return;
}

var selectedButton = buttons[buttonIndex];
if (selectedButton != noone) {
	isDebouncing = true;
	alarm[1] = 0.1 * room_speed;
} else {
	show_debug_message("ERROR: Selected button was noone.");
}