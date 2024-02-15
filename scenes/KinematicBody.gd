extends KinematicBody2D

var fallSpeed = 0
var gravity = 300

signal found_platform
signal lost_platform

func _physics_process(delta):
	var velocity = Vector2.ZERO
#	print($RayCast2D.is_colliding())
	if not $RayCast2D.is_colliding():
		emit_signal("lost_platform")
		fallSpeed+=gravity*delta
		velocity = (Vector2(0,fallSpeed))
	else:
#		print( $RayCast2D.get_collider())
		if "PlatformBlue2" in str($RayCast2D.get_collider()):
			emit_signal("found_platform")
		fallSpeed=0
		
	move_and_slide(velocity)
