if (curr_word_count < 3) {
	
	show_debug_message("Buzz word bonus is " + string(buzz_word_bonus));
	ds_list_add(tweet, other.word);
	if (curr_word_count == 0) tweet_text = tweet_text + " " + other.word;
	if (curr_word_count == 1) tweet_text = tweet_text + " " + connectors_one[random(3)] + " " + other.word;
	if (curr_word_count == 2) tweet_text = tweet_text + " " + connectors_two[random(3)]+ " " + other.word;
	curr_word_count++;
	with(other) {
		instance_create_layer(random_range(64, window_get_width() - 64), 0, layer, o_word);
		instance_destroy();
	}
}