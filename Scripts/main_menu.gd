extends Control

var play_menu = "res://Scenes/play_menu.tscn"
# Called when the node enters the scene tree for the first time.
func _ready():
	Lobby.reset_var()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_pressed():
	#get_tree().change_scene_to_file("res://Scenes/play_menu.tscn")
	#MultiplayerManger.change_scene(PLAY_MENU)
	Global.GlobalSignalChangeScene.emit(play_menu)


func _on_settings_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	#get_tree().quit()
	Global.GlobalSignalQuit.emit()
