// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function draw_main_menu(){
for (var i = 0; i < array_length(menu_options); i++) {
        if (i == selected_option) {
			draw_set_color(c_yellow);
            draw_text(0, 0 + i * 40, "> " + menu_options[i]);
			
        } else {
			draw_set_color(c_white);
            draw_text(0, 0 + i * 40, menu_options[i]);
        }
    }
}

function draw_options_menu(){


}

function draw_credits_menu(){


}