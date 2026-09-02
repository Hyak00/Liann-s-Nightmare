if (fade_in) {
    
    alpha += fade_speed;
    
    if (alpha >= 1) {
        alpha = 1;
        fade_in = false;
        
        if (instance_exists(obj_player)) {
            obj_player.x = destino_x;
            obj_player.y = destino_y;
        }
        room_goto(destino_room);
    }
} else {
	
    alpha -= fade_speed;
    
    if (alpha <= 0) {
        instance_destroy();
    }
}