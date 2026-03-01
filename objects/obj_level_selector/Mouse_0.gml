/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if !audio_is_playing(snd_button_2){
	audio_play_sound(snd_button_2,2,false)
}

if type_button > 1{
	if global.achievements[type_button-1][0] == 0 {exit}
}

if global.menu_button != 1000{exit}
global.menu_button = type_button

/*
if global.menu_button == 4 {game_end()}