
vsp += grv;


//Horizontal Collision
if (place_meeting(x+hsp,y,o_wall)){
	while (!place_meeting(x+sign(hsp),y,o_wall)) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,o_wall)){
	while (!place_meeting(x,y +sign(vsp),o_wall)) {
		y += sign(vsp);
	}
	//while(!place_meeting(x,y +sign(vsp),o_player)) {
	//	y += sign(vsp);
	//}
	vsp = 0;
}

y += vsp;

image_index = word_num;

if(vsp == 0) timer -= 1;
if(timer == (room_speed * 5) * .5) {
	flash = 3;	
}
if(timer == 0 && vsp = 0) {
		instance_create_layer(random_range((window_get_width - 64), window_get_width()), 0, layer, o_word);
		instance_destroy();
}