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
	case 1: text = "Fase 1";break
	case 2: text = "Fase 2";break
	case 3: text = "Fase 3";break
	case 4: text = "Fase 4";break
	case 5: text = "Fase 5";break
}

/*
show_message(room_width)
show_message(display_get_gui_width())
show_message(display_get_gui_width()/room_width)