extends CharacterBody2D
class_name PlayerAnt


@export var speed := 400
@export var infected := true
@onready var color_rect := $ColorRect

func _physics_process(_delta: float) -> void:
	move_and_slide()
