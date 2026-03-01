/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if colision_player_1 and colision_player_2{
	global.achievements[global.level][0] = 1
	
	if instance_exists(obj_game){
		with (obj_game){
			if minutos < global.times[global.level][1] {global.achievements[global.level][2] = 1}
			else if minutos <= global.times[global.level][1]+.9999 and (segundos % 60) <= global.times[global.level][2]{global.achievements[global.level][2] = 1}			
		}
	}
	global.next_level = global.level + 1
	global.pause = true
	x = -1500
	y = -1500
}

colision_player_1 = false
colision_player_2 = false

if room_change and !instance_exists(obj_translation_room){
	instance_create_layer(x,y,"Instances",obj_translation_room)
	global.level = global.next_level
	instance_destroy()
}