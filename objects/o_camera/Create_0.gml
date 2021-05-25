cam = view_camera[0];

follow = o_player;

view_w_half = camera_get_view_width(cam) * .5;
view_h_half = camera_get_view_height(cam) * .5;

//view_w_half = 0;
//view_h_half = 0;

xTo = xstart;
yTo = ystart;

shake_length = 60;
shake_magnitude = 6;
shake_remain = 6;
buff = 32;