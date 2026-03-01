/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_halign(fa_left)
draw_set_font(fnt_standard_big_1)
draw_set_color(c_black)
if image_alpha > 1.5{
	draw_text(50,50,"Depois de muito esforço")
	draw_text(50,100,"Você finalmente encontrou a relíquia")
}
if image_alpha > 5 {
	draw_text(50,150,"E ao toca-la e gritar o nome de seu irmão")
	draw_text(50,200,"Um milagre acontece...")
}
draw_set_font(-1)
draw_set_color(c_white)
draw_set_halign(-1)





