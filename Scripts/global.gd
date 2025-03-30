extends Control

@onready var tutorial_complete = false

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
	player_mass_text.text = str(player_mass) + " Kg"
	player_money_text.text = "$ " + str(player_money)
	
func purchase10():
	player_money -= 10 * 0.25
	player_mass += 10
	player_mass_text.text = str(player_mass) + " Kg"
	player_money_text.text = "$ " + str(player_money)
	
func purchase20():
	player_money -= 20 * 0.25
	player_mass += 20
	player_mass_text.text = str(player_mass) + " Kg"
	player_money_text.text = "$ " + str(player_money)
	
func purchase50():
	player_money -= 50 * 0.25
	player_mass += 50
	player_mass_text.text = str(player_mass) + " Kg"
	player_money_text.text = "$ " + str(player_money)
	
func purchase100():
	player_money -= 100 * 0.25
	player_mass += 100
	player_mass_text.text = str(player_mass) + " Kg"
	player_money_text.text = "$ " + str(player_money)
	
func purchase200():
	player_money -= 200 * 0.25
	player_mass += 200
	player_mass_text.text = str(player_mass) + " Kg"
	player_money_text.text = "$ " + str(player_money)
	
func purchase500():
	player_money -= 500 * 0.25
	player_mass += 500
	player_mass_text.text = str(player_mass) + " Kg"
	player_money_text.text = "$ " + str(player_money)
	
func purchase1000():
	player_money -= 1000 * 0.25
	player_mass += 1000
	player_mass_text.text = str(player_mass) + " Kg"
	player_money_text.text = "$ " + str(player_money)
	
func purchase2000():
	player_money -= 2000 * 0.25
	player_mass += 2000
	player_mass_text.text = str(player_mass) + " Kg"
	player_money_text.text = "$ " + str(player_money)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
