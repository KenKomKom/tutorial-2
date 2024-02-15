extends Node2D

export var speed = 500.0

var end=false

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Platform initialized")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not end:
		if Input.is_action_pressed("move_up"):
			move_local_y(-speed * delta)
		
		if Input.is_action_pressed("move_down"):
			move_local_y(speed * delta)


func _on_ObjectiveArea_game_end():
	end = true
