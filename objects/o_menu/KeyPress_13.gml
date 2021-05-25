switch(menu_index) {
	case 0:
	show_debug_message("NEW MENU");
	audio_stop_all();
	room_goto(r_level);
	break;
	case 1:
	show_debug_message("HELP MENU");
	room_goto(r_help);
	break;
	case 2:
	show_debug_message("GAME ENDED");
	game_end();
	break;
}