/// @description 

#region Dialog display set
var _guiw = display_get_gui_width();
var _guih = display_get_gui_height();

var _xx = 0;
var _yy = _guih - 200;
var _c = c_black
draw_set_font(font_text);

//Left side
if grid_text [# Infos.Side, page] == 0{
	draw_rectangle_color (_xx + 200, _yy, _guiw, _guih, _c, _c, _c, _c, false);
	draw_text_ext(_xx +232, _yy + 32, grid_text[# Infos.Text, page], 32, _guiw - 264);
}//Right Side
else{
	draw_rectangle_color (_xx, _yy, _guiw - 200, _guih, _c, _c, _c, _c, false);
	draw_text_ext(_xx + 32, _yy + 32, grid_text[# Infos.Text, page], 32, _guiw - 264);
}
#endregion