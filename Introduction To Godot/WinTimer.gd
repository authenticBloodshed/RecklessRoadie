extends Timer
class_name WinTimer

var bar_path = "Minigame/MinigameScene/Bar"  # Path to the bar node

func _ready():
	start()
	paused = true
	
	if not is_inside_tree():
		return

	# Attempt to get the node
	var bar = get_node_or_null(bar_path)
	
	if bar == null:
		print("No bar found")
		return

	disable_node(bar)

func startTimer():
	paused = false

func pauseTimer():
	paused = true

func _process(delta):
	$Label.text = str(round(time_left))

func _on_timeout():
	pass

func disable_node(bar):
	bar.input_disabled = true
	bar.visible = false

