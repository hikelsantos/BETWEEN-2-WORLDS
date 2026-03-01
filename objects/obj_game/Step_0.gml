/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if !global.pause{
	if reset_timer{
		milisegundos = 0
		segundos = 0
		minutos = 0
		horas = 0
		milisegundos_armazenado = floor(get_timer() / 1000)
	}
	reset_timer = false
}

if global.level == global.next_level{

	//if reset_timer{
	//	milisegundos = 0
	//	segundos = 0
	//	minutos = 0
	//	horas = 0
	//}
	milisegundos = floor(get_timer() / 1000) - milisegundos_armazenado
	segundos = milisegundos / 1000
	minutos = segundos / 60
	horas = minutos / 60

	reset_timer = false
}
//else{
//	reset_timer = true
//}

