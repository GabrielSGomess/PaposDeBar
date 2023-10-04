/// @description Set movement
#region Character movement

if (global.dialog) {
	spd = 0;
} else {
	spd = 3;
}
hspd = (right - left) *spd;

x += hspd;

//Set control

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));

	
if hspd != 0 {
	image_xscale = sign(hspd);
	sprite_index = spr_player_walking;
}
	
if hspd = 0 {
	sprite_index = spr_player_idle;
}
#endregion
#region Dialog
if (!global.dialog){
	if distance_to_object(obj_parnpc) <= 10{
		if keyboard_check_pressed(ord("Z")){
			var _npc = instance_nearest(x, y, obj_parnpc);
			var _dialog = instance_create_layer(x, y, "Dialog", obj_dialog);
			_dialog.npc_name = _npc.name_;
		}
	}
}

#endregion
