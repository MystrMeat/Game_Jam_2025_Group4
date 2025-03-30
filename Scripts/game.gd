extends Node2D
@onready var timer: Timer = $Timer

@onready var in_out_bet: MarginContainer = $InOutBet
@onready var in_bet: MarginContainer = $InBet
@onready var out_bet: MarginContainer = $OutBet
@onready var big_buttons: MarginContainer = $BigButtons

@onready var black_hole: Node2D = %"Black Hole"
@onready var roulette_wheel: Node2D = %"Roulette Wheel"
@onready var ball: Node2D = %Ball

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_spin_pressed() -> void: # spins the wheel
	roulette_wheel.rotation_speed = 10
	roulette_wheel.applyFriction = true
	ball.visible = true
	ball.playBall = true

func _on_shop_pressed() -> void: # shop in game is pressed
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://Scenes/shop.tscn")

func _on_bet_inside_pressed() -> void: # bet inside pressed
	big_buttons.visible = false
	in_bet.visible = true
	out_bet.visible = false

func _on_bet_outside_pressed() -> void: # bet outside pressed
	big_buttons.visible = false
	out_bet.visible = true
	in_bet.visible = false
