/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if order != stop and global.level != 5{
	global.pause = true
	if instance_exists(obj_camera_next_position){
		var _id = collision_point(x,y,obj_camera_next_position,false,false)
		
		x+=3
		if x >= obj_camera_next_position.x{
			x = obj_camera_next_position.x
			order = stop
			instance_destroy(_id)
			global.player_move_in_pause = 0
			global.pause = false
		}
	}
}

