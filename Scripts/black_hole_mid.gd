extends Sprite2D

var d := 0.0
var speed := 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	d += delta
	
	position = Vector2(
		sin(d * speed),
		cos(d * speed)
	)
