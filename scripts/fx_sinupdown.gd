extends Node2D

export var wave_strength_x: float = 1.0
export var wave_frequency_x: float = 1.0

export var wave_strength_y: float = 1.0
export var wave_frequency_y: float = 1.0

var start_position: Vector2
var time: float = 0.0

func _ready():
	start_position = global_position
	pass

func _process(delta):
	time += delta
	global_position = Vector2(start_position.x + cos(time * wave_frequency_x) * wave_strength_x, start_position.y + sin(time * wave_frequency_y) * wave_strength_y)
