/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//AAAAA===
if !audio_is_playing(snd_button_2){
	audio_play_sound(snd_button_2,2,false)
}

if (window_get_fullscreen())
{
    window_set_fullscreen(false);
}
else
{
    window_set_fullscreen(true);
}