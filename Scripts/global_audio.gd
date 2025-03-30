extends AudioStreamPlayer

const title = preload("res://Audio/opening_screen.wav")
const game = preload("res://Audio/game_play_music_concept.wav")
var current_scene = "title"

func _play_music(music: AudioStream, volume = 0.0):
	if stream == music:
		return
	
	stream = music
	volume_db = volume
	play()

func play_music_level():
	if current_scene == "title":
		_play_music(title)
	if current_scene == "game":
		_play_music(game)
