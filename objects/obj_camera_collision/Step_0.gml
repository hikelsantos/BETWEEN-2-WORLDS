/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if colision_player_1 and colision_player_2{
	if instance_exists(obj_camera){
		instance_destroy()
		obj_camera.stop += 1
	}
}

colision_player_1 = false
colision_player_2 = false