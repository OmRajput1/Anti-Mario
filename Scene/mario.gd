extends Node2D

@onready var collision_shape_2d: CollisionShape2D = $AnimatedSprite2D/CollisionShape2D
@onready var animated_sprite_2d: AnimatedSprite2D = $CharacterBody2D/AnimatedSprite2D

var health = 2




func _on_body_entered(body: Node2D) -> void:
	if body.name == "collision_shape_2d":
		print("hit")
		animated_sprite_2d.queue_free()
		
		
	
