/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if global.pause{exit}

if instance_exists(obj_camera) and instance_exists(obj_player_1) and instance_exists(obj_player_2){
	if obj_camera.stop == order{
		obj_player_1.y = bbox_top
		obj_player_1.x = bbox_left
		obj_player_2.y = bbox_bottom
		obj_player_2.x = bbox_left
	}
}