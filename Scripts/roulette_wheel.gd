extends Node2D

@onready var global: Control = $Global

var number = 0

var rotation_speed
var friction = 0.99
var applyFriction = false



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if applyFriction:
		if rotation_speed != 0:
			var current_angle = self.rotation
			current_angle += rotation_speed * delta
			rotation_speed *= friction
			if abs(rotation_speed) < 0.01:
				rotation_speed = 0
				global.checkWin(number)
				applyFriction = false
			self.rotation = current_angle
	else:
		rotation_degrees += 1

			
	
	
