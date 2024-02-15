extends Area2D

signal game_end

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
		var tween = get_tree().create_tween()
		tween.tween_property($"../CanvasLayer/Label", "percent_visible", 1,0.4)
		$"../CanvasLayer/Button".visible=true
		$"../CanvasLayer/Button2".visible=true
		emit_signal("game_end")
