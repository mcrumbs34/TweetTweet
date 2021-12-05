//Health Bar
dp = 50;
dp_max = 100;

healthbar_width = 342;
healthbar_height = 75;

timer1 = room_speed * 10;
timer2 = room_speed * 20;

//healthbar_x = (320/2) - (healthbar_width/2);
//healthbar_y = ystart + 100;

healthbar_x = 100;
healthbar_y = 25;

//Gravity
hsp = 0;
vsp = 0;
grv = .1;
walksp = 6;
boost = false;

gamePause = false;

followers = 0;

//buzz_words = ["Drake", "DaBaby", "Billie Eilish"];

buzz_words = ds_list_create();

ds_list_add(buzz_words, "Drake");
ds_list_add(buzz_words, "DaBaby");
ds_list_add(buzz_words, "Jake Paul");

connectors_one = ["roasted", "bequeathed", "rocked"];
connectors_two = ["with", "in front of", "to mock"];
buzz_word_bonus = 1;
combo_bonus = 0;
tweet = ds_list_create();

tweet_text = "";
curr_word_count = 0;

deplinish_rate = .03;