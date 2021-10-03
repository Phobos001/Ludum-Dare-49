extends Button


func _ready():
	if not GlobalVariables.promise_to_kill_joma:
		queue_free()
	pass
