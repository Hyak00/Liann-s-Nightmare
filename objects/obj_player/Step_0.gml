if (global.em_dialogo) exit;

var move_x = 0;
var move_y = 0;

if (keyboard_check(ord("D"))) move_x += 1;
if (keyboard_check(ord("A"))) move_x -= 1;
if (keyboard_check(ord("S"))) move_y += 1;
if (keyboard_check(ord("W"))) move_y -= 1;

if (move_x != 0 || move_y != 0) {
    var move_length = point_distance(0, 0, move_x, move_y);
    move_x /= move_length;
    move_y /= move_length;
}

var _hspeed = move_x * move_speed;
var _vspeed = move_y * move_speed;


if (place_meeting(x + _hspeed, y, obj_colisao)) {
    while (!place_meeting(x + sign(_hspeed), y, obj_colisao)) {
        x += sign(_hspeed);
    }
    _hspeed = 0;
}
x += _hspeed;


if (place_meeting(x, y + _vspeed, obj_colisao)) {
    while (!place_meeting(x, y + sign(_vspeed), obj_colisao)) {
        y += sign(_vspeed);
    }
    _vspeed = 0;
}
y += _vspeed;

depth = -y;