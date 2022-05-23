/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 07739643
draw_self();

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 60DC1032
/// @DnDArgument : "value" "(alarm[0]/60)+1"
var temp = (alarm[0]/60)+1;

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 53BDF3B3
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "1800"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "15"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "alarm[0]/starting_value*100"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF05FF15"
draw_healthbar(x + 0, y + 0, x + 1800, y + 15, alarm[0]/starting_value*100, $FFFFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF05FF15 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));