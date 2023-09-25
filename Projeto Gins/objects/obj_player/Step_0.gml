/// @description Set movement
scr_player_movement();

#region Dialog
if distance_to_object(obj_parnpc) <= 10{
	if keyboard_check_pressed(ord("Z")){
		var _npc = instance_nearest(x, y, obj_parnpc);
		var _dialog = instance_create_layer(x, y, "Dialog", obj_dialog);
		_dialog.npc_name = _npc.name_;
	}
}

#endregion