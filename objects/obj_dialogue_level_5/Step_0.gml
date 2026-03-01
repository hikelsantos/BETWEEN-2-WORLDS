/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if flag == 0 and alpha_text < 0{flag = 1}
if flag == 2 and alpha_text < 0{flag = 3}
if flag == 4 and alpha_text < 0{flag = 5}

if flag == 1{flag = 2; alpha_text = 3}
if flag == 3{flag = 4; alpha_text = 3}
if flag == 5{flag = 6; alpha_text = 3}

if flag == 6 and alpha_text < 0{instance_destroy()}

if collided{alpha_text -= .01}