/// @description Destroy waterfall.

instance_destroy(waterfall);
if (bubble != noone) {
	show_debug_message("Destroying bubble");
	instance_destroy(bubble);
}