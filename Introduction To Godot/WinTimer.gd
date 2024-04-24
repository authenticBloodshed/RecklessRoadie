extends Timer
class_name WinTimer

@export var player:CharacterBody2D
@export var bar:Sprite2D
@export var target:Sprite2D
@export var timer:Label

func _ready():
	start()
	paused = true

func startTimer():
	paused = false
	
func pauseTimer():
	paused = true
	
func _process(delta):
	$Label.text = str(round(time_left))


func _on_timeout():
	print("Win")
	player.process_mode = Node.PROCESS_MODE_DISABLED
	player.visible = false
	bar.process_mode = Node.PROCESS_MODE_DISABLED
	bar.visible = false
	target.process_mode = Node.PROCESS_MODE_DISABLED
	target.visible = false
	timer.process_mode = Node.PROCESS_MODE_DISABLED

