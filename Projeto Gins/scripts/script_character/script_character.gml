// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_character_movement(){
hspd = (right - left) *spd;

x += hspd;

//Set control

	right = keyboard_check(ord("D"));
	left = keyboard_check(ord("A"));
}