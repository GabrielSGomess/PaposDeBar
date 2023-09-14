/// @description

#region Dialog
if start == false{
	scr_texts();
	start = true;
}

if mouse_check_button_pressed(mb_left){
	if page < ds_grid_height(grid_text) -1{
		page++;
	} else {
		global.dialog = false;
		instance_destroy();
	}
}
#endregion
