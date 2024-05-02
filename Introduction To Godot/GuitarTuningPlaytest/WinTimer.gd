extends Timer
class_name WinTimer

@export var player:CharacterBody2D
@export var bar:Sprite2D
@export var target:Sprite2D
@export var timer:Label
@export var collision:CollisionShape2D
@export var area2D:Area2D
@export var player2:CharacterBody2D
@export var bar2:Sprite2D
@export var target2:Sprite2D
@export var timer2:Label
@export var collision2:CollisionShape2D
@export var area2D2:Area2D

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
	timer.visible = false
	collision.process_mode = Node.PROCESS_MODE_DISABLED
	area2D.process_mode = Node.PROCESS_MODE_DISABLED
	player2.process_mode = Node.PROCESS_MODE_INHERIT
	player2.visible = true
	bar2.process_mode = Node.PROCESS_MODE_INHERIT
	bar2.visible = true
	target2.process_mode = Node.PROCESS_MODE_INHERIT
	target2.visible = true
	timer2.process_mode = Node.PROCESS_MODE_INHERIT
	timer2.visible = true
	collision2.process_mode = Node.PROCESS_MODE_INHERIT
	area2D2.process_mode = Node.PROCESS_MODE_INHERIT
	

