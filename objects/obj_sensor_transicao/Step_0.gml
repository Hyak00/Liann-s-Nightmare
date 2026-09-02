if (place_meeting(x, y, obj_player)) {
    if (!instance_exists(obj_transicao_efeito)) {
        var _trans = instance_create_depth(0, 0, 0, obj_transicao_efeito);
        _trans.destino_room = destino_room;
        _trans.destino_x = destino_x;
        _trans.destino_y = destino_y;
    }
}