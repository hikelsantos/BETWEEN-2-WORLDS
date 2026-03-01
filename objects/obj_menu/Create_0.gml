/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

global.menu_button = 1000 //reset

global.return_menu = false

global.level = 0
global.next_level = 0

alpha_text = 1

audio_stop_all()
audio_play_sound(snd_a_chill_fever_0,1,true)


draw_text_ani_w_shadow = function(_text){

	var _x1,_y1,_ang,_cor,_alpha
	var _temp = 2 * get_timer() / 1000000



	draw_set_valign(1)
	draw_set_halign(1)
	draw_set_font(fnt_standard_title_2)
	draw_set_alpha(alpha_text)

	_x1 = display_get_gui_width()/2 + (32*sin(1.7*_temp)) //(XX*sin(YY*_temp)) --> XX- Aumenta Amplitude // YY- Aumenta Velocidade/Frequência
	_y1 = 200 + (6*sin(1.2*_temp))
	_ang = 0 - (2*sin(1.2*_temp))
	_cor = c_black //Caso queira usar cor estática
	_alpha = alpha_text//abs(sin(0.25*_temp))



	draw_text_transformed_color(_x1, _y1,_text,1,1,_ang,_cor,_cor,_cor,_cor,_alpha)

	_temp += .1
	_x1 = display_get_gui_width()/2 + (32*sin(1.7*_temp))
	_y1 = 200 + (6*sin(1.2*_temp)) 
	_ang = 0 - (2*sin(1.2*_temp))
	_cor = c_white //Caso queira usar cor estática
	_alpha = alpha_text

	/*
	_cor = make_color_hsv(abs(255*sin(0.2*_temp)),255,255) //caso queira ficar mudando de cor

	*/
	
	draw_text_transformed_color(_x1, _y1,_text,1,1,_ang,_cor,_cor,_cor,_cor,_alpha)
	draw_set_alpha(1)
	draw_set_color(-1)
	draw_set_valign(-1)
	draw_set_halign(-1)
	draw_set_font(-1)	
	
}
