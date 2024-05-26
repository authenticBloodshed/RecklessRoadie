extends Timer
class_name WinTimer

@export var currentScene: Node2D
var nextScene: PackedScene

func _ready():
	start()
	paused = true

func startTimer():
	paused = false
	nextScene = load("res://Player1.tscn")
	
func pauseTimer():
	paused = true
	
func _process(delta):
	$Label.text = str(round(time_left))


func _on_timeout():
	print("Win")
	Global.currentPlayer += 1
	if Global.currentPlayer == 6:
		get_tree().change_scene_to_file("res://WinScreen.tscn")
		Dialogic.start("WinScene")
		
		
	
	var scene: Node2D = nextScene.instantiate()
	get_tree().root.add_child(scene)
	
	scene.global_position = scene.global_position + Vector2(100 * Global.currentPlayer, 0)
	
	if Global.currentPlayer > 6:
		Global.currentPlayer = 1
		
	
	currentScene.queue_free()
	
