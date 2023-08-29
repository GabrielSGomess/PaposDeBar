/// @description Set background movement

var near = layer_get_id("Background_Near");
var stillNear = layer_get_id("Background_Stillnear");
var distant = layer_get_id("Backgrounds_Distant");
var farAway = layer_get_id("Backgrounds_FarAway");
var sky = layer_get_id("Backgrounds_Sky");

layer_x(near,	lerp(0, camera_get_view_x(view_camera[0]), 0.45) );
layer_x(stillNear,	lerp(0, camera_get_view_x(view_camera[0]), 0.65) );
layer_x(distant,	lerp(0, camera_get_view_x(view_camera[0]), 0.80) );
layer_x(farAway,	lerp(0, camera_get_view_x(view_camera[0]), 0.85) );
layer_x(sky,	lerp(0, camera_get_view_x(view_camera[0]), 0.90) );