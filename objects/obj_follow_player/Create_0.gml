/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

follow_player = function(){
	if instance_exists(obj_player_1){
		x = round(lerp(x, obj_player_1.x, .1))
		y = round(lerp(y, obj_player_1.y, .1))
	}
}

