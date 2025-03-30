extends Control
@onready var button = $TextureButton
@onready var button_off = load("res://Assets/UI/options/ToggleOff.png")
@onready var button_on = load("res://Assets/UI/options/ToggleOn.png")
var button_toggled = false

func change_sprite(image):
	var texture = image
	button.normal_texture = texture

func _on_texture_button_pressed():
	if !button_toggled:
		change_sprite(button_on)
		button_toggled = true
	else:
		change_sprite(button_off)
		button_toggled = false
