extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self_modulate.a8 = 255
	await get_tree().create_timer(2).timeout
	self_modulate.a8 = 200
	await get_tree().create_timer(0,1).timeout
	self_modulate.a8 = 150
	await get_tree().create_timer(0,1).timeout
	self_modulate.a8 = 100
	await get_tree().create_timer(0,1).timeout
	self_modulate.a8 = 60
	await get_tree().create_timer(0,1).timeout
	self_modulate.a8 = 30
	await get_tree().create_timer(0.1).timeout
	self_modulate.a8 = 10
	await get_tree().create_timer(0.1).timeout
	self_modulate.a8 = 0
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
