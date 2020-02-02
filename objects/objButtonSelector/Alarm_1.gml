/// @description Action handler

var actionIndex = buttons[buttonIndex].actionIndex;

switch (actionIndex) {
	case 0: 
		// Play from tutorial 1.
		room_goto(roomTutorial1);
		break;
	case 1:
		room_goto(roomMenu);
		break;
}