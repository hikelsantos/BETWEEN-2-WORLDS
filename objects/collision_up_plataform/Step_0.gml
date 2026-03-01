/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if colided{alpha_text -= .01/*.01*/}

if alpha_text <= 0 and y_player_1 == 0{
	y_player_1 = obj_player_1_level_0.y

	y_player_2 = obj_player_2_level_0.y

	y_plataform = obj_plataform_up_down_level_0.y
}
if y_plataform != 0 and up > 0{
	obj_plataform_up_down_level_0.y --
	obj_player_1_level_0.y --
	up--
	if up <= 0{flag_1 = 1;alpha_text = 24;obj_player_1_level_0.y --}
}

if flag_1 == 1 and alpha_text < 0{
	obj_player_1_level_0.state = obj_player_1_level_0.state_animation_3
	obj_player_2_level_0.state = obj_player_2_level_0.state_animation_3
	instance_destroy()
}