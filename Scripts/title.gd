extends Node2D

@export var play_button: TextureButton
@export var credits_button: TextureButton
@export var close_credits: TextureButton
@export var credits_menu: Control
@export var audio: AudioStreamPlayer

func _ready():
	
	audio.play()


func _on_play_pressed():
	print("play")
	pass # Replace with function body.

func _on_credits_pressed():
	print("credits")
	credits_menu.show()
	pass # Replace with function body.

func _on_back_pressed():
	credits_menu.hide()
	pass # Replace with function body.

func _on_audio_stream_player_finished():
	audio.play()
