/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if n_player == 1{grav = .25}
else{grav = -.25; image_yscale = -1}
velv = 0
velh = 0

velv_jump = 4

if n_player == 2 and global.level == 4 {velv_jump = 3}
if n_player == 2 and global.level == 5 {velv_jump = 2}

velh_jump = 2

if n_player == 2 and global.level == 4 {velh_jump = 1}
if n_player == 2 and global.level == 5 {velh_jump = 1}

velv_max = 20

velv_to_pass = 0

qt_jump = 1

coyote_effect = false

move_in_pause = 0

flag_state_fall = false
cancel_fall = false
collision_from_top = false

time_jump_trampoline = 0
start_trampoline = false

if n_player == 1{
	sprite = [spr_player_1_idle_left,spr_player_1_jump_left,spr_player_1_fall_left,spr_player_1_upraise_left]
}
else{
	sprite = [spr_player_2_idle_left,spr_player_2_jump_left,spr_player_2_fall_left,spr_player_2_upraise_left]
}
//sprite = [0 - IDLE,1 - JUMP,2 - FALL,3 - UPRAISE]

index_sprite_real = 0

/////////////////////////////////////////////////////

state_txt = "idle"
state = noone

change_sprite = function(_index_sprite = 0){
	if _index_sprite != index_sprite_real {index_sprite_real = _index_sprite; image_index = 0}
	sprite_index = sprite[index_sprite_real]
}

player_control = function(){
	if global.pause {
		if global.player_move_in_pause{
			if x < move_in_pause {x+= 0.20;velv = 1;state = state_walk}
			else{velv = 0;state = state_idle}
		}
		if global.player_move_in_pause < 2 and flag_move_inpause == true{global.player_move_in_pause++; move_in_pause = x + 32;flag_move_inpause = false}
		exit
	}
	else{flag_move_inpause = true}
	
	if instance_exists(obj_game){if obj_game.esc_pressed{exit}}
	
	
	var _floor = place_meeting(x, y+1, obj_plataform_up_down)
	var _tramp = place_meeting(x, y+6, obj_trampoline)
	var _jump = keyboard_check_pressed(ord("W"))
	var _left = keyboard_check(ord("A"))
	var _right = keyboard_check(ord("D"))
	var _jump_sound = noone
	var _tram_sound = noone
	if n_player == 2{
		_floor = place_meeting(x, y-1, obj_plataform_up_down)
		_tramp = place_meeting(x, y-6, obj_trampoline)
		_jump = keyboard_check_pressed(vk_down)
		_left = keyboard_check(vk_left)
		_right = keyboard_check(vk_right)
	}
	if _left - _right == 1{image_xscale = 1}
	else if _right - _left == 1{image_xscale = -1}

	if _jump and qt_jump > 0{
		if n_player == 1{velv = -velv_jump}
		else{velv = +velv_jump}
		qt_jump = 0
		_jump_sound = audio_play_sound(snd_jump,2,false)
		audio_sound_pitch(_jump_sound,random_range(0.6,1.4))
	}

	if _floor{
		qt_jump = 1
		alarm[0] = -1
		coyote_effect = false
	}
	else {
		if abs(velv_to_pass) < abs(velv){velv_to_pass = velv}
		if !coyote_effect{
			coyote_effect = true
			alarm[0] = 5
		}
		velv += grav
		alarm[1] = 1
	}

	velh = (_right - _left) * velh_jump

	velv = clamp(velv, -velv_max, velv_max)

	//end step

	repeat abs(velh){
		var _velh = sign(velh)
	
		if n_player == 1 && (place_meeting(x + _velh,y,obj_plataform_up_down) && !place_meeting(x + _velh,y -1,obj_plataform_up_down)){y--}
		if n_player == 2 && (place_meeting(x + _velh,y,obj_plataform_up_down) && !place_meeting(x + _velh,y +1,obj_plataform_up_down)){y++}
		if n_player == 1 && (!place_meeting(x + _velh,y,obj_plataform_up_down) && !place_meeting(x + _velh,y +1,obj_plataform_up_down)
		&& place_meeting(x + _velh,y +2,obj_plataform_up_down)){y++}
		if n_player == 2 && (!place_meeting(x + _velh,y,obj_plataform_up_down) && !place_meeting(x + _velh,y -1,obj_plataform_up_down)
		&& place_meeting(x + _velh,y -2,obj_plataform_up_down)){y--}
	
		if place_meeting(x + _velh,y,obj_plataform_up_down){
			velh = 0
			break
		}
		else{
			x += _velh
		}
	}

	repeat ceil(abs(velv)){
		var _velv = sign(velv)
		if place_meeting(x,y + _velv,obj_plataform_up_down){
			if abs(velv) >= 6 and !_tramp{flag_state_fall = true}
			velv = 0
			break
			
			
		}
		else{
			y += _velv
		}
	}
	
	if flag_state_fall {
		state = state_fall
		if !audio_is_playing(snd_explosion){audio_play_sound(snd_explosion,2,false)}
	}
	if start_trampoline {
		state = state_jump_trampoline; start_trampoline = false
		_tram_sound = audio_play_sound(snd_trampoline,2,false)
		audio_sound_pitch(_tram_sound,random_range(0.6,1.4))
	}
}

/////////////////////////////////////////////////////
state_idle = function(){
	state_txt = "idle"
	player_control()
	change_sprite(0)
	
	var _floor = place_meeting(x, y+1, obj_plataform_up_down)
	var _jump = keyboard_check_pressed(ord("W"))
	var _left = keyboard_check(ord("A"))
	var _right = keyboard_check(ord("D"))
	if n_player == 2{
		_floor = place_meeting(x, y-1, obj_plataform_up_down)
		_jump = keyboard_check_pressed(vk_down)
		_left = keyboard_check(vk_left)
		_right = keyboard_check(vk_right)
	}
	if (_left xor _right) or _jump and global.pause == false {state = state_walk}
}

state_walk = function(){
	state_txt = "walk"
	player_control()
	change_sprite(1)
	
	if velv == 0 and velh == 0{state = state_idle}
}
state_fall = function(){
	state_txt = "fall"
	//player_control()
	change_sprite(2)
	
	if n_player == 1 and collision_from_top == false and place_meeting(x, bbox_top-1, obj_plataform_up_down){
			image_yscale = -image_yscale; 
			collision_from_top = true; 
			y -= sprite_get_height(spr_player_1_idle_left)-4
		}
	else if n_player == 2 and collision_from_top == false  and place_meeting(x, bbox_bottom+1, obj_plataform_up_down){
			image_yscale = -image_yscale; 
			collision_from_top = true; 
			y += sprite_get_height(spr_player_1_idle_left)-4
		}
	if image_index >= image_number - 1 {
		state = state_idle
		flag_state_fall = false
		if collision_from_top{
			image_yscale = -image_yscale;
			if n_player == 1{y += sprite_get_height(spr_player_1_idle_left)+5}
			else if n_player == 2{y -= sprite_get_height(spr_player_1_idle_left)+5}
		}
		collision_from_top = false
		}
	
	if !instance_exists(obj_shake){instance_create_layer(x,y,"Instances",obj_shake)}
}
state_jump_trampoline = function(){
	state_txt = "jumping_high"
	player_control()
	change_sprite(1)
	
	//var _floor = place_meeting(x, y+1, obj_plataform_up_down)
	//if n_player == 2{_floor = place_meeting(x, y-1, obj_plataform_up_down)}
	
	time_jump_trampoline --
	
	if time_jump_trampoline % 3 == 0 {
			var _trail = instance_create_layer(x,y,"Mandatory",obj_player_trail)
			_trail.sprite_index = sprite_index
			_trail.image_index = image_index
			_trail.image_xscale = image_xscale
			_trail.image_yscale = image_yscale
			_trail.n_player = n_player
		}
	if time_jump_trampoline < 0 {state = state_idle}
	//if _floor and !start_trampoline {state = state_idle}
	//start_trampoline = false
}

state = state_idle