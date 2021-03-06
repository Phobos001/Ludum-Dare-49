extends Node2D

export(PackedScene) var next_level
export(NodePath) var player_positioner_path
export(NodePath) var player_path

onready var player_positioner: Node2D = get_node(player_positioner_path)
onready var player: Node2D = get_node(player_path)

onready var flash: Polygon2D = $Flash
onready var sfx_exotons: AudioStreamPlayer = $ExotonsCollected
onready var ui_exotons_grow: Sprite = $UIExotonsCountBG/UIExotonsCountGrow

func _ready():
	modulate = Color.black
	pass

func _process(delta):
	if GlobalVariables.goto_next_stage:
		player_positioner.start_position = Vector2(2048, 386)
		modulate.r = lerp(modulate.r, 0, 2 * delta)
		modulate.g = lerp(modulate.g, 0, 2 * delta)
		modulate.b = lerp(modulate.b, 0, 2 * delta)
		if player.global_position.x > 2000:
			GlobalVariables.goto_next_stage = false
			get_tree().change_scene_to(next_level)
	else:
		modulate.r = lerp(modulate.r, 1, 5 * delta)
		modulate.g = lerp(modulate.g, 1, 5 * delta)
		modulate.b = lerp(modulate.b, 1, 5 * delta)
	if GlobalVariables.has_just_collected_exotons:
		GlobalVariables.has_just_collected_exotons = false
		flash.modulate = Color.green
		flash.modulate.a = 1
		sfx_exotons.play(0.0)
		print(GlobalVariables.exotons_collected)
	flash.modulate.a = lerp(flash.modulate.a, 0, 10 * delta)
