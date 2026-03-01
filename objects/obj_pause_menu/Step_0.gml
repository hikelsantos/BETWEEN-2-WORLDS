/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if type_button == 1 and global.easy_mode{text = "Desativar modo fácil"}
else if type_button == 1 and !global.easy_mode{text = "Ativar modo fácil"}

if global.menu_button == type_button{
	if type_button == 0 {room_goto(rm_start)}
	if type_button == 1 {global.easy_mode = !global.easy_mode}
	instance_destroy()
	global.menu_button = 1000
}
