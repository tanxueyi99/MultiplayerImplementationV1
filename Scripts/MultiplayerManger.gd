extends Node

@onready var current_scene = $CurrentScene


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.GlobalSignalChangeScene.connect(change_scene)
	Global.GlobalSignalQuit.connect(quit)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func change_scene(scene):
	print("scene has change")
	print(current_scene.get_child(0))
	current_scene.get_child(0).queue_free()
	var scene_to_load = load(scene)
	current_scene.add_child(scene_to_load.instantiate())
	
func quit():
	get_tree().quit()
