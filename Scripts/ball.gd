extends Node2D

var d := 0.0
var radius := 210
var speed = 2
var friction = 0.99
var playBall = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if playBall:
		d += delta
		
		position = Vector2(
			sin(d * speed) * radius,
			cos(d * speed) * radius
		)
		speed *= friction
			
	
	
