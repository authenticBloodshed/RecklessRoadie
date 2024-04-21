extends Timer

var seconds = 0
var minutes = 0
var Dseconds = 30
var Dminutes = 1

func _ready():
	Reset_Timer()

func _on_timeout():
	print("Timer Stopped!")
	if seconds == 0:
		if minutes > 0:
			minutes -= 1
			seconds = 60
	seconds -= 1
	$Label.text = str(minutes) + ":" + str(seconds)
	
	if seconds <= 0 and minutes <= 0:
		$Label.text = "00:00"

func Reset_Timer():
	seconds = Dseconds
	minutes = Dminutes

