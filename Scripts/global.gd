extends Control

@onready var player_mass_text: Label = $"Player Mass"
@onready var player_money_text: Label = $"Player Money"

static var player_mass = 0
static var player_money = 10000

const comet_token := 10
const moon_token := 50
const planet_token := 100
const star_token := 1000

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player_mass_text.text = str(player_mass)
	player_money_text.text = "$ " + str(player_money)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
