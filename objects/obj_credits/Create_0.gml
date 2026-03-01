/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

text = [" ","Jogo feito para a None Jam 12"," ","Programação:","Geral: HikerHike"," ",
"Artes:","UI Assets Pack 2: Sr.Toasty","dungeonSprites_: AnaologStudios_","Pixel Keyboard Keys - for UI: Dream Mix","", 
"Músicas e Sons:","Welt Herrscherer Theme 1: yd","Happy Clappy: OwlishMedia","Chill: Pro Sensory","A chill fever: Pro Sensory","","",
"Feito por: HikerHike",]

audio_stop_all()
audio_play_sound(snd_HappyClappyLoop,1,true)

text_length = array_length(text)
alpha_text = array_length(text)*3

xx = display_get_gui_width() - 50
yy = display_get_gui_height()