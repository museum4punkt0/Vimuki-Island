draw_self();
draw_set_valign(fa_middle);
draw_set_font(fnt_standard_bold_huge);
draw_text(x, y, message + cursor);

if (string_length(message) == 0) {
	draw_text_color(x, y, "Code", c_white,c_white,c_white,c_white,0.5 );
}

