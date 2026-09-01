// Previne erro caso o dialogo ainda nao tenha sido atribuido no primeiro frame
if (!variable_instance_exists(id, "dialogo_ativo") || array_length(dialogo_ativo) == 0) exit;

var _no = dialogo_ativo[no_atual];

// Pega a largura e altura exatas da TELA do jogador (GUI)
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// Desenha o fundo transparente da caixa de dialogo
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(32, _gui_h - 180, _gui_w - 32, _gui_h - 32, false);
draw_set_alpha(1);

// Desenha a borda branca
draw_set_color(c_white);
draw_rectangle(32, _gui_h - 180, _gui_w - 32, _gui_h - 32, true);

// Configura o texto
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Desenha o texto do dialogo
draw_text_ext(48, _gui_h - 170, _no.texto, 20, _gui_w - 96);

// Se houver opcoes de escolha
if (variable_struct_exists(_no, "opcoes") && is_array(_no.opcoes)) {
    for (var i = 0; i < array_length(_no.opcoes); i++) {
        if (i == escolha) {
            draw_set_color(c_yellow);
            draw_text(48, _gui_h - 110 + (i * 22), "> " + _no.opcoes[i]);
        } else {
            draw_set_color(c_ltgray);
            draw_text(48, _gui_h - 110 + (i * 22), "  " + _no.opcoes[i]);
        }
    }
}

draw_set_color(c_white);