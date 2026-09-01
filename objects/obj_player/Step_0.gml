 if (global.em_dialogo) exit;

var move_x = 0;
var move_y = 0;

if (keyboard_check(ord("D"))) {
    move_x += 1;
}

if (keyboard_check(ord("A"))) {
    move_x -= 1;
}

if (keyboard_check(ord("S"))) {
    move_y += 1;
}

if (keyboard_check(ord("W"))) {
    move_y -= 1;
}

if (move_x != 0 || move_y != 0) {
    var move_length = point_distance(0, 0, move_x, move_y);
    
    move_x /= move_length;
    move_y /= move_length;
}

x += move_x * move_speed;
y += move_y * move_speed;