bubble = instance_create_layer(x + 16, y - 16, "layerInteractable", objBubbleAnimated);
bubble.visible = false;
show_debug_message("bubble is noone? " + string(bubble == noone));