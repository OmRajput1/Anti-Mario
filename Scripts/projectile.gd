extends CharacterBody2D

@export var SPEED = 400 # Bump this up, 50 is very slow!
var dir : float
var spawnPos : Vector2
var spawnRot : float

func _ready():
	global_position = spawnPos
	global_rotation = spawnRot

func _physics_process(delta: float) -> void:
	# Use Vector2.RIGHT (1, 0) so it shoots forward along its rotation angle
	velocity = Vector2.RIGHT.rotated(dir) * SPEED
	move_and_slide()
