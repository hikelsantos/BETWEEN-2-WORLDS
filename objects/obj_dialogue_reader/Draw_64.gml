/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if instance_exists(obj_initial_dialogue){
	if index_dialogue < array_length(obj_initial_dialogue.text_1){
		dialogue(obj_initial_dialogue.text_1[index_dialogue],50,50,fnt_standard_big,-1)
	}
	if index_dialogue == 3{
		draw_sprite_ext(spr_scarab_draw,0,1400,700,8,8,0,c_white,1)	
	}
	if index_dialogue == 4{
		draw_sprite_ext(spr_map_draw,0,1400,700,8,8,0,c_white,1)	
	}
	if index_dialogue > 4{
		instance_create_layer(x,y,"Instances",obj_translation_room_start)
		instance_destroy()
	}
}