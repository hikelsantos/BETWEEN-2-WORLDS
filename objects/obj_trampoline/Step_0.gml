/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Verifica player 1 - acima
var _player_1 = collision_rectangle(x,y-4,x+sprite_width,y-1,obj_entity,false,false)
//Verifica player 2 - abaixo
var _player_2 = collision_rectangle(x,y+5,x+sprite_width,y+1,obj_entity,false,false)




if _player_1{
	
	if abs(_player_1.velv_to_pass) > 0.5{
		player_2_new_velv = _player_1.velv_to_pass
	}
	else if abs(player_1_new_velv) > 0.5{
		if _player_1.state == _player_1.state_fall{_player_1.state = _player_1.state_walk;_player_1.cancel_fall = true}
		_player_1.velv += player_1_new_velv
		//_player_1.state = _player_2.state_jump_trampoline
		_player_1.start_trampoline = true
		_player_1.time_jump_trampoline = ceil(abs(player_1_new_velv * game_get_speed(gamespeed_fps)) * .05)
	}
}
else{
	player_1_new_velv = 0
}

if _player_2{
	if abs(_player_2.velv_to_pass) > 0.5{
		player_1_new_velv = _player_2.velv_to_pass
		
	}
	else if abs(player_2_new_velv > 0.5){
		if _player_2.state == _player_2.state_fall{_player_2.state = _player_2.state_walk;_player_2.cancel_fall = true}
		_player_2.velv += player_2_new_velv
		//_player_2.state = _player_2.state_jump_trampoline
		_player_2.start_trampoline = true
		_player_2.time_jump_trampoline = ceil(abs(player_2_new_velv * game_get_speed(gamespeed_fps)) * .05)
	}
}
else{
	player_2_new_velv = 0
}

