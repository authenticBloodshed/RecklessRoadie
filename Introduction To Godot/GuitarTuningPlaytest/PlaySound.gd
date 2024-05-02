extends AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	tune()

func tune():
	if Input.is_action_pressed("Tune"):
		print("play music")
		play()
