class_name Main_menu
extends Control

@onready var play: Button = $MarginContainer/HBoxContainer/VBoxContainer/Play as Button
@onready var options: Button = $MarginContainer/HBoxContainer/VBoxContainer/Options as Button
@onready var quit: Button = $MarginContainer/HBoxContainer/VBoxContainer/Quit as Button
@onready var start_level = preload("res://Scenes/Level.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	play.button_down.connect(on_play_pressed)
	quit.button_down.connect(on_quit_pressed)
	
	
	
	
func on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Level.tscn")
	
func on_quit_pressed() -> void:
	get_tree().quit()
