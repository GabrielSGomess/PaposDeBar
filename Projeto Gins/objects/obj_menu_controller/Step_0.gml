if (keyboard_check_pressed(vk_down)) {
    selected_option += 1;
    if (selected_option >= array_length(menu_options)) {
        selected_option = 0;
    }
}

if (keyboard_check_pressed(vk_up)) {
    selected_option -= 1;
    if (selected_option < 0) {
        selected_option = array_length(menu_options) - 1;
    }
}

if (keyboard_check_pressed(vk_enter)) {
    var selected_text = menu_options[selected_option];
    switch (selected_text) {
        case "Começar Jogo":
			room_goto(rm_demo);
            break;
        case "Opções":
            break;
        case "Sair":
            game_end();
            break;
    }
}