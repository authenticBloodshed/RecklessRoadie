extends CharacterBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const MAX_FALL_SPEED = 500
const JUMP_FORCE = 50

var motion = Vector2()
@export var winTimer: WinTimer
@export var winTimerSix : WinTimerSix
@export var playerSix:bool

func _physics_process(delta):
	# Applies gravity
	motion.y += GRAVITY * delta
	# Puts a limit on the fall speed
	motion.y = min(motion.y, MAX_FALL_SPEED)

	# Applies motion
	position += motion * delta

	# Allows the player to jump
	if Input.is_action_pressed("Jump"):
		motion.y = -JUMP_FORCE


func _on_area_2d_area_entered(area):
	print("collided")
	if area.is_in_group("tagret"):
		
		if playerSix :
			winTimerSix.startTimer()
		else: 
			winTimer.startTimer()
	
	if area.is_in_group("boundary"):
		motion.y *= -1
		

func _on_area_2d_area_exited(area):
	if playerSix :
		winTimerSix.pauseTimer()
	else: 
		winTimer.pauseTimer()

