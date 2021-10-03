extends Node2D

export(String, FILE) var restart_at_scene

onready var flash = $Polygon2D

func _ready():
	flash.modulate.a = 1
	pass
	
func _process(delta):
	flash.modulate.a = lerp(flash.modulate.a, 0, 4 * delta)
	
	if Input.is_action_just_pressed("action_attackgun"):
		get_tree().change_scene(restart_at_scene)
