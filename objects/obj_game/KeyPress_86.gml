/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if !esc_pressed{exit}

if v_pressed{
	room_goto(rm_start)	
}

v_pressed = true

alarm[0] = game_get_speed(gamespeed_fps) * 180
