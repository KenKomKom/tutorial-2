extends Node2D

signal game_end

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D2_body_entered(body):
	$CanvasLayer/WinLose.text = "YOU LOSE"
	var tween = get_tree().create_tween()
	tween.tween_property($CanvasLayer/WinLose, "percent_visible", 1,0.4)
	$CanvasLayer/Button.visible=true
	emit_signal("game_end")


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/MainLevel.tscn")


func _on_win_body_entered(body):
	print(body)
	if "BlueShip2" in str(body): 
		$CanvasLayer/WinLose.text = "YOU WIN"
		var tween = get_tree().create_tween()
		tween.tween_property($CanvasLayer/WinLose, "percent_visible", 1,0.4)
		$CanvasLayer/Button.visible=true
		emit_signal("game_end")
