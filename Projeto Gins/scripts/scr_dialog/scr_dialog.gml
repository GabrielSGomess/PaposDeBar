// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_texts(){
		switch npc_name{
		case "Roberta":
			ds_grid_add_text("Acho que era isso para mim essa noite,já tá ficando tarde e eu já tomei a minha dose do dia. Valeu pela companhia Roberta. Quer que eu leve a Larissa de volta para o dormitório comigo? Não quero deixar ela aqui desse jeito.", spr_player_portait, 0, "SOFIA (1 DOSE)")			
			ds_grid_add_text("Que isso SOFIA, fica tranquila quanto a isso. Eu e a RAFAELA levamos ela com a gente quando irmos embora, confia em mim.", spr_player_portait, 1, "ROBERTA (0 DOSES)")
			ds_grid_add_text("Tem certeza que não precisa de ajuda? Eu não me importo de levar ela comigo.", spr_player_portait, 1, "SOFIA (1 DOSE)")
			ds_grid_add_text("Sim sim, esse é o aniversário da Rafaela, vou ficar de olhos nelas e deixar ela aproveitar o dia dela mais um tempinho. Vai ficar tudo bem, okay, eu juro. Te vejo mais tarde no dormitório?", spr_player_portait, 1, "ROBERTA (0 DOSES)")
			ds_grid_add_text("... Okay, tudo bem. Te vejo depois.", spr_player_portait, 1, "SOFIA (1 DOSE)");
		break;
		
		case "Teste 1":
			ds_grid_add_text("Este personagem futurametne será utilizado para uma interação com pdera papel e tesoura.", Sprite28, 1, "Sofia");
		break;
	}
}

function ds_grid_add_row(){
	///@arg ds_grid
 
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);	
}
 
function ds_grid_add_text(){
	///@arg texto
	///@arg retrato
	///@arg lado
	///@arg nome
 
	var _grid = grid_text;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}