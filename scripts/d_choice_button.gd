extends Button

func _process(delta):
	if is_hovered():
		modulate = Color(1.0, 1.0, 0.0, 1.0)
	else:
		modulate = Color(1.0, 1.0, 1.0, 1.0)
