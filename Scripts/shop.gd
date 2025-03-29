extends Control

@onready var timer: Timer = $Timer
@onready var global: Control = $Global

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_back_pressed() -> void: # back pressed on shop screen
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

# player buys mass from shop (10 to 2000 kgs)
func _on_purchase_10_pressed() -> void:
	global.purchase10()

func _on_purchase_20_pressed() -> void:
	global.purchase20()

func _on_purchase_50_pressed() -> void:
	global.purchase50()
	
func _on_purchase_100_pressed() -> void:
	global.purchase100()
	
func _on_purchase_200_pressed() -> void:
	global.purchase200()
	
func _on_purchase_500_pressed() -> void:
	global.purchase500()

func _on_purchase_1000_pressed() -> void:
	global.purchase1000()

func _on_purchase_2000_pressed() -> void:
	global.purchase2000()
