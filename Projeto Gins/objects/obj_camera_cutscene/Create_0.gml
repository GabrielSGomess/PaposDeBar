/// @description Setup window/camera size

resolution_width = 1280;
resolution_height = 720;
resolution_scale = 2;
global.view_width = resolution_width / resolution_scale;
global.view_height = resolution_height / resolution_scale;
view_target = Sequence3;
window_set_size(global.view_width * resolution_scale, global.view_height * resolution_scale);
surface_resize(application_surface, global.view_width * resolution_scale, global.view_height * resolution_scale);
