extends Node2D

@onready var bg_cloud = preload("res://Assets/title_screen/Scrolling_Clouds_Background.png")
@onready var fg_cloud = preload("res://Assets/title_screen/Scrolling_Clouds_Foreground.png")
@export var cloud_back: Node2D
@export var cloud_front: Node2D
var bg_cloud_spd = 2
var fg_cloud_spd = 4

@onready var button_timer: Timer = $"Button Timer"
var n

func _init():
	GlobalAudio.current_scene = "game"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalAudio.play_music_level()
	spawn_cloud_inst(bg_cloud,0, 108,cloud_back)
	spawn_cloud_inst(fg_cloud,0, 108,cloud_front)
	
	spawn_cloud_inst(bg_cloud, 3840, 108,cloud_back)
	spawn_cloud_inst(fg_cloud, 3840, 108,cloud_front)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move_cloud_parallax(cloud_back,bg_cloud_spd)
	move_cloud_parallax(cloud_front,fg_cloud_spd)
	
	


func _on_button_timer_timeout() -> void:
	if n == 1: # to home
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	elif n == 2: # play game
		get_tree().change_scene_to_file("res://Scenes/game.tscn")
	elif n == 3: # enter shop
		get_tree().change_scene_to_file("res://Scenes/shop.tscn")

func _on_play_button_pressed() -> void: # play pressed on main menu
	button_timer.start()
	n = 2

func _on_tutorial_button_pressed() -> void: # credit screen pressed
	$Tutorial.show()
	
func _on_shop_button_pressed() -> void: # shop menu pressed on main menu
	button_timer.start()
	n = 3
	
func _on_options_button_pressed() -> void: # options on main menu
	pass # Replace with function body.

func _on_exit_button_pressed() -> void: # exit pressed on main menu
	button_timer.start()
	n = 1

func spawn_cloud_inst(cloud, x,y, node):
	var sprite = Sprite2D.new()
	sprite.texture = cloud
	sprite.position.x = x
	sprite.position.y = y
	node.add_child(sprite)

func move_cloud_parallax(node, speed):
	#creates endless parallax
	for cloud in node.get_children():
		cloud.position.x -= speed
		if cloud.position.x <= -3840:
			if node.name == "cloud_back":
				spawn_cloud_inst(bg_cloud, 3840, 108,cloud_back)
			if node.name == "cloud_front":
				spawn_cloud_inst(fg_cloud, 3840, 108,cloud_front)
			cloud.queue_free()
