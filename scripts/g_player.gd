extends Node

onready var body = $KinematicBody
onready var collision = $KinematicBody/CollisionShape2D
onready var sprite = $Sprite3D
onready var camera = $Camera
onready var cameramouseray = $Camera/RayCast

export var camera_height = 30
export var hammer_attack_force: float = 10.0

var mouse_screen_position: Vector2
var target_camera_position: Vector3

var mouse_delta: Vector2

func _input(event):
	if event is InputEventMouseMotion:
		mouse_delta = event.relative

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	pass

func _process(delta):
	pass
	
