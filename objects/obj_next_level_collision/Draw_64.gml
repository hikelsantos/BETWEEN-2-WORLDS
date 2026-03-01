/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _draw_player = false
var _face = 1
index_player += .2

index_player = index_player % 4

if global.next_level != global.level{
	if abs(yy - display_get_gui_height() / 2) > 0.1 and !flag_next_level{
		yy = lerp(yy,display_get_gui_height() / 2,0.1)
	}
	else if !flag_next_level{
		yy = display_get_gui_height() / 2
		_draw_player = true
	}
	else{
		yy = lerp(yy,(display_get_gui_height() / 2) - 900,0.1) //original 900
		if abs(yy - (display_get_gui_height() / 2 - 900)) < 1{
			room_change = true
		}
	}
	draw_sprite_ext(spr_map_draw,global.level-1,xx,yy,scale,scale,0,c_white,1)
	draw_sprite_ext(spr_map_draw,global.level,xx,yy,scale,scale,0,c_white,alpha_star)
	
	if alpha_star < 1 {alpha_star += .02}
	
	if _draw_player{
		if last_pos_x > next_pos_x{_face = 1}
		else {_face = -1}
		draw_sprite_ext(spr_pin,0,next_pos_x,next_pos_y,scale/2,scale/2,0,c_white,alpha_player+.5)
		draw_sprite_ext(spr_player_1_jump_left_map,index_player,last_pos_x,last_pos_y,_face*(scale/2),scale/2,0,c_white,alpha_player)
		last_pos_x = lerp(last_pos_x,next_pos_x,0.04)
		last_pos_y = lerp(last_pos_y,next_pos_y,0.04)
	}
	if abs(last_pos_x - next_pos_x) < 0.5 and abs(last_pos_y - next_pos_y) < 0.5{
		last_pos_x = next_pos_x
		last_pos_y = next_pos_y
		if alpha_player > -0.5 {alpha_player -= .03}
		else{flag_next_level = true}
	}
	
	draw_sprite_ext(spr_star,global.achievements[global.level][0],100,yy_complete - 300,scale/2,scale/2,0,c_white,alpha_player+1)
	draw_sprite_ext(spr_coin,global.achievements[global.level][1],150,yy_complete - 200,scale/2,scale/2,0,c_white,alpha_player+1)
	draw_sprite_ext(spr_timer,global.achievements[global.level][2],200,yy_complete - 100,scale/2,scale/2,0,c_white,alpha_player+1)
	draw_set_font(fnt_standard_big)
	draw_set_halign(fa_center)
	if !global.return_menu{draw_text(xx,display_get_gui_height() - 50,"Pressione espaço para voltar ao menu")}
	else{draw_text(xx,display_get_gui_height() - 50,"Voltando ao menu")}
	draw_set_font(-1)
	draw_set_halign(-1)
}