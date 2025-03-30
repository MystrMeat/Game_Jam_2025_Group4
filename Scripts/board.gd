extends Node2D

# Option toggles for lines
@onready var line_option_1: Line2D = $LineOption1
@onready var line_option_2: Line2D = $LineOption2
@onready var line_option_3: Line2D = $LineOption3
@onready var line_option_4: Line2D = $LineOption4
@onready var line_option_5: Line2D = $LineOption5
@onready var line_option_6: Line2D = $LineOption6
@onready var line_option_7: Line2D = $LineOption7
@onready var line_option_8: Line2D = $LineOption8
@onready var line_option_9: Line2D = $LineOption9
@onready var line_option_10: Line2D = $LineOption10
@onready var line_option_11: Line2D = $LineOption11

# Split line toggles
@onready var split_option_1: TextureButton = $SplitOption1
@onready var split_option_2: TextureButton = $SplitOption2
@onready var split_option_3: TextureButton = $SplitOption3
@onready var split_option_4: TextureButton = $SplitOption4
@onready var split_option_5: TextureButton = $SplitOption5
@onready var split_option_6: TextureButton = $SplitOption6
@onready var split_option_7: TextureButton = $SplitOption7
@onready var split_option_8: TextureButton = $SplitOption8
@onready var split_option_9: TextureButton = $SplitOption9
@onready var split_option_10: TextureButton = $SplitOption10
@onready var split_option_11: TextureButton = $SplitOption11
@onready var split_option_12: TextureButton = $SplitOption12
@onready var split_option_13: TextureButton = $SplitOption13
@onready var split_option_14: TextureButton = $SplitOption14
@onready var split_option_15: TextureButton = $SplitOption15
@onready var split_option_16: TextureButton = $SplitOption16
@onready var split_option_17: TextureButton = $SplitOption17
@onready var split_option_18: TextureButton = $SplitOption18
@onready var split_option_19: TextureButton = $SplitOption19
@onready var split_option_20: TextureButton = $SplitOption20
@onready var split_option_21: TextureButton = $SplitOption21
@onready var split_option_22: TextureButton = $SplitOption22
@onready var split_option_23: TextureButton = $SplitOption23
@onready var split_option_24: TextureButton = $SplitOption24
@onready var split_option_25: TextureButton = $SplitOption25
@onready var split_option_26: TextureButton = $SplitOption26
@onready var split_option_27: TextureButton = $SplitOption27
@onready var split_option_28: TextureButton = $SplitOption28
@onready var split_option_29: TextureButton = $SplitOption29
@onready var split_option_30: TextureButton = $SplitOption30
@onready var split_option_31: TextureButton = $SplitOption31
@onready var split_option_32: TextureButton = $SplitOption32
@onready var split_option_33: TextureButton = $SplitOption33

# corner options toggle
@onready var corner_option_1: TextureButton = $CornerOption1
@onready var corner_option_2: TextureButton = $CornerOption2
@onready var corner_option_3: TextureButton = $CornerOption3
@onready var corner_option_4: TextureButton = $CornerOption4
@onready var corner_option_5: TextureButton = $CornerOption5
@onready var corner_option_6: TextureButton = $CornerOption6
@onready var corner_option_7: TextureButton = $CornerOption7
@onready var corner_option_8: TextureButton = $CornerOption8
@onready var corner_option_9: TextureButton = $CornerOption9
@onready var corner_option_10: TextureButton = $CornerOption10
@onready var corner_option_11: TextureButton = $CornerOption11
@onready var corner_option_12: TextureButton = $CornerOption12
@onready var corner_option_13: TextureButton = $CornerOption13
@onready var corner_option_14: TextureButton = $CornerOption14
@onready var corner_option_15: TextureButton = $CornerOption15
@onready var corner_option_16: TextureButton = $CornerOption16
@onready var corner_option_17: TextureButton = $CornerOption17
@onready var corner_option_18: TextureButton = $CornerOption18
@onready var corner_option_19: TextureButton = $CornerOption19
@onready var corner_option_20: TextureButton = $CornerOption20
@onready var corner_option_21: TextureButton = $CornerOption21
@onready var corner_option_22: TextureButton = $CornerOption22

# dozon toggle options
@onready var _1_st_12_option: TextureButton = $"1st12Option"
@onready var _2_nd_12_option: TextureButton = $"2nd12Option"
@onready var _3_rd_12_option: TextureButton = $"3rd12Option"
@onready var _2_to_1_option_1: TextureButton = $"2to1Option1"
@onready var _2_to_1_option_2: TextureButton = $"2to1Option2"
@onready var _2_to_1_option_3: TextureButton = $"2to1Option3"

# Outside misc toggle
@onready var low_option: TextureButton = $LowOption
@onready var high_option: TextureButton = $HighOption
@onready var even_option: TextureButton = $EvenOption
@onready var odd_option: TextureButton = $OddOption
@onready var red_option: TextureButton = $RedOption
@onready var black_option: TextureButton = $BlackOption

# zero options toggle
@onready var zero_option: TextureButton = $ZeroOption
@onready var zero_corner_option_1: TextureButton = $ZeroCornerOption1
@onready var zero_corner_option_2: TextureButton = $ZeroCornerOption2
@onready var zero_split_option_1: TextureButton = $ZeroSplitOption1
@onready var zero_split_option_2: TextureButton = $ZeroSplitOption2
@onready var zero_split_option_3: TextureButton = $ZeroSplitOption3
@onready var zero_line_option: Line2D = $ZeroLineOption

# Street options toggle
@onready var street_option_1: TextureButton = $StreetOption1
@onready var street_option_2: TextureButton = $StreetOption2
@onready var street_option_3: TextureButton = $StreetOption3
@onready var street_option_4: TextureButton = $StreetOption4
@onready var street_option_5: TextureButton = $StreetOption5
@onready var street_option_6: TextureButton = $StreetOption6
@onready var street_option_7: TextureButton = $StreetOption7
@onready var street_option_8: TextureButton = $StreetOption8
@onready var street_option_9: TextureButton = $StreetOption9
@onready var street_option_10: TextureButton = $StreetOption10
@onready var street_option_11: TextureButton = $StreetOption11
@onready var street_option_12: TextureButton = $StreetOption12

# Number options toggle
@onready var option_1: TextureButton = $Option1
@onready var option_2: TextureButton = $Option2
@onready var option_3: TextureButton = $Option3
@onready var option_4: TextureButton = $Option4
@onready var option_5: TextureButton = $Option5
@onready var option_6: TextureButton = $Option6
@onready var option_7: TextureButton = $Option7
@onready var option_8: TextureButton = $Option8
@onready var option_9: TextureButton = $Option9
@onready var option_10: TextureButton = $Option10
@onready var option_11: TextureButton = $Option11
@onready var option_12: TextureButton = $Option12
@onready var option_13: TextureButton = $Option13
@onready var option_14: TextureButton = $Option14
@onready var option_15: TextureButton = $Option15
@onready var option_16: TextureButton = $Option16
@onready var option_17: TextureButton = $Option17
@onready var option_18: TextureButton = $Option18
@onready var option_19: TextureButton = $Option19
@onready var option_20: TextureButton = $Option20
@onready var option_21: TextureButton = $Option21
@onready var option_22: TextureButton = $Option22
@onready var option_23: TextureButton = $Option23
@onready var option_24: TextureButton = $Option24
@onready var option_25: TextureButton = $Option25
@onready var option_26: TextureButton = $Option26
@onready var option_27: TextureButton = $Option27
@onready var option_28: TextureButton = $Option28
@onready var option_29: TextureButton = $Option29
@onready var option_30: TextureButton = $Option30
@onready var option_31: TextureButton = $Option31
@onready var option_32: TextureButton = $Option32
@onready var option_33: TextureButton = $Option33
@onready var option_34: TextureButton = $Option34
@onready var option_35: TextureButton = $Option35
@onready var option_36: TextureButton = $Option36

# bet options for outside bets
var bet_red = false
var bet_black = false
var bet_odd = false
var bet_even = false
var bet_low = false
var bet_high = false
var bet_dozen = false

#bet options for inside bets
var bet_line = false
var bet_corner = false
var bet_street = false
var bet_split = false
var bet_number = false
var bet_zero = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
