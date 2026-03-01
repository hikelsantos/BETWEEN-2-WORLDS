/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
esc_pressed = false
v_pressed = false

milisegundos = 0
segundos = 0
minutos = 0
horas = 0

milisegundos_armazenado = 0

reset_timer = true

str_milisegundos = ""
str_segundos = ""
str_minutos = ""

str_segundos_objetivo = ""
str_minutos_objetivo = ""

xx = display_get_gui_width()
yy = display_get_gui_height()


if		global.level == 0 or global.level == 1 or global.level == 2	{
	if !audio_is_playing(snd_chillloopable_0){
		audio_stop_all()
		audio_play_sound(snd_chillloopable_0,1,true)
	}
}
else if global.level == 3 or global.level == 4	{
	if !audio_is_playing(snd_a_chill_fever_0){
		audio_stop_all()
		audio_play_sound(snd_a_chill_fever_0,1,true)
	}
}
else if global.level == 5{
	if !audio_is_playing(snd_WeltHerrschererTheme1){
		audio_stop_all()
		audio_play_sound(snd_WeltHerrschererTheme1,1,true)
	}
}


exibe_tempo_jogado = function(){
	
	draw_set_halign(1)
	draw_set_valign(1)
	draw_set_color(c_white)
	draw_set_font(fnt_standard)
	milisegundos %= 1000
	segundos %= 60
	minutos %= 60
	horas %= 24
	
	if instance_exists(obj_square) or instance_exists(obj_white_block){exit}
	
	
	str_milisegundos = string(floor(milisegundos))
	if string_length(str_milisegundos)<3{str_milisegundos="0"+str_milisegundos}
	str_segundos = string(floor(segundos))
	if string_length(str_segundos)<2{str_segundos="0"+str_segundos}
	str_minutos = string(floor(minutos))
	if string_length(str_minutos)<2{str_minutos="0"+str_minutos}
	
	draw_text(xx - 45, yy - 50, str_milisegundos)
	draw_text(xx - 75, yy - 50,":")
	draw_text(xx - 100, yy - 50, str_segundos)
	draw_text(xx - 125, yy - 50,":")
	draw_text(xx - 150, yy - 50, str_minutos)
	
	
	
	if global.achievements[global.level][0] > 0{
	
		str_segundos_objetivo = string(global.times[global.level][2])
		if string_length(str_segundos_objetivo)<2{str_segundos_objetivo="0"+str_segundos_objetivo}
		str_minutos_objetivo = string(global.times[global.level][1])
		if string_length(str_minutos_objetivo)<2{str_minutos_objetivo="0"+str_minutos_objetivo}
		
		draw_text(xx - 40, yy - 150, "000")
		draw_text(xx - 75, yy - 150,":")
		draw_text(xx - 100, yy - 150, str_segundos_objetivo)
		draw_text(xx - 125, yy - 150,":")
		draw_text(xx - 150, yy - 150, str_minutos_objetivo)
		draw_text(xx - 100, yy - 130, "OBJETIVO")
	}
	draw_set_font(-1)
	draw_set_color(c_white)
	draw_set_halign(-1)
	draw_set_valign(-1)
}
