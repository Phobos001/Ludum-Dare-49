extends Sprite

var target_color: Color = Color.red
var win_color_timer: float = 0.0

func _ready():
	scale = Vector2.ONE * (float(GlobalVariables.exotons_collected) / float(GlobalVariables.exotons_total_possible))
	randomize()
	pass

func _process(delta):
	win_color_timer -= delta
		
	var progress: float = float(GlobalVariables.exotons_collected) / float(GlobalVariables.exotons_total_possible)
	var target_grow_scale = Vector2.ONE * (progress)
	scale = scale.linear_interpolate(target_grow_scale, 5 * delta)
	
	
	
	if progress >= 1 and win_color_timer <= 0:
		target_color = Color(randf(), randf(), randf(), 1.0)
		win_color_timer = 0.4
		
	elif progress > 0 and progress < 0.25:
		target_color = Color.red.linear_interpolate(Color.yellow, progress - 0.75)
	elif progress >= 0.25 and progress < 1:
		target_color = Color.yellow.linear_interpolate(Color.cyan, progress - 0.25)
	self_modulate = self_modulate.linear_interpolate(target_color, 10 * delta)
