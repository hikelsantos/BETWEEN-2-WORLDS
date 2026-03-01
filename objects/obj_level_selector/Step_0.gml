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
		if type_button == 0 {room_goto(rm_start)}
		if type_button == 1 {room_goto(rm_level_1); global.level = type_button; global.next_level = type_button}
		if type_button == 2 {room_goto(rm_level_2); global.level = type_button; global.next_level = type_button}
		if type_button == 3 {room_goto(rm_level_3); global.level = type_button; global.next_level = type_button}
		if type_button == 4 {room_goto(rm_level_4); global.level = type_button; global.next_level = type_button}
		if type_button == 5 {room_goto(rm_level_5); global.level = type_button; global.next_level = type_button}
		instance_destroy()
		global.menu_button = 1000
	}

	
}