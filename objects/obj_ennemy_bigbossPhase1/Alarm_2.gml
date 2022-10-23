/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5DDA6D98
/// @DnDArgument : "xpos" "-170"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "100"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_boss_bullet"
/// @DnDSaveInfo : "objectid" "obj_boss_bullet"
instance_create_layer(x + -170, y + 100, "Instances", obj_boss_bullet);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7BD2369C
/// @DnDArgument : "xpos" "170"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "100"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_boss_bullet"
/// @DnDSaveInfo : "objectid" "obj_boss_bullet"
instance_create_layer(x + 170, y + 100, "Instances", obj_boss_bullet);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 27943320
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 60);