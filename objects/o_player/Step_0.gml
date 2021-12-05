//Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp += grv;

if (place_meeting(x, y+1, o_wall)) && (key_jump) {
		vsp = -3;
}
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
	vsp = 0;
}

y += vsp;

timer1--;
timer2--;

if (timer1 == 0 && timer2 != 0) deplinish_rate = .05;
if (timer2 == 0) deplinish_rate = .07;

dp -= deplinish_rate;

for(i = 0; i < curr_word_count; i++) {
	if (ds_list_find_index(buzz_words, tweet[| i]) > 0) {
		buzz_word_bonus = 2;	
	}
}

if (ds_list_find_index(tweet, "Drake") > 0 && ds_list_find_index(tweet, "DaBaby") > 0) {
		combo_bonus = 5;
}

if(dp <= 0) {
	audio_stop_sound(snd_lvl_bg);
	room_goto(r_ending);	
}
if(dp >= 100) {
	audio_stop_sound(snd_lvl_bg);
	room_goto(r_win);	
}

if (hsp != 0) image_xscale = sign(hsp);

