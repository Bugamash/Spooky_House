extends ColorRect


@onready var resume: Button = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/resume as Button
@onready var main_menu: Button = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/main_menu as Button
@onready var animator: AnimationPlayer = $AnimationPlayer


func _ready() -> void:
	resume.pressed.connect(unpaused)
	main_menu.pressed.connect(on_main_menu_pressed)

func unpaused():
	animator.play("Unpaused")
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
	
func Paused():
	animator.play("Pause")
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	
func on_main_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
