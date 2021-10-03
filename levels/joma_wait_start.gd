extends Node

export(PackedScene) var dialogue_start

var timer = 5.642345

func _process(delta):
	timer -= delta
	if timer <= 0:
		var dialogue = dialogue_start.instance()
		get_tree().get_root().add_child(dialogue)
		queue_free()
