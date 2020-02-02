/// @description Find all buttons and store them.

var counter = 0;
buttons[0] = 0;

var numButtons = instance_number(objButton);
for (var i = 0; i < numButtons; i++) {
	button = instance_find(objButton, i);
	buttons[i] = button;
}
/*
with (objButton) {
	show_debug_message("found a button");
	buttons[counter] = self;
	counter++;
}*/

show_debug_message("length = " + string(array_length_1d(buttons)));

x = buttons[buttonIndex].x;
y = buttons[buttonIndex].y;
image_blend = highlightColor;