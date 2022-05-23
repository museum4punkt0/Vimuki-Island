/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 734518B8
/// @DnDArgument : "font" "fnt_standard_huge"
/// @DnDSaveInfo : "font" "fnt_standard_huge"
draw_set_font(fnt_standard_huge);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5CC1AE4F
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7F5D7356
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "txt_Ticket_Textbox"
draw_text_transformed(x + 0, y + 0, "" + string(txt_Ticket_Textbox), 1, 1, 0);