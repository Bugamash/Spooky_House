extends RayCast3D

@onready var label: Label = %Label


func _process(delta:):
	label.text = ""
	if is_colliding():
		var hitObj = get_collider()
		label.text = hitObj.show_message()
		if hitObj.has_method("interact") &&  Input.is_action_pressed ("interaction"):
			hitObj.interact()
			
