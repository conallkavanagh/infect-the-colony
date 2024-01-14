extends Node

var current_player: PlayerAnt = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass

func set_current_player(ant: PlayerAnt) -> void:
	current_player = ant
	current_player.infected = true
	#current_player.color_rect.color = Color("red")

func get_current_player() -> CharacterBody2D:
	return current_player
