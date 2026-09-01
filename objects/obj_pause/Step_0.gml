if (keyboard_check_pressed(vk_escape)) {
    
    
    if (variable_global_exists("em_dialogo") && global.em_dialogo && !pausado) exit;
    
    pausado = !pausado;
    
    if (pausado) {
        
        if (!surface_exists(surface_pause)) {
            surface_pause = surface_create(display_get_gui_width(), display_get_gui_height());
            surface_copy(surface_pause, 0, 0, application_surface);
        }
        
        
        instance_deactivate_all(true);
        
    } else {
        
        instance_activate_all();
        
        if (surface_exists(surface_pause)) {
            surface_free(surface_pause);
        }
    }
}


if (pausado) {
    if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
        opcao_selecionada = max(0, opcao_selecionada - 1);
    }
    
    if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
        opcao_selecionada = min(array_length(opcoes_menu) - 1, opcao_selecionada + 1);
    }
    
    
    if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
        if (opcao_selecionada == 0) {
            
            pausado = false;
            instance_activate_all();
            if (surface_exists(surface_pause)) surface_free(surface_pause);
        } 
        else if (opcao_selecionada == 1) {
            
            game_end();
        }
    }
}