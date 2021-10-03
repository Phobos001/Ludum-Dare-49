extends Node2D

export(PackedScene) var next_dialogue_a
export(PackedScene) var next_dialogue_b
export(PackedScene) var next_dialogue_c
export(PackedScene) var next_dialogue_d

var waiting: bool = false
var delay_timer = 0.0

func _process(delta):
	if waiting:
		delay_timer -= delta

func _on_ChoiceA_pressed():
	var dialogue = next_dialogue_a.instance()
	get_tree().get_root().add_child(dialogue)
	queue_free()


func _on_ChoiceB_pressed():
	var dialogue = next_dialogue_b.instance()
	get_tree().get_root().add_child(dialogue)
	queue_free()


func _on_ChoiceC_pressed():
	var dialogue = next_dialogue_c.instance()
	get_tree().get_root().add_child(dialogue)
	queue_free()


func _on_ChoiceD_pressed():
	var dialogue = next_dialogue_d.instance()
	get_tree().get_root().add_child(dialogue)
	queue_free()
