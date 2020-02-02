/// @description Initialize and link up to game runner, water level obj.
// You can write your code in this editor
fontScript();
display_set_gui_size(640, 360);
waterLevelObj = instance_find(objWaterLevel, 0);
gameRunnerObj = instance_find(objRunnerGame, 0);