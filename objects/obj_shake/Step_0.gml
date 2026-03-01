/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

shake = lerp(shake,0,0.1)
var _x = random_range(-shake,shake)
var _y = random_range(-shake,shake)

view_set_xport(view_wport[0],_x)
view_set_yport(view_hport[0],_y)

if shake < 0.01{instance_destroy()}