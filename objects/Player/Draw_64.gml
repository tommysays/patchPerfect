/// @description Patch counter text.
uiPatch = instance_find(objPatchCounter, 0);
if (uiPatch != noone) {
	draw_text(uiPatch.x, uiPatch.y - 2 - font_get_size(fontCourier) / 2, string(patches));
}