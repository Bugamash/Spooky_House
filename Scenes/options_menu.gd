class_name optionsMenu
extends Control


@onready var exit_options: Button = $MarginContainer/VBoxContainer/exit_options







func _ready():
	exit_options.button_down.connect(on_exit_options_pressed)



func on_exit_options_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

#Controls the overall volume of the game#
func _on_volume_value_changed(value):
	AudioServer.set_bus_volume_db(0, value)
