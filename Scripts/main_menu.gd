extends Node2D

@onready var button_timer: Timer = $"Button Timer"
var n

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void: # play pressed on main menu
	button_timer.start()
	n = 2


func _on_shop_pressed() -> void: # shop menu pressed on main menu
	get_tree().change_scene_to_file("res://Scenes/shop.tscn")


func _on_options_pressed() -> void: # options menu pressed on main menu
	button_timer.start()
	n = 3


func _on_exit_pressed() -> void: # exit pressed on main menu
	button_timer.start()
	n = 1


func _on_button_timer_timeout() -> void:
	if n == 1:
		get_tree().quit()
	elif n == 2:
		get_tree().change_scene_to_file("res://Scenes/game.tscn")
	elif n == 3:
		get_tree().change_scene_to_file("res://Scenes/shop.tscn")
