/// @description Start the water fill alarm and set font stuff.

fontScript();
display_set_gui_size(640, 360);
fontSize = font_get_size(fontCourier);
alarm[0] = room_speed * fillInterval;

waterFill = instance_create_layer(x - 16, y + 29, "layerPlayer", objWaterFill);
waterFill.image_yscale = 0;