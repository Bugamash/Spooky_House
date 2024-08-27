class_name optionsMenu
extends Control


@onready var exit_options = $MarginContainer/VBoxContainer/exit_options as Button





func _ready():
	exit_options.button_down.connect(on_exit_options_pressed)



func on_exit_options_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
