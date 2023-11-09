// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_texts(){
		switch npc_name{
		case "Roberto":
			ds_grid_add_text("Roberto ainda não tomou uma dose, ele quer tomar uma mas ele tem consciência que ele não pode beber sem limites!", spr_player_portait, 0, "SOFIA (1 DOSE)")			
			ds_grid_add_text("Quero apenas uma dose whisky, não posso passar dos limites!", spr_npc_carlos, 1, "ROBERTO (0 DOSES)")
		break;
		
		case "Claudinha":
			ds_grid_add_text("A Claudinha tomou uma dose, ela sabe que precisa alternar bebidas alcoólicas com não alcoólicas.", spr_npc_carlos, 0, "SOFIA (1 DOSE)");
			ds_grid_add_text("Ah sim ... irei pegar um suquinho!", spr_npc_claudinha, 1, "CLAUDINHA (1 DOSE)");
		break;
		
		case "7 Doses":
			ds_grid_add_text("Esse homem bebeu 7 doses, acabou bebendo demais e ele está arriscando sua saúde", spr_player_portait, 0, "SOFIA (1 DOSE)");		
			ds_grid_add_text("Num to nãão! To nuuuma boua.", spr_npc_carlos, 1, "ROBERTA (0 DOSES)");
			ds_grid_add_text("Ele claramente não tá numa boa, você bebeu demais.", spr_player_portait, 0, "SOFIA (1 DOSE)");
		break;
		
		case "Jéssica":
			ds_grid_add_text("A Jéssica consegue explicar para a gente os malefícios de beber demais, não é Jéssica?", spr_player_portait, 0, "SOFIA(1 DOSE)");
			ds_grid_add_text("Isso mesmo, temos que cuidar com o BPE (Beber Pesado Episódico ou consumo abusivo).", spr_npc_jessica, 1, "JÉSSICA (0 DOSES)");	
			ds_grid_add_text("E o que é esse tal de BPE?", spr_player_portait, 0, "Jéssica (0 DOSES)");
			ds_grid_add_text("É uma métrica que define o consumo de 5 doses ou mais para homens ou 4 doses ou mais para mulheres em um período de 2 horas como um consumo de risco a longo prazo.", spr_npc_jessica, 1, "JÉSSICA (0 DOSES)");
			ds_grid_add_text("Então é bom a gente tomar cuidado.", spr_player_portait, 0, "SOFIA (1 DOSE)");
		break;
		
		case "Sair do bar":
			ds_grid_add_text("Bom, lembre-se sempre, existem várias formas de ajudar pessoas que tiveram consumo abusivo, além de várias formas de evitarmos consumir demais", spr_player_portait, 0, "SOFIA (1 DOSE)");
			ds_grid_add_text("Conte quantas doses de bebida você tomou e pare antes de exagerar, se alimente antes de beber, não ache que por estar com pessoas que estão consumindo alcoól em excesso você também deve.", spr_player_portait, 0, "SOFIA (1 DOSE)");
			ds_grid_add_text("FIM DE JOGO", spr_player_portait, 1, "SOFIA (1 DOSE)");
			instance_destroy(obj_end_event);
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