/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_valign(1)
draw_set_halign(-1)
draw_set_color(c_white)
draw_set_font(fnt_standard_big_1)
//draw_text((x * x_scale) + x_move - 150,y * y_scale,text)
draw_set_alpha(alpha_text)

draw_text_ext_transformed(x,y,text,10,550,scale_text,scale_text,0)

draw_set_color(c_white)
draw_set_alpha(1)
draw_set_color(-1)
draw_set_valign(-1)
draw_set_halign(-1)
draw_set_font(-1)