/// @description End Interaction
if (isInteracting) {
	// do nothing for now.
} else if (isThrowing) {
	alarm[0] = -1;
	isThrowing = false;
	if (throwStrength >= 1 && patches > 0) {
		var patch = instance_create_layer(x + 16, y, "layerPatches", objPatch);
		patch.throwStrength = throwStrength;
		show_debug_message("Threw patch with strength " + string(throwStrength));
		patches--;
		if (patches == 0 && !gameRunnerObj.winConditionMet) {
			bubble = instance_find(objBubble, 0);
			bubble.visible = true;
		}
	}
	throwStrength = 0;
} else {
	show_debug_message("WARN - Tried to end throwing, but not throwing.");
}