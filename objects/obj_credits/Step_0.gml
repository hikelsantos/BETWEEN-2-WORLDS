/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

alpha_text -= 0.025
yy -= 1

if keyboard_check(vk_space){
	alpha_text -= 0.05
	yy -= 2
}

if alpha_text < 0 {room_goto(rm_start)}

