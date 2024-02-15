extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees=rand_range(0,359)
	var scale_fac = rand_range(0.3,1.4)
	scale = Vector2(scale_fac,scale_fac)

func _process(delta):
	rotation_degrees+=10*delta
