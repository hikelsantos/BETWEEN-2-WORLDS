// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

global.pause = false
global.return_menu = false

global.already_saw_level_0 = false

global.level = 0 /////0
global.next_level = 0 /////0

global.player_move_in_pause = 0

global.menu_button = 1000

global.easy_mode = false
///////////////////////////////////////////////////

global.achievements = [
	[0,0,0], //Fase 0 vaiza
	[0,0,0],
	[0,0,0],
	[0,0,0],
	[0,0,0],
	[0,0,0]]
//  [0,1,2]

///////////////////////////////////////////////////

global.times = [
	[0,1,0], //Fase 0 vaiza
	[0,0,45],
	[0,0,30],
	[0,1,0],
	[0,1,50],
	[0,1,20]]
//  [0,1,2]

global.your_time = [
	[0,0,0], //Fase 0 vaiza
	[0,0,0],
	[0,0,0],
	[0,0,0],
	[0,0,0],
	[0,0,0]]

// 0 - HORAS
// 1 - MINUTOS
// 2 - SEGUNDOS

/*
trocar a ROOM TO GO no: obj_translation_room
caso nenhum, vai para o menu