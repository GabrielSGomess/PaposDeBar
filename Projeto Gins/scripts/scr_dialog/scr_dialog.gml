// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_texts(){
		switch npc_name{
		case  "Roberta":
			ds_grid_add_text("Roberta", spr_character, 0, "Character t1")
			ds_grid_add_text("Npc test", spr_portraittest4, 1, "Character t2")
			ds_grid_add_text("Npc test2", spr_portraittest2, 1, "Character t1")
			ds_grid_add_text("Npc test3", spr_portraittest3, 1, "Character t1")
		break;
		
		case "Sofia":
			ds_grid_add_text("Acho que era isso para mim essa noite,já tá ficando tarde e eu já tomei a minha dose do dia.", spr_npc_sofia, 1, "Sofia");
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