/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


image_alpha -= 0.1
if n_player == 2{image_yscale += image_reduction}
else{image_yscale -= image_reduction}

if image_xscale > 0{image_xscale -= image_reduction}
else{image_xscale += image_reduction}
if image_alpha < 0{instance_destroy()}