extends Label

export(PackedScene) var next_dialogue
export(NodePath) var talker_path
export var dialogue_print_textspeeds = [
	["Yoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo", 32.0],
	["Niiiice", 4.0],
	["That's some tyranical russian type style bullshit right there! Hot Damn!", 24.0]
]

onready var talker: AudioStreamPlayer = get_node(talker_path)

var current_slot: int = 0
var time: float = 0.0
var time_flat: int = 0

func _ready():
	time = 0
	time_flat = 0

func _process(delta):
	var printtext = dialogue_print_textspeeds[current_slot][0]
	var printspeed = dialogue_print_textspeeds[current_slot][1]
	
	if Input.is_action_just_pressed("action_attackgun"):
		if time < printtext.length():
			time = 999
		else:
			if current_slot < dialogue_print_textspeeds.size() - 1:
				current_slot += 1
				time = 0
				time_flat = 0
			else:
				# Kill this dialogue and go to the next one
				var dialogue = next_dialogue.instance()
				get_tree().get_root().add_child(dialogue)
				get_parent().queue_free()
	
	time += delta * printspeed
	if int(time) > time_flat and time_flat <= printtext.length():
		talker.play()
		time_flat = int(time)
	

	
	text = printtext.substr(0, time_flat)
	pass
