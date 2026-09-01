if (instance_exists(obj_player)) {
    var _dist = distance_to_object(obj_player);
    
    
    if (_dist <= dist_interacao && keyboard_check_pressed(ord("E")) && !instance_exists(obj_dialogo_ui) && !global.em_dialogo) {
        var _ui = instance_create_layer(0, 0, "Instances", obj_dialogo_ui);
        _ui.dialogo_ativo = dialogo;   
        _ui.no_atual = 0;              
    }
}