/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

up = 143

colided = false

alpha_text = 2

y_player_1 = 0

y_player_2 = 0

y_plataform = 0

chat_flag = 0

flag_1 = 0

text_dialogue = ["Irmão, então você está aí!","Socorro, como saio daqui!?",
				 "O alien me falou de uma relíquia que pode te ajudar","Que alien?",
				 "... Esquece, vamos atrás dessa relíquia","Ta bom, mas vamos logo",
				 "Sinto que estou ficando mais fraco a cada segundo que passa","Kof kof"]
				 
reset_text = function(){
	draw_set_alpha(1)
	draw_set_color(-1)
	draw_set_valign(-1)
	draw_set_halign(-1)
	draw_set_font(-1)
}

chat_flag = 0
chat_flag_2 = 0