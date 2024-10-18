extends StaticBody3D

var isInteractable = true
var toggle = false
@export var animation_playerI : AnimationPlayer 

@export var message = ""


func interact():
	if isInteractable == true:
		isInteractable = false
		toggle = !toggle
		if toggle == false:
			animation_playerI.play("close")
		if toggle == true:
			animation_playerI.play("open")
	await get_tree().create_timer(1.0, false).timeout
	isInteractable = true
	
func show_message():
		return message
