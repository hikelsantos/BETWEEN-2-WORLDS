/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


draw_set_valign(1)
draw_set_halign(-1)
draw_set_color(c_white)
draw_set_font(fnt_standard_big_1)

draw_set_alpha(alpha_text)



var _pos_x1 = 300
var _pos_y1 = 400

var _pos_x2 = 600
var _pos_y2 = 700

draw_set_halign(fa_right)

draw_set_alpha(1)
for (var i = 0;i < text_length;i++){
	draw_text(xx,yy+(50*i),text[i])
	//if	alpha_text-((text_length-i)*3) > 0{draw_set_alpha(alpha_text-((text_length-i)*3));draw_text(xx,yy+(50*i),text[i])}
}

/*
if		alpha_text-21 > 0{draw_set_alpha(alpha_text-21);draw_text(_pos_x1,_pos_y1,text_dialogue[0])} //1
else if alpha_text-18 > 0{draw_set_alpha(alpha_text-18);draw_text(_pos_x2,_pos_y2,text_dialogue[1])} //2
else if alpha_text-15 > 0{draw_set_alpha(alpha_text-15);draw_text(_pos_x1,_pos_y1,text_dialogue[2])} //1
else if alpha_text-12 > 0{draw_set_alpha(alpha_text-12);draw_text(_pos_x2,_pos_y2,text_dialogue[3])} //2
else if alpha_text-09 > 0{draw_set_alpha(alpha_text-09);draw_text(_pos_x1,_pos_y1,text_dialogue[4])} //1
else if alpha_text-06 > 0{draw_set_alpha(alpha_text-06);draw_text(_pos_x2,_pos_y2,text_dialogue[5])} //2
else if alpha_text-03 > 0{draw_set_alpha(alpha_text-03);draw_text(_pos_x2,_pos_y2,text_dialogue[6])} //2
else{					  draw_set_alpha(alpha_text);	draw_text(_pos_x2,_pos_y2,text_dialogue[7])} //2
*/


draw_set_alpha(1)
draw_set_color(-1)
draw_set_valign(-1)
draw_set_halign(-1)
draw_set_font(-1)