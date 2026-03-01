/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
index_texto = 1

index_dialogue = 0

dialogue = function(_texto_inicial,_x,_y,_font = fnt_standard,_halign = 1,_can_skip = true){
	var _margem, _largura, _altura, _x1, _x2, _y1, _y2, _tamanho_fonte, _texto
	
	if (index_texto <= string_length(_texto_inicial)){
		if (keyboard_check(vk_space))	{index_texto += 2.5}
		else							{index_texto += .5}
	
		if (keyboard_check_released(vk_enter)){index_texto = string_length(_texto_inicial)}
	}else{
		if (keyboard_check_pressed(vk_space))	{index_dialogue += 1;index_texto = 1}
	}
	
	_texto = string_copy(_texto_inicial,1,index_texto)
	_margem = 4
	_largura = 400
	draw_set_font(_font)
	_tamanho_fonte = string_height("So_Medindo_O_TamÃÇnho") + 6 //Apenas verificação do sistema
	_altura = string_height_ext(_texto,_tamanho_fonte,_largura - _margem) + _margem * 2

	draw_set_valign(-1)
	draw_set_halign(_halign)
	draw_set_color(c_white) //mudar conforme projeto
	draw_text_ext(_x,_y, _texto, _tamanho_fonte,2500/*_largura - _margem*/)
	draw_set_halign(1)
	if (index_texto >= string_length(_texto_inicial)){
	draw_text_ext(display_get_gui_width() - 300,display_get_gui_height() - 50, "Clique Espaço para continuar...", _tamanho_fonte,2500/*_largura - _margem*/)
	}
	draw_set_color(-1)
	draw_set_valign(-1)
	draw_set_halign(-1)
	draw_set_font(-1)
}