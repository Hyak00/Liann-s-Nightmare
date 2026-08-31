if (instance_exists(obj_player))
{
    var cam_width = camera_get_view_width(cam);
    var cam_height = camera_get_view_height(cam);

    var cam_x = obj_player.x - (cam_width / 2);
    var cam_y = obj_player.y - (cam_height / 2);

    camera_set_view_pos(cam, cam_x, cam_y);
}