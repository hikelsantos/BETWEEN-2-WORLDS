/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

text = ""


obj_camera.x =x
obj_camera.y =y

y_scale = display_get_gui_height()/room_height
x_scale = display_get_gui_width()/room_width


show_debug_message(x)
show_debug_message(y)

x_move = 0
x_move_max = 100
scale_text = 1

mouse_in = false

alpha_text = 1

switch type_button{
	case 0: text = "Voltar para o menu";break
	case 1: text = "Ativar modo fácil";break
}

/*
show_message(room_width)
show_message(display_get_gui_width())
show_message(display_get_gui_width()/room_width)