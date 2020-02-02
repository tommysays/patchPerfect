var doorObj = instance_find(objDoor, 0);
if (doorObj != noone) {
	instance_create_layer(doorObj.x + 16, doorObj.y - 16, "layerInteractable", objBubble);
	audio_play_sound(sndOk, 0, 0);
}