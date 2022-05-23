/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 1E7283DA
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5025CBB6
/// @DnDArgument : "font" "fnt_roboto_menue"
draw_set_font(fnt_roboto_menue);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 72868279
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 39331499
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.5"
/// @DnDArgument : "yscale" "0.5"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "getMenueText("days") + " " + string(global.day) + " / 5""
draw_text_transformed(x + 0, y + 0, "" + string(getMenueText("days") + " " + string(global.day) + " / 5"), 0.5, 0.5, 0);