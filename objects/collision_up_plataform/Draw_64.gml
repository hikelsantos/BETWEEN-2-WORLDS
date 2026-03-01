/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_valign(1)
draw_set_halign(-1)
draw_set_color(c_white)
draw_set_font(fnt_standard_big_1)

if colided and flag_1 == 0{
	draw_set_alpha(alpha_text)
	draw_text_ext_transformed(200,500,"Irmão!!!",10,100,1,1,0)
	if chat_flag == 0{
		audio_play_sound(snd_chat,2,false)
		chat_flag = 1
	}
	draw_set_alpha(alpha_text+.5)
	if alpha_text <= 1{
		draw_text_ext_transformed(1200,800,"Irmão!!!",10,100,2,2,0)
		if chat_flag == 1{
			audio_play_sound(snd_chat,2,false)
			chat_flag = 2
		}
	}
}

draw_set_alpha(alpha_text)

if flag_1 == 1{

var _pos_x1 = 300
var _pos_y1 = 400

var _pos_x2 = 600
var _pos_y2 = 700

draw_set_halign(0)
if		alpha_text-21 > 0{draw_set_alpha(alpha_text-21);draw_text(_pos_x1,_pos_y1,text_dialogue[0]);if chat_flag_2 == 0{chat_flag_2+=1;audio_play_sound(snd_chat,2,false)}} //1
else if alpha_text-18 > 0{draw_set_alpha(alpha_text-18);draw_text(_pos_x2,_pos_y2,text_dialogue[1]);if chat_flag_2 == 1{chat_flag_2+=1;audio_play_sound(snd_chat,2,false)}} //2
else if alpha_text-15 > 0{draw_set_alpha(alpha_text-15);draw_text(_pos_x1,_pos_y1,text_dialogue[2]);if chat_flag_2 == 2{chat_flag_2+=1;audio_play_sound(snd_chat,2,false)}} //1
else if alpha_text-12 > 0{draw_set_alpha(alpha_text-12);draw_text(_pos_x2,_pos_y2,text_dialogue[3]);if chat_flag_2 == 3{chat_flag_2+=1;audio_play_sound(snd_chat,2,false)}} //2
else if alpha_text-09 > 0{draw_set_alpha(alpha_text-09);draw_text(_pos_x1,_pos_y1,text_dialogue[4]);if chat_flag_2 == 4{chat_flag_2+=1;audio_play_sound(snd_chat,2,false)}} //1
else if alpha_text-06 > 0{draw_set_alpha(alpha_text-06);draw_text(_pos_x2,_pos_y2,text_dialogue[5]);if chat_flag_2 == 5{chat_flag_2+=1;audio_play_sound(snd_chat,2,false)}} //2
else if alpha_text-03 > 0{draw_set_alpha(alpha_text-03);draw_text(_pos_x2,_pos_y2,text_dialogue[6]);if chat_flag_2 == 6{chat_flag_2+=1;audio_play_sound(snd_chat,2,false)}} //2
else{					  draw_set_alpha(alpha_text);	draw_text(_pos_x2,_pos_y2,text_dialogue[7]);if chat_flag_2 == 7{chat_flag_2+=1;audio_play_sound(snd_chat,2,false)}} //2



/*
draw_set_alpha(alpha_text-21)
draw_text(1200,800,text_dialogue[0])
if alpha_text-19 > 0{reset_text();exit}
draw_set_alpha(alpha_text-18)
draw_text(1200,800,text_dialogue[1])
if alpha_text-15 > 0{reset_text();exit}
draw_set_alpha(alpha_text-15)
draw_text(1200,800,text_dialogue[2])
if alpha_text-12 > 0{reset_text();exit}
draw_set_alpha(alpha_text-12)
draw_text(1200,800,text_dialogue[3])
if alpha_text-9 > 0{reset_text();exit}
draw_set_alpha(alpha_text-9)
draw_text(1200,800,text_dialogue[4])
if alpha_text-6 > 0{reset_text();exit}
draw_set_alpha(alpha_text-6)
draw_text(1200,800,text_dialogue[5])
if alpha_text-3 > 0{reset_text();exit}
draw_set_alpha(alpha_text-3)
draw_text(1200,800,text_dialogue[6])
*/
	
}

draw_set_alpha(1)
draw_set_color(-1)
draw_set_valign(-1)
draw_set_halign(-1)
draw_set_font(-1)