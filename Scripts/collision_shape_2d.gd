extends CollisionShape2D

@export var rotation_speed: float = 2.0

func _process(delta: float) -> void:
	# delta makes sure the rotation speed is smooth, even if the game lags
	rotation += rotation_speed * delta

func _on_body_entered(body: Node2D) -> void:
	# Make sure it only kills the player, not the floor!
	if body.name == "Bouser":
		print("u died")
		# If you have your killzone setup inside this scene, 
		# you can trigger the death timer here.
