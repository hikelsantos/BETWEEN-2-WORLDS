/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_valign(1)
draw_set_halign(-1)
draw_set_color(c_white)
draw_set_font(fnt_standard_big_1)


var _pos_x1 = obj_player_2.x
var _pos_y1 = obj_player_2.y + 500

if flag == 0{
_pos_x1 = obj_player_1.x
_pos_y1 = obj_player_1.y
}

draw_set_halign(0)
draw_set_alpha(alpha_text)

if collided{
	draw_text(_pos_x1,_pos_y1,text[flag])
	if chat_flag == flag{
			audio_play_sound(snd_chat,2,false)
			chat_flag = flag+2
	}
}


draw_set_alpha(1)
draw_set_color(-1)
draw_set_valign(-1)
draw_set_halign(-1)
draw_set_font(-1)