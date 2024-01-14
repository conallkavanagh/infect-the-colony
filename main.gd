extends Node2D

@onready var other_player := $ant2

func move_player(player: PlayerAnt) -> void:
	var input_direction : Vector2 = Input.get_vector("left", "right", "up", "down")
	player.velocity = input_direction * player.speed

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	CurrentPlayer.set_current_player($player_ant)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("infect"):
		CurrentPlayer.current_player.color_rect.color = Color("orange")
		CurrentPlayer.set_current_player(other_player)
		CurrentPlayer.current_player.color_rect.color = Color("red")
		if other_player == $ant2:
			other_player = $player_ant
		else:
			other_player = $ant2
	move_player(CurrentPlayer.current_player)
