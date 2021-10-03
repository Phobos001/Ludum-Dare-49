extends Node

export(NodePath) var dialoguer_path
export(int) var dialoger_give_exotons_on_slot = 0
export(int) var dialoger_give_exotons_amount = 0

onready var dialoger = get_node(dialoguer_path)

func _process(_delta):
	if (dialoger.current_slot == dialoger_give_exotons_on_slot):
		GlobalVariables.exotons_collected += dialoger_give_exotons_amount
		GlobalVariables.has_just_collected_exotons = true
		queue_free()
	pass
