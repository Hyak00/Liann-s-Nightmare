
if (place_meeting(x, y, obj_player)) {
  
    obj_player.x = destino_x;
    obj_player.y = destino_y;
    
    
    room_goto(destino_room);
}