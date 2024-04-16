extends CharacterBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const MAX_FALL_SPEED = 500
const JUMP_FORCE = 300

var motion = Vector2()

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
