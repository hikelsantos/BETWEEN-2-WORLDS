/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


exibe_tempo_jogado()

if esc_pressed{
	draw_set_color(c_black)
	draw_set_alpha(.5)
	draw_rectangle(0,0,2000,2000,false)
	
	
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_font(fnt_standard_big)
	if global.easy_mode{draw_text(display_get_gui_width()/2-600,display_get_gui_height()/2-500,"APERTE F PARA MUDAR PARA O MODO NORMAL")}
	else{draw_text(display_get_gui_width()/2-600,display_get_gui_height()/2-500,"APERTE F PARA MUDAR PARA O MODO FACIL (Modo com auxilio)")}
	if !v_pressed	{draw_text(display_get_gui_width()/2-600,display_get_gui_height()/2+450,"APERTE V PARA VOLTAR AO MENU")}
	else			{draw_text(display_get_gui_width()/2-600,display_get_gui_height()/2+450,"APERTE V NOVAMENTE PARA CONFIRMAR")}
}

