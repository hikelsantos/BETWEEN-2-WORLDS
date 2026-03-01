/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if level_finish_flag == 1{
	global.achievements[global.level][0] = 1
	
	if instance_exists(obj_game){
		with (obj_game){
			if minutos < global.times[global.level][1] {global.achievements[global.level][2] = 1}
			else if minutos == global.times[global.level][1] and segundos <= global.times[global.level][2]{global.achievements[global.level][2] = 1}
		}
	}
	level_finish_flag = 2
}