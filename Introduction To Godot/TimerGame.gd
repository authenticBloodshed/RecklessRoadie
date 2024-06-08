extends Timer

var seconds = 0
var minutes = 0
var Dseconds = 30
var Dminutes = 2
@export var minigameScene: Node2D

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
	if seconds == 0 and minutes == 0:
		Dialogic.start("LoseScene")
		await get_tree().create_timer(100000000000000000).timeout
		
		$Label.text = "00:00"
		
		#Dialogic.start("LoseScene")
		
		
		await get_tree().create_timer(100000000000000).timeout

#Makes sure you start the game with 1 minute and 60 seconds
func Reset_Timer():
	seconds = Dseconds
	minutes = Dminutes

