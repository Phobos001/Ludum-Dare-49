extends Node2D

export(NodePath) var follow_path
export(float) var speed = 100.0

onready var follow = get_node(follow_path)

func _process(delta):
	global_position = global_position.linear_interpolate(follow.global_position, speed * delta)
