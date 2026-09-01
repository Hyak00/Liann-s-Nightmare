if (instance_exists(obj_player))
{
    var cam_width = camera_get_view_width(cam);
    var cam_height = camera_get_view_height(cam);

    var target_x = obj_player.x - (cam_width / 2);
    var target_y = obj_player.y - (cam_height / 2);

    
    var cam_x = lerp(camera_get_view_x(cam), target_x, 0.1);
    var cam_y = lerp(camera_get_view_y(cam), target_y, 0.1);

    camera_set_view_pos(cam, cam_x, cam_y);
}