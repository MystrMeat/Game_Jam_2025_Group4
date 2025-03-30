extends Node2D
# Timers
@onready var timer: Timer = $Timer
@onready var valid_timer: Timer = $validTimer

@onready var global: Control = $Global

# Bet amount field
@onready var bet_amount: LineEdit = $"Bet Amount"
@onready var invalid_mass: Label = $"Invalid Mass"
@onready var no_bet_place_error: Label = $"No Bet Place Error"

# Containers for betting Buttons
@onready var in_out_bet: MarginContainer = $InOutBet
@onready var in_bet: MarginContainer = $InBet
@onready var out_bet: MarginContainer = $OutBet
@onready var big_buttons: MarginContainer = $BigButtons
@onready var zero_bet: MarginContainer = $ZeroBet
@onready var bet_lines: MarginContainer = $"Bet Lines"
@onready var dozon_bet: MarginContainer = $DozonBet
@onready var dozon_bet_2: MarginContainer = $DozonBet2

# Roulette objects
@onready var black_hole: Node2D = %"Black Hole"
@onready var roulette_wheel: Node2D = %"Roulette Wheel"
@onready var ball: Node2D = %Ball
@onready var board: Node2D = %Board

var bet_placed = false
var bet_type = []

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
	elif !bet_placed:
		no_bet_place_error.visible = true
		valid_timer.start()
	else:
		global.player_mass -= int(bet_amount.text)
		bet_amount.text = "0"
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
	no_bet_place_error.visible = false
	
#----------------------------------------------------------
# Bet Options Buttons
# Inside bets
func _on_bet_line_pressed() -> void: # Player makes a line bet
	bet_lines.visible = true
	in_out_bet.visible = false
	in_bet.visible = false
	
func _on_bet_corner_pressed() -> void: # Player makes a corner bet
	pass # Replace with function body.

func _on_bet_street_pressed() -> void: # Player makes a street bet
	pass # Replace with function body.
	
func _on_bet_split_pressed() -> void: # Player makes split bet
	pass # Replace with function body.
	
func _on_bet_zero_pressed() -> void: # Player bets on zero
	zero_bet.visible = true
	in_bet.visible = false

func _on_bet_number_pressed() -> void: # Player bets on a number
	pass # Replace with function body.

func _on_back_pressed() -> void: # Player leaves inside bet options
	in_bet.visible = false
	big_buttons. visible = true
	
# Outside bet options
func _on_bet_black_pressed() -> void: # Player bets on black
	bet_placed = true
	board.black_option.visible = true
	bet_type.append("black")
	
func _on_bet_purple_pressed() -> void: # Player bets on purple (red)
	bet_placed = true
	board.red_option.visible = true
	bet_type.append("red")

func _on_bet_odd_pressed() -> void: # Player bets on odd
	bet_placed = true
	board.odd_option.visible = true
	bet_type.append("odd")

func _on_bet_even_pressed() -> void: # Player bets on even
	bet_placed = true
	board.even_option.visible = true
	bet_type.append("even")

func _on_bet_low_pressed() -> void: # Player bets low (0-18)
	bet_placed = true
	board.low_option.visible = true
	bet_type.append("low")

func _on_bet_high_pressed() -> void: # Player bets high
	bet_placed = true
	board.high_option.visible = true
	bet_type.append("high")

func _on_bet_dozen_pressed() -> void: # Player bets on a dozon
	dozon_bet.visible = true
	out_bet.visible = false
	
func _on_back_2_pressed() -> void: # Player leaves outside bet options
	out_bet.visible = false
	big_buttons.visible = true
	
#------------------------------------------------
# Bet Zero Options
func _on_bet_self_pressed() -> void:
	pass # Replace with function body.
	
func _on_bet_zero_line_pressed() -> void:
	pass # Replace with function body.

func _on_bet_zero_corner_pressed() -> void:
	pass # Replace with function body.

func _on_bet_zero_split_pressed() -> void:
	pass # Replace with function body.

func _on_zero_back_pressed() -> void:
	zero_bet.visible = false
	in_bet.visible = true
	
#-----------------------------------------------
# Bet Line Options
func _on_lines_back_pressed() -> void:
	bet_lines.visible = false
	in_out_bet.visible = true
	in_bet.visible = true

func _on_bet_line_1_pressed() -> void: # player bets on line 1
	bet_placed = true
	board.line_option_1.visible = true
	bet_type.append("line1")

func _on_bet_line_2_pressed() -> void: # player bets on line 2
	bet_placed = true
	board.line_option_2.visible = true
	bet_type.append("line2")

func _on_bet_line_3_pressed() -> void: # player bets on line 3
	bet_placed = true
	board.line_option_3.visible = true
	bet_type.append("line3")

func _on_bet_line_4_pressed() -> void:
	bet_placed = true
	board.line_option_4.visible = true
	bet_type.append("line4")

func _on_bet_line_5_pressed() -> void:
	bet_placed = true
	board.line_option_5.visible = true
	bet_type.append("line5")

func _on_bet_line_6_pressed() -> void:
	bet_placed = true
	board.line_option_6.visible = true
	bet_type.append("line6")

func _on_bet_line_7_pressed() -> void:
	bet_placed = true
	board.line_option_7.visible = true
	bet_type.append("line7")

func _on_bet_line_8_pressed() -> void:
	bet_placed = true
	board.line_option_8.visible = true
	bet_type.append("line8")

func _on_bet_line_9_pressed() -> void:
	bet_placed = true
	board.line_option_9.visible = true
	bet_type.append("line9")

func _on_bet_line_10_pressed() -> void:
	bet_placed = true
	board.line_option_10.visible = true
	bet_type.append("line10")

func _on_bet_line_11_pressed() -> void:
	bet_placed = true
	board.line_option_11.visible = true
	bet_type.append("line11")
	
#-------------------------------------------
# Dozon bet options
func _on_dozon_back_pressed() -> void:
	dozon_bet.visible = false
	out_bet.visible = true

func _on_st_dozon_pressed() -> void:
	board._1_st_12_option.visible = true
	board._2_nd_12_option.visible = false
	board._3_rd_12_option.visible = false
	dozon_bet_2.visible = true
	dozon_bet.visible = false
	bet_type = "1stdozon"

func _on_nd_dozon_pressed() -> void:
	board._2_nd_12_option.visible = true
	board._1_st_12_option.visible = false
	board._3_rd_12_option.visible = false
	dozon_bet_2.visible = true
	dozon_bet.visible = false
	bet_type = "2nddozon"
	
func _on_rd_dozon_pressed() -> void:
	board._3_rd_12_option.visible = true
	board._2_nd_12_option.visible = false
	board._1_st_12_option.visible = false
	dozon_bet_2.visible = true
	dozon_bet.visible = false
	bet_type = "3rddozon"

func _on__to_1_back_pressed() -> void:
	dozon_bet_2.visible = false
	dozon_bet.visible = true

func _on_a_pressed() -> void:
	board._2_to_1_option_1.visible = true
	board._2_to_1_option_2.visible = false
	board._2_to_1_option_3.visible = false
	bet_placed = true
	bet_type = bet_type + "A"

func _on_b_pressed() -> void:
	board._2_to_1_option_1.visible = false
	board._2_to_1_option_2.visible = true
	board._2_to_1_option_3.visible = false
	bet_placed = true
	bet_type = bet_type + "B"

func _on_c_pressed() -> void:
	board._2_to_1_option_3.visible = true
	board._2_to_1_option_1.visible = true
	board._2_to_1_option_2.visible = false
	bet_placed = true
	bet_type = bet_type + "C"

#_____________________________________________
# Clear game board and bets
func _on_clear_pressed() -> void:
	bet_placed = false
	bet_type = []
	board.line_option_1.visible = false
	board.line_option_2.visible = false
	board.line_option_3.visible = false
	board.line_option_4.visible = false
	board.line_option_5.visible = false
	board.line_option_6.visible = false
	board.line_option_7.visible = false
	board.line_option_8.visible = false
	board.line_option_9.visible = false
	board.line_option_10.visible = false
	board.line_option_11.visible = false
	board.split_option_1.visible = false
	board.split_option_2.visible = false
	board.split_option_3.visible = false
	board.split_option_4.visible = false
	board.split_option_5.visible = false
	board.split_option_6.visible = false
	board.split_option_7.visible = false
	board.split_option_8.visible = false
	board.split_option_9.visible = false
	board.split_option_10.visible = false
	board.split_option_11.visible = false
	board.split_option_12.visible = false
	board.split_option_13.visible = false
	board.split_option_14.visible = false
	board.split_option_15.visible = false
	board.split_option_16.visible = false
	board.split_option_17.visible = false
	board.split_option_18.visible = false
	board.split_option_19.visible = false
	board.split_option_20.visible = false
	board.split_option_21.visible = false
	board.split_option_22.visible = false
	board.split_option_23.visible = false
	board.split_option_24.visible = false
	board.split_option_25.visible = false
	board.split_option_26.visible = false
	board.split_option_27.visible = false
	board.split_option_28.visible = false
	board.split_option_29.visible = false
	board.split_option_30.visible = false
	board.split_option_31.visible = false
	board.split_option_32.visible = false
	board.split_option_33.visible = false
	board.corner_option_1.visible = false
	board.corner_option_2.visible = false
	board.corner_option_3.visible = false
	board.corner_option_4.visible = false
	board.corner_option_5.visible = false
	board.corner_option_6.visible = false
	board.corner_option_7.visible = false
	board.corner_option_8.visible = false
	board.corner_option_9.visible = false
	board.corner_option_10.visible = false
	board.corner_option_11.visible = false
	board.corner_option_12.visible = false
	board.corner_option_13.visible = false
	board.corner_option_14.visible = false
	board.corner_option_15.visible = false
	board.corner_option_16.visible = false
	board.corner_option_17.visible = false
	board.corner_option_18.visible = false
	board.corner_option_19.visible = false
	board.corner_option_20.visible = false
	board.corner_option_21.visible = false
	board.corner_option_22.visible = false
	board._1_st_12_option.visible = false
	board._2_nd_12_option.visible = false
	board._3_rd_12_option.visible = false
	board._2_to_1_option_1.visible = false
	board._2_to_1_option_2.visible = false
	board._2_to_1_option_3.visible = false
	board.low_option.visible = false
	board.high_option.visible = false
	board.odd_option.visible = false
	board.even_option.visible = false
	board.red_option.visible = false
	board.black_option.visible = false
	board.zero_option.visible = false
	board.zero_corner_option_1.visible = false
	board.zero_corner_option_2.visible = false
	board.zero_split_option_1.visible = false
	board.zero_split_option_2.visible = false
	board.zero_split_option_3.visible = false
	board.zero_line_option.visible = false
	board.street_option_1.visible = false
	board.street_option_2.visible = false
	board.street_option_3.visible = false
	board.street_option_4.visible = false
	board.street_option_5.visible = false
	board.street_option_6.visible = false
	board.street_option_7.visible = false
	board.street_option_8.visible = false
	board.street_option_9.visible = false
	board.street_option_10.visible = false
	board.street_option_11.visible = false
	board.street_option_12.visible = false
	board.option_1.visible = false
	board.option_2.visible = false
	board.option_3.visible = false
	board.option_4.visible = false
	board.option_5.visible = false
	board.option_6.visible = false
	board.option_7.visible = false
	board.option_8.visible = false
	board.option_9.visible = false
	board.option_10.visible = false
	board.option_11.visible = false
	board.option_12.visible = false
	board.option_13.visible = false
	board.option_14.visible = false
	board.option_15.visible = false
	board.option_16.visible = false
	board.option_17.visible = false
	board.option_18.visible = false
	board.option_19.visible = false
	board.option_20.visible = false
	board.option_21.visible = false
	board.option_22.visible = false
	board.option_23.visible = false
	board.option_24.visible = false
	board.option_25.visible = false
	board.option_26.visible = false
	board.option_27.visible = false
	board.option_28.visible = false
	board.option_29.visible = false
	board.option_30.visible = false
	board.option_31.visible = false
	board.option_32.visible = false
	board.option_33.visible = false
	board.option_34.visible = false
	board.option_35.visible = false
	board.option_36.visible = false
