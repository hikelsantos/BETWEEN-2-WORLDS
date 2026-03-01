/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

x_move = clamp(x_move,0,x_move_max)

if mouse_in == false{x_move = lerp(x_move,0,.1);scale_text = lerp(scale_text,1,.1)}
else {x_move = lerp(x_move,x_move_max,.1);scale_text = lerp(scale_text,2,.1)}

if global.menu_button != 1000{
	if global.menu_button == type_button{x += 1}
	else{x -= 3}
	alpha_text -= .05
}

if alpha_text < -2{
	if global.menu_button == type_button{
		if type_button == 1 and !instance_exists(obj_dialogue_reader){instance_create_layer(x,y,"Instances",obj_dialogue_reader)}
		if type_button == 2 {room_goto(rm_level_selector)}
		if type_button == 3 {room_goto(rm_credits)}
		instance_destroy()
		global.menu_button = 1000
	}

	
}