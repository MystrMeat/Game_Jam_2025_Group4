extends Node

@onready var title = preload("res://Audio/opening_screen.wav")
@onready var game = preload("res://Audio/game_play_music_concept.wav")
var current_scene = GlobalAudio.current_scene
var mute: bool

func _ready():
	if current_scene == "title":
		$AudioStreamPlayer.stream = title
	if current_scene == "game":
		$AudioStreamPlayer.stream = game
	$AudioStreamPlayer.play()

func _physics_process(_delta):
	pass


func _on_audio_stream_player_finished():
	$AudioStreamPlayer.play()
