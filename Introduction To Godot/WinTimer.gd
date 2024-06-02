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
	
	Global.currentPlayer += 1
	if Global.currentPlayer == 6:
		currentScene.process_mode = currentScene.PROCESS_MODE_DISABLED
		get_tree().change_scene_to_file("res://ThanksScreen.tscn")
		Dialogic.start("WinScene")
		await get_tree().create_timer(100000000000000000).timeout
		
		print("Win")
		
	
	var scene: Node2D = nextScene.instantiate()
	get_tree().root.add_child(scene)
	
	scene.global_position = scene.global_position + Vector2(100 * Global.currentPlayer, 0)
	
	if Global.currentPlayer >= 6:
		Global.currentPlayer = 0
		
	
	currentScene.queue_free()
	
