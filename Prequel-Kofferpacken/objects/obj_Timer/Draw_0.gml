/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 59D2E231
draw_self();

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 44CC110F
/// @DnDArgument : "value" "seconds"
var temp = seconds;

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 1C785D0B
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "1800"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "25"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "seconds/starting_value*100"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF1DFF00"
draw_healthbar(x + 0, y + 0, x + 1800, y + 25, seconds/starting_value*100, $FFFFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF1DFF00 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));