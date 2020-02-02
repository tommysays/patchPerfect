/// @description End Interaction
if (isInteracting) {
	// do nothing for now.
} else if (isThrowing) {
	alarm[0] = -1;
	isThrowing = false;
	if (throwStrength > 0 && patches > 0) {
		var patch = instance_create_layer(x + 16, y, "layerPatches", objPatch);
		patch.throwStrength = throwStrength;
		patch.image_blend = playerColor;
		show_debug_message("Threw patch with strength " + string(throwStrength));
		patches--;
		if (patches == 0 && !gameRunnerObj.winConditionMet) {
			bubble = instance_find(objBubble, 0);
			bubble.visible = true;
		}
	}
	if (crosshairObj != noone) {
		instance_destroy(crosshairObj);
		crosshairObj = noone;
	}
	throwStrength = 0;
}