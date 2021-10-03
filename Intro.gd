extends Node2D

# It just now occured to me
export(PackedScene) var entire_game_in_one_package

func _ready():
	pass

func okay_the_intro_is_done_we_can_start_the_game_now():
	get_tree().change_scene_to(entire_game_in_one_package)
