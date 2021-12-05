if(followers >= 50 && dp < 50) {
	dp += 50;
	followers = 0;
}
if(followers >= 50 && dp > 50) {
	dp += 30;
	followers = 0;
}