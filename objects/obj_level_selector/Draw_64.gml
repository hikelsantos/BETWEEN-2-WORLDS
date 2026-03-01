/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//var _your_time = 1
draw_set_valign(1)
draw_set_halign(-1)
draw_set_color(c_white)
draw_set_font(fnt_standard_big_1)
//draw_text((x * x_scale) + x_move - 150,y * y_scale,text)
draw_set_alpha(alpha_text)
if type_button > 1{
	if  global.achievements[type_button-1][0] == 0{draw_set_color(c_gray)}
}
draw_text_ext_transformed((x * x_scale) + x_move - 150,y * y_scale,text,10,550,scale_text,scale_text,0)
if type_button > 0{
	draw_sprite_ext(spr_star, global.achievements[type_button][0],(x * x_scale) + x_move + 150,y * y_scale + 50,3,3,0,c_white,alpha_text)
	draw_sprite_ext(spr_coin, global.achievements[type_button][1],(x * x_scale) + x_move + 300,y * y_scale + 50,3,3,0,c_white,alpha_text)
	draw_sprite_ext(spr_timer, global.achievements[type_button][2],(x * x_scale) + x_move + 450,y * y_scale + 50,3,3,0,c_white,alpha_text)
}


//draw_text_ext_transformed((x * x_scale) + x_move + 600,y * y_scale,global.your_time[1],10,550,3,3,0)


draw_set_color(c_white)
draw_set_alpha(1)
draw_set_color(-1)
draw_set_valign(-1)
draw_set_halign(-1)
draw_set_font(-1)