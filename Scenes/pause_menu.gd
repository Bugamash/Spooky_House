class_name pauseMenu
extends Control

@onready var resume: Button = $MarginContainer/VBoxContainer/resume as Button
@onready var main_menu: Button = $MarginContainer/VBoxContainer/mainMenu as Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	resume.button_down.connect(on_resume_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
