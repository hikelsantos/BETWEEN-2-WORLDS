/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

position_levels =
[[-28,-21],
 [-6 ,-20],
 [23 ,-12],
 [-15,  5],
 [3  , 11],
 [31 , 21],
 [-28,-21]] //O ultimo é só para n dar problema
//X  ,  Y//

/*
position_levels =
[[-28,-21],
 [-6 ,-20],
 [23 ,-12],
 [-1 , -2],
 [-27, -7],
 [-28, 14],
 [-15,  5],
 [3  , 11],
 [26 ,  5],
 [31 , 21],]
*/

flag_next_level = false

alpha_star = 0
alpha_player = 1

xx_complete = display_get_gui_width()
yy_complete = display_get_gui_height()

xx = display_get_gui_width() / 2
yy = display_get_gui_height() / 2 + 500
scale = 10

index_player = 0

room_change = false

last_pos_x = position_levels[global.level][0]			* scale + xx
next_pos_x = position_levels[global.level+1][0]			* scale + xx
last_pos_y = position_levels[global.level][1]			* scale + yy - 500
next_pos_y = position_levels[global.level+1][1]			* scale + yy - 500