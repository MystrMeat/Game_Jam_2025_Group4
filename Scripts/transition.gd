extends Control
@export var animation: AnimationPlayer

func _ready():
	animation.play("fade_in")

func _on_animation_player_animation_finished(anim_name):
	if anim_name == "fade_out":
		# transition to different scene
		#get_tree().change_scene_to_file(file_name)
		print("next scene")
		pass

	pass # Replace with function body.

func play(anim_name):
	print("transition")
	animation.play(anim_name)
	pass
