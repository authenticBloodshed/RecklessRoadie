extends Control

#Starts game when button is pressed
func _on_pressed():
	get_tree().change_scene_to_file("res://Minigame.tscn")
