/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

room_to_go = rm_level_1 ////////////////////////////////////////////////////////trocar


switch global.next_level{
	case 0: room_to_go = rm_level_0; break;
	case 1:	room_to_go = rm_level_1; break;
	case 2:	room_to_go = rm_level_2; break;
	case 3:	room_to_go = rm_level_3; break;
	case 4:	room_to_go = rm_level_4; break; ////////////////////Adcionar mais
}

var _larg = sprite_get_width(spr_square)
col = ceil(room_width / _larg)
lin = ceil(room_height / _larg)+10

num_repeat = col * lin
indice_array = []

for (var _ind = 0; _ind < num_repeat; _ind++){
	array_push(indice_array,_ind)
}

instance_destroy()
	
var _spawn_block = function(){
	var _larg = sprite_get_width(spr_square)
	var _larg_half = sprite_get_width(spr_square) /2
	var _new_indice = array_pop(indice_array)
	var _new_indice_2 = array_pop(indice_array)
	var _new_indice_3 = array_pop(indice_array)
	var _new_indice_4 = array_pop(indice_array)
	var _x = _new_indice % col
	var _y = _new_indice div col
	instance_create_layer(_x*_larg + _larg_half,_y*_larg + _larg_half,"Translation",obj_square)
	_x = _new_indice_2 % col
	_y = _new_indice_2 div col
	instance_create_layer(_x*_larg + _larg_half,_y*_larg + _larg_half,"Translation",obj_square)
	_x = _new_indice_3 % col
	_y = _new_indice_3 div col
	instance_create_layer(_x*_larg + _larg_half,_y*_larg + _larg_half,"Translation",obj_square)
	_x = _new_indice_4 % col
	_y = _new_indice_4 div col
	instance_create_layer(_x*_larg + _larg_half,_y*_larg + _larg_half,"Translation",obj_square)
}
var _aviso = function(){
	global.pause = false
	global.player_move_in_pause = 0
	room_goto(room_to_go)	
}

var _timer_1 = time_source_create(time_source_game,110,time_source_units_frames, _aviso)
time_source_start(_timer_1)
	
var _timer_2 = time_source_create(time_source_game,1,time_source_units_frames, _spawn_block,[],num_repeat/4)
time_source_start(_timer_2)