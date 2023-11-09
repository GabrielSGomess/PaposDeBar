/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();

draw_sprite(spr_glass, 1, self.x + 4, self.y - 90);
draw_set_font(font_beer);
draw_text(self.x - 5, self.y - 100, "0/5");

image_xscale = -1;

