extends Timer
class_name WinTimer

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

