extends Node2D
# Timers
@onready var timer: Timer = $Timer
@onready var valid_timer: Timer = $validTimer

@onready var global: Control = $Global

# Bet amount field
@onready var bet_amount: LineEdit = $"Bet Amount"
@onready var invalid_mass: Label = $"Invalid Mass"

# Containers for betting Buttons
@onready var in_out_bet: MarginContainer = $InOutBet
@onready var in_bet: MarginContainer = $InBet
@onready var out_bet: MarginContainer = $OutBet
@onready var big_buttons: MarginContainer = $BigButtons

# Buttons for inside bets
@onready var bet_line: Button = %"Bet Line"
@onready var bet_corner: Button = %"Bet Corner"
@onready var bet_street: Button = %"Bet Street"
@onready var bet_split: Button = %"Bet Split"
@onready var bet_zero: Button = %"Bet Zero"
@onready var bet_number: Button = %"Bet Number"
@onready var back: Button = %Back

# Buttons for outside bets
@onready var bet_black: Button = %"Bet Black"
@onready var bet_purple: Button = %"Bet Purple"
@onready var bet_odd: Button = %"Bet Odd"
@onready var bet_even: Button = %"Bet Even"
@onready var bet_low: Button = %"Bet Low"
@onready var bet_high: Button = %"Bet High"
@onready var bet_dozen: Button = %"Bet Dozen"
@onready var back_2: Button = %Back2

# Roulette objects
@onready var black_hole: Node2D = %"Black Hole"
@onready var roulette_wheel: Node2D = %"Roulette Wheel"
@onready var ball: Node2D = %Ball

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_spin_pressed() -> void: # spins the wheel
	if global.player_mass < int(bet_amount.text) or global.player_mass == 0:
		invalid_mass.visible = true # If player has insufficient funds
		valid_timer.start()
	else:
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

func _on_valid_timer_timeout() -> void:
	invalid_mass.visible = false
	
#----------------------------------------------------------
# Bet Options Buttons
# Inside bets
func _on_bet_line_pressed() -> void: # Player makes a line bet
	pass # Replace with function body.
	
func _on_bet_corner_pressed() -> void: # Player makes a corner bet
	pass # Replace with function body.

func _on_bet_street_pressed() -> void: # Player makes a street bet
	pass # Replace with function body.
	
func _on_bet_split_pressed() -> void: # Player makes split bet
	pass # Replace with function body.
	
func _on_bet_zero_pressed() -> void: # Player bets on zero
	pass # Replace with function body.

func _on_bet_number_pressed() -> void: # Player bets on a number
	pass # Replace with function body.

func _on_back_pressed() -> void: # Player leaves inside bet options
	in_bet.visible = false
	big_buttons. visible = true
	
# Outside bet options
func _on_bet_black_pressed() -> void: # Player bets on black
	pass # Replace with function body.
	
func _on_bet_purple_pressed() -> void: # Player bets on purple (red)
	pass # Replace with function body.

func _on_bet_odd_pressed() -> void: # Player bets on odd
	pass # Replace with function body.

func _on_bet_even_pressed() -> void: # Player bets on even
	pass # Replace with function body.

func _on_bet_low_pressed() -> void: # Player bets low (0-18)
	pass # Replace with function body.

func _on_bet_high_pressed() -> void: # Player bets high
	pass # Replace with function body.

func _on_bet_dozen_pressed() -> void: # Player bets on a dozon
	pass # Replace with function body.
	
func _on_back_2_pressed() -> void: # Player leaves outside bet options
	out_bet.visible = false
	big_buttons.visible = true
