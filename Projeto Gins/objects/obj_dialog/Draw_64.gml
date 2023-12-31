/// @description 
if start == true{
	#region Dialog display set
	var _guiw = display_get_gui_width();
	var _guih = display_get_gui_height();

	var _xx = 0;
	var _yy = _guih - 200;
	var _c = c_black
	var _sprite =  grid_text[# Infos.Portrait, page];
	var _text = string_copy(grid_text[# Infos.Text, page], 0, character);
	draw_set_font(font_text);

	//Left side
	if grid_text [# Infos.Side, page] == 0{
		draw_rectangle_color (_xx + 200, _yy, _guiw, _guih, _c, _c, _c, _c, false);
		draw_text(_xx + 16, _yy - 32, grid_text[# Infos.Name, page]);
		draw_text_ext(_xx +232, _yy + 32, _text, 32, _guiw - 264);
	
		draw_sprite_ext(_sprite, 0, 100, _guih, 3, 3 ,0, c_white, 1);
	}//Right Side
	else{
		draw_rectangle_color (_xx, _yy, _guiw - 200, _guih, _c, _c, _c, _c, false);
		var _stgw = string_width(grid_text[# Infos.Name, page]);
		draw_text(_guiw - 16 - _stgw, _yy - 32, grid_text[# Infos.Name, page]);
		draw_text_ext(_xx + 32, _yy + 32, _text, 32, _guiw - 264);
	
		draw_sprite_ext(_sprite, 0, _guiw - 100, _guih, -3, 3 ,0, c_white, 1);
	}
}

	#endregion