extends Sprite2D

var random = Vector2(0, randf_range(-20, 20))
var motion = Vector2(0, -1)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Applies motion
	position += random * delta
	
	#Makes the target bounce against the borders
	if position.y > 569 or position.y < 65:
		random *= -1
		
		#If random is close to 0, makes the speed 10
	if abs(random.y) < 0.01:
		random = Vector2(0,10)
