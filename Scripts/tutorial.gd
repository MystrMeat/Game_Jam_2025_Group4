extends Control

@onready var arrow_left = $arrow_left
@onready var arrow_right = $arrow_right
@onready var step_count
var visibility = true

func _ready():
	step_count == 1

func _physics_process(delta):
	if visibility == true:
		$step2.show()
	pass

func _on_arrow_left_pressed():
	if step_count == 1:
		hide()
		pass
	elif step_count == 2:
		$step2.hide()
		$step1.show()
		step_count = 1
		pass
	elif step_count == 3:
		$step3.hide()
		$step2.show()
		step_count = 2
		pass
	elif step_count == 4:
		$step4.hide()
		$step3.show()
		step_count = 3
		pass
	elif step_count == 5:
		$step5.hide()
		$step4.show()
		step_count = 4
		pass
	elif step_count == 6:
		$step6.hide()
		$step5.show()
		step_count = 5
		pass
	pass # Replace with function body.


func _on_arrow_right_pressed():
	if step_count == 1:
		$step1.hide()
		$step2.show()
		step_count = 2
		pass
	elif step_count == 2:
		$step2.hide()
		$step3.show()
		step_count = 3
		pass
	elif step_count == 3:
		$step3.hide()
		$step4.show()
		step_count = 4
		pass
	elif step_count == 4:
		$step4.hide()
		$step5.show()
		step_count = 5
		pass
	elif step_count == 5:
		$step5.hide()
		$step6.show()
		step_count = 6
		pass
	elif step_count == 6:
		hide()
		pass
	pass # Replace with function body.
