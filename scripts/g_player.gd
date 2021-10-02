extends Node2D

onready var rb = $RigidBody2D
onready var collision = $RigidBody2D/CollisionShape2D
onready var sprite = $Sprite

export var hammer_attack_force: float = 10.0

func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("action_attackhammer"):
		var aim_direction = (get_global_mouse_position() - rb.global_position)
		rb.apply_central_impulse(aim_direction * hammer_attack_force)
	if Input.is_action_just_pressed("action_attackgun"):
		var aim_direction = (get_global_mouse_position() - rb.global_position)
		
	pass
