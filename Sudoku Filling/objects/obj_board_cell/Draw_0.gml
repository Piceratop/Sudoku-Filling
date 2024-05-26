draw_self();
draw_set_font(obj_controller.fnt_big_number);
set_center_draw();
if (value != undefined) {
	draw_text(x, y, $"{value}");
}