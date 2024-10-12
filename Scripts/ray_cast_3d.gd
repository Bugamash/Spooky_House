extends RayCast3D

func _process(delta:):
	if is_colliding():
		var hitObj = get_collider()
		if hitObj.has_method("interact") &&  Input.is_action_pressed ("interaction"):
			hitObj.interact()
