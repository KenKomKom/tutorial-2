extends StaticBody2D

var move_plane=false
var end=false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction
	var moved =false
	if not end:
		direction = Input.get_vector("move_left","move_right","move_up","move_down")
		if direction.x>0 and isRightEmpty():
			move_local_x(direction.x*200*delta)
			moved=true
		if direction.x<0 and isLeftEmpty():
			move_local_x(direction.x*200*delta)
			moved=true
		if direction.y<0 and isUpEmpty():
			move_local_y(direction.y*200*delta)
			moved=true
		if direction.y>0 and isDownEmpty():
			move_local_y(direction.y*200*delta)
			moved=true
	if move_plane and not end and moved:
		$"../BlueShip2".move_local_x(direction.x*200*delta)
		$"../BlueShip2".move_local_y(direction.y*200*delta)

func _on_BlueShip2_found_platform():
	move_plane=true


func _on_Level2_game_end():
	end=true


func _on_BlueShip2_lost_platform():
	move_plane=false

func isRightEmpty():
	var res = true
	var list = $raycastR.get_children()
	for i in range(list.size()):
		res = res and not list[i].is_colliding()
	return res

func isLeftEmpty():
	var res = true
	var list = $raycastL.get_children()
	for i in range(list.size()):
		res = res and not list[i].is_colliding()
	return res

func isDownEmpty():
	var res = true
	var list = $raycastD.get_children()
	for i in range(list.size()):
		res = res and not list[i].is_colliding()
	return res
	
func isUpEmpty():
	var res = true
	var list = $raycastU.get_children()
	for i in range(list.size()):
		res = res and not list[i].is_colliding()
	return res
