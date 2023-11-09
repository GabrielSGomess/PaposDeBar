draw_set_font(font_menu);
draw_set_color(c_white);

var distance = 55;

var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x1 = gui_width / 2;
var y1 = gui_height / 2;


for(var i = 0; i < op_max;i++){
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	
	if(index ==i){
		draw_set_color(c_yellow);
	}else{
		draw_set_color(c_white);
	}
	draw_text(x1, y1 + (distance * i), options[i]);
}

draw_set_font (-1);