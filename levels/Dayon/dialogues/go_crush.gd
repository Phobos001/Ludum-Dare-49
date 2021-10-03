extends Node


func _ready():
	
	if GlobalVariables.times_killed_by_dayon < 10:
		GlobalVariables.times_killed_by_dayon += 1
		get_tree().change_scene("res://levels/GameOverCrushed.tscn")
		queue_free()
	else:
		GlobalVariables.dayon_masochism = true
		
	pass
