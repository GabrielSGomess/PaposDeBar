/// @description
if instance_exists(obj_dialog){
	global.dialog = true;
}

var near = layer_get_id("Background_Near");
var StillNear = layer_get_id("Background_Stillnear");
var Distant = layer_get_id("Background_Distant");
var FarAway = layer_get_id("Background_FarAway");
var Sky = layer_get_id("Background_Sky");

layer_x(near,		lerp(0, camera_get_view_x(view_camera[0]), 0.45)  );
layer_x(StillNear,	lerp(0, camera_get_view_x(view_camera[0]), 0.55)  );
layer_x(Distant,	lerp(0, camera_get_view_x(view_camera[0]), 0.65)  );
layer_x(FarAway,	lerp(0, camera_get_view_x(view_camera[0]), 0.85)  );
layer_x(Sky,		lerp(0, camera_get_view_x(view_camera[0]), 0.9)  );
