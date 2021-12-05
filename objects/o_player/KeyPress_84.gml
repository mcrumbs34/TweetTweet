switch(ds_list_size(tweet)) {
	case 0:
	dp += 0;
	break;
	case 1:
	dp += 2 * buzz_word_bonus + combo_bonus;
	followers+=2;
	curr_word_count = 0;
	buzz_word_bonus = 1;
	combo_bonus = 0;
	ScreenShake(2 * buzz_word_bonus,10);
	break;
	case 2:
	dp += 4 * buzz_word_bonus + combo_bonus;
	followers+=5;
	curr_word_count = 0;
	buzz_word_bonus = 1;
	combo_bonus = 0;
	ScreenShake(4 * buzz_word_bonus,10);
	break;
	case 3:
	dp += 8 * buzz_word_bonus + combo_bonus;
	followers+=10;
	curr_word_count = 0;
	buzz_word_bonus = 1;
	combo_bonus = 0;
	ScreenShake(6 * buzz_word_bonus,10);
	break;
}

ds_list_clear(tweet);
tweet_text = " ";