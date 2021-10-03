extends Node2D

var timer = 0.66

func _ready():
	GlobalVariables.actually_killed_joma = true
	pass
	
func _process(delta):
	timer -= delta
	if timer <= 0:
		GlobalVariables.exotons_collected += 10
		get_tree().change_scene("res://levels/Joma/joma_dies.tscn")
		queue_free()
