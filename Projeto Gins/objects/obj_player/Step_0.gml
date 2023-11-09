/// @description Set movement
#region Character movement

if place_meeting(x+hspd,y,obj_wall){
    while !place_meeting(x+sign(hspd),y,obj_wall){
        x += sign(hspd);
		}
   hspd = 0;
}

x += hspd;

if (global.dialog) {
	spd = 0;
} else {
	spd = 5;
}

hspd = (right - left) *spd;

//Set control

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);

	
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
		if keyboard_check_pressed(vk_up){
			var _npc = instance_nearest(x, y, obj_parnpc);
			var _dialog = instance_create_layer(x, y, "Dialog", obj_dialog);
			_dialog.npc_name = _npc.name_;
		}
	}
}

if (!global.dialog){
	if place_meeting(x, y, obj_end_event){
		var _npc = instance_nearest(x, y, obj_end_event);
		var _dialog = instance_create_layer(x, y, "Dialog", obj_dialog);
		_dialog.npc_name = _npc.name_;
	}
}


#endregion