extends Node2D

# Spawned by dialogues to tell the game that it's time to move on

func _ready():
	GlobalVariables.goto_next_stage = true
	pass

