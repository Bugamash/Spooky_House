class_name optionsMenu
extends Control


@onready var exit_options: Button = $MarginContainer/VBoxContainer/exit_options as Button


signal exit_options_menu

func _ready() -> void:
	exit_options.button_down.connect(on_exit_options_pressed)
	set_process(false)

func on_exit_options_pressed()-> void:
	exit_options_menu.emit()
	set_process(false)
