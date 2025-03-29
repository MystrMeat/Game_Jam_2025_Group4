extends Node2D

@onready var button_timer: Timer = $"Button Timer"
var n

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_shop_pressed() -> void: # shop menu pressed on main menu
	button_timer.start()
	n = 3


func _on_options_pressed() -> void: # options menu pressed on main menu
	pass


func _on_exit_pressed() -> void: # exit pressed on main menu
	button_timer.start()
	n = 1


func _on_button_timer_timeout() -> void:
	if n == 1: # exit game
		get_tree().quit()
	elif n == 2: # play game
		get_tree().change_scene_to_file("res://Scenes/game.tscn")
	elif n == 3: # enter shop
		get_tree().change_scene_to_file("res://Scenes/shop.tscn")
	elif n == 4: # credits
		get_tree().change_scene_to_file("res://Scenes/credits.tscn")

func _on_play_button_pressed() -> void: # play pressed on main menu
	button_timer.start()
	n = 2

func _on_credits_button_pressed() -> void: # credit screen pressed
	button_timer.start()
	n = 4
