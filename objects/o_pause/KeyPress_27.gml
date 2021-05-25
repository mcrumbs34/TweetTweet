if (!gamePause) {
	instance_deactivate_layer("Instances");
	gamePause = true;
} else {
	instance_activate_layer("Instances");
	gamePause = false;	
}