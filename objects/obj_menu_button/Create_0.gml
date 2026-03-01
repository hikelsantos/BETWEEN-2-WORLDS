/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

text = ""

y_scale = display_get_gui_height()/room_height
x_scale = display_get_gui_width()/room_width

x_move = 0
x_move_max = 100
scale_text = 1

mouse_in = false

alpha_text = 1

switch type_button{
	case 0: text = "Voltar";break
	case 1: text = "Iniciar";break
	case 2: text = "Selecionar Fase";break
	case 3: text = "Créditos";break
	case 4: text = "Sair";break
}

/*
show_message(room_width)
show_message(display_get_gui_width())
show_message(display_get_gui_width()/room_width)