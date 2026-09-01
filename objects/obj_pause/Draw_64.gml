if (pausado) {
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();
    
    
    if (surface_exists(surface_pause)) {
        draw_surface(surface_pause, 0, 0);
    }
    
    
    draw_set_color(c_black);
    draw_set_alpha(0.6);
    draw_rectangle(0, 0, _gui_w, _gui_h, false);
    draw_set_alpha(1);
    
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    
    draw_set_font(fnt_pause);
    draw_set_color(c_white);
    draw_text(_gui_w / 2, _gui_h / 3, "Destino Pausado");
    
    
    draw_set_font(-1);
    
    
    for (var i = 0; i < array_length(opcoes_menu); i++) {
        var _y_pos = (_gui_h / 2) + (i * 40);
        
        if (i == opcao_selecionada) {
            draw_set_color(c_yellow);
            draw_text(_gui_w / 2, _y_pos, "> " + opcoes_menu[i] + " <");
        } else {
            draw_set_color(c_white);
            draw_text(_gui_w / 2, _y_pos, opcoes_menu[i]);
        }
    }
    
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}