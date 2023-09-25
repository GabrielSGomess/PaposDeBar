draw_set_font(font_menu);

switch (menu_state) {
    case "Main":
	draw_main_menu();
        break;
    case "Options":
	draw_options_menu();
        break;
    case "Credits":
	draw_credits_menu();
        break;
}