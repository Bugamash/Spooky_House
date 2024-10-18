class_name Main_menu
extends Control

@onready var play: Button = $MarginContainer/HBoxContainer/VBoxContainer/Play as Button
@onready var options: Button = $MarginContainer/HBoxContainer/VBoxContainer/Options as Button
@onready var quit: Button = $MarginContainer/HBoxContainer/VBoxContainer/Quit as Button
@onready var start_level = preload("res://Scenes/Level.tscn")
@onready var margin_container: MarginContainer = $MarginContainer as MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	handle_connecting_signals()
	
	
	
	
	
	
	
func on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Level.tscn")
	
func on_quit_pressed() -> void:
	get_tree().quit()

func on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/options_menu.tscn")

func on_exit_options_menu() -> void:
	get_tree().quit()

func handle_connecting_signals() -> void:
	play.button_down.connect(on_play_pressed)
	options.button_down.connect(on_options_pressed)
	quit.button_down.connect(on_quit_pressed)
