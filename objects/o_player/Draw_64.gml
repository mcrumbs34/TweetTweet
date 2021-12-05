draw_sprite_stretched(s_healthbar, 0, healthbar_x,healthbar_y + 1, (dp/dp_max) * healthbar_width, healthbar_height);
draw_sprite(s_healthbar_border,0,healthbar_x,healthbar_y);

draw_set_font(font_ingame);
draw_set_halign(fa_left);
draw_set_color(c_black);

follower_count = "Follower Count: " + string(followers);
draw_text(65, (healthbar_height *2), follower_count);

//for(i = 0; i < curr_word_count; i++) {
//	//if (ds_list_find_index(buzz_words, tweet[| i]) > 0) {
//	//	draw_set_color(c_blue);	
//	//} else {
//	//	draw_set_color(c_black);	
//	//}
//	//draw_text(65 * (i +1), (healthbar_height *2.5), tweet[| i] + " ");
//}
//draw_set_color(c_black);
draw_text(65, (healthbar_height *2.5), tweet_text);
if (buzz_word_bonus == 2) {
	draw_text(65, (healthbar_height *3), "2x Buzz Word Multiplier!");	
}

if (boost) {
	draw_text(65, (healthbar_height *3.5), "Speed Boost Applied!");	
}

if (combo_bonus > 0) {
	draw_text(65, (healthbar_height *4), "Musical Combo Bonus!");	
}

draw_set_halign(fa_center);
draw_text(x,y - 15, "Word Count: " + string(curr_word_count));