/// @description

#region Dialog
if start == false{
	scr_texts();
	start = true;
}

if keyboard_check_pressed(ord("Z")){
	if character < string_length(grid_text[# Infos.Text, page]){
		character = string_length(grid_text[# Infos.Text, page])
	} else {
		alarm[0] = 2;
		character = 0;
		if page < ds_grid_height(grid_text) -1{
			page++;	
		} else {
			global.dialog = false;
			instance_destroy();
		}
	}
}
#endregion
