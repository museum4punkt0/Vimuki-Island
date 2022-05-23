/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 12E92D97
draw_set_colour($FFFFFFFF & $ffffff);
var l12E92D97_0=($FFFFFFFF >> 24);
draw_set_alpha(l12E92D97_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 79FEE29A
/// @DnDArgument : "font" "fnt_roboto_huge"
draw_set_font(fnt_roboto_huge);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5352C95A
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 61C52622
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1500"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.75"
/// @DnDArgument : "yscale" "0.75"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "global.abspannText"
draw_text_transformed(x + 0, y + 1500, "" + string(global.abspannText), 0.75, 0.75, 0);