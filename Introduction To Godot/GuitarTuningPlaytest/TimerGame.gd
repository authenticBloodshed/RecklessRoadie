extends Timer

var seconds = 0
var minutes = 0
var Dseconds = 30
var Dminutes = 2

func _ready():
	Reset_Timer()

func _on_timeout():
	print("Timer Stopped!")
	
	#Makes timer go to 60 seconds when it is under 1 minute
	if seconds == 0:
		if minutes > 0:
			minutes -= 1
			seconds = 60
	seconds -= 1
	$Label.text = str(minutes) + ":" + str(seconds)
	
	#Prevents timer from going into negatives and loads the lose screen
	if seconds <= 0 and minutes <= 0:
		$Label.text = "00:00"
		get_tree().change_scene_to_file("res://LoseScreen.tscn")

#Makes sure you start the game with 1 minute and 60 seconds
func Reset_Timer():
	seconds = Dseconds
	minutes = Dminutes

