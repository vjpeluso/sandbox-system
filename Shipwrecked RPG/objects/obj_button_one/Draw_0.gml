/// @description 
if (global.diag[global.message,2] = "")
{
	var width = string_width(global.diag[global.message,2]);
	if (width > 50) 
	{
		//adjust image size if a long text option appears.
		var size = (250+(width-50))/250;
		image_xscale = size;
	}
	draw_self();
	draw_set_font(font_message);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_text(x,y,global.diag[global.message,2]);
}
