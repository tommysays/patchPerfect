/// @description Start the water fill alarm and set font stuff.

fontScript();
display_set_gui_size(640, 360);
fontSize = font_get_size(fontCourier);
alarm[0] = room_speed * fillInterval;