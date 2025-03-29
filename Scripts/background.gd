extends Node2D

@onready var bg_cloud = preload("res://Assets/title_screen/Scrolling_Clouds_Background.png")
@onready var fg_cloud = preload("res://Assets/title_screen/Scrolling_Clouds_Foreground.png")
@export var cloud_back: Node2D
@export var cloud_front: Node2D
var bg_cloud_spd = 2
var fg_cloud_spd = 4

func _ready():
	spawn_cloud_inst(bg_cloud,0, 108,cloud_back)
	spawn_cloud_inst(fg_cloud,0, 108,cloud_front)
	
	spawn_cloud_inst(bg_cloud, 3840, 108,cloud_back)
	spawn_cloud_inst(fg_cloud,3840, 108,cloud_front)

func _physics_process(_delta):
	move_cloud_parallax(cloud_back,bg_cloud_spd)
	move_cloud_parallax(cloud_front,fg_cloud_spd)

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
