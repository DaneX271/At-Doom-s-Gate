/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F35B8C5
/// @DnDArgument : "var" "bool_invul"
/// @DnDArgument : "value" "false"
if(bool_invul == false)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 4405B1F8
	/// @DnDParent : 6F35B8C5
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 52820839
	/// @DnDParent : 6F35B8C5
	/// @DnDArgument : "colour" "$B00000FF"
	image_blend = $B00000FF & $ffffff;
	image_alpha = ($B00000FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7734A2B9
	/// @DnDParent : 6F35B8C5
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "bool_invul"
	bool_invul = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5A61F016
	/// @DnDParent : 6F35B8C5
	/// @DnDArgument : "steps" "15"
	alarm_set(0, 15);

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 54F90620
	/// @DnDParent : 6F35B8C5
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives == 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 4214FBBB
		/// @DnDParent : 54F90620
		/// @DnDArgument : "room" "GameOver"
		/// @DnDSaveInfo : "room" "GameOver"
		room_goto(GameOver);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7169A68D
/// @DnDApplyTo : other
with(other) instance_destroy();