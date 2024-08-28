extends ColorRect


@onready var resume: Button = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/resume
@onready var main_menu: Button = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/main_menu
@onready var volume: Button = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/volume
@onready var animator: AnimationPlayer = $AnimationPlayer


func Unpaused():
	animator.play("Unpause")
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func Paused():
	animator.play("Pause")
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
