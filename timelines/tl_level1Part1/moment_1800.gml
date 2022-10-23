/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 637FB972
/// @DnDApplyTo : {obj_pop_managerPart1}
with(obj_pop_managerPart1) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6DB93398
/// @DnDApplyTo : {obj_music}
with(obj_music) instance_destroy();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 15276D47
/// @DnDArgument : "var" "randX"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "200"
/// @DnDArgument : "max" "room_width - 200"
randX = floor(random_range(200, room_width - 200 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 26093408
/// @DnDArgument : "xpos" "randX"
/// @DnDArgument : "ypos" "200"
/// @DnDArgument : "objectid" "obj_ennemy_bigbossPhase1"
/// @DnDSaveInfo : "objectid" "obj_ennemy_bigbossPhase1"
instance_create_layer(randX, 200, "Instances", obj_ennemy_bigbossPhase1);