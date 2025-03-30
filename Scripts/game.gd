extends Node2D

@onready var in_out_bet: MarginContainer = $InOutBet
@onready var in_bet: MarginContainer = $InBet
@onready var out_bet: MarginContainer = $OutBet

@onready var black_hole: Node2D = %"Black Hole"
@onready var roulette_wheel: Node2D = %"Roulette Wheel"
@onready var ball: Node2D = %Ball

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_spin_pressed() -> void:
	roulette_wheel.rotation_speed = 10
	roulette_wheel.applyFriction = true
	ball.playBall = true
