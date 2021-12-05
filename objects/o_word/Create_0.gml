//Health Bar
dp = 50
dp_max = dp;

room_speed = 60;
timer = room_speed * 5;
healthbar_width = 100;
healthbar_height = 64;

//healthbar_x = (320/2) - (healthbar_width/2);
//healthbar_y = ystart + 100;

healthbar_x = 0;
healthbar_y = 0;

//Word Banks
word_bank = ["Nintendo", "Cake", "COVID", "DaBaby", "Disney", 
			"TikTok", "Smash Bros", "Anime", "Drake", "Jake Paul"];

buzz_words = ["Drake", "DaBaby", "Jake Paul"];


//Gravity
hsp = 0;
vsp = 0;
grv = random(1)*.1;
walksp = 4;

word_num = random(10);
word = word_bank[word_num];

flash = 0;


