
var camera_x = clamp( obj_player.x - camera_width / 2, 0, room_width - camera_width);
var camera_y = clamp( obj_player.y - camera_height / 2 , 0, room_height - camera_height);

var current_x = camera_get_view_x(view_camera[0]);
var current_y = camera_get_view_y(view_camera[0]);

var new_x = lerp( current_x, camera_x, 0.1 );
var new_y = lerp( current_y, camera_y, 0.1 );

camera_set_view_pos( view_camera[0], new_x, new_y );

//layer_x( layer_get_id("Background"), new_x * 0.65 );
//layer_y( layer_get_id("Background"), new_y * 0.65 );