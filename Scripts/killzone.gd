extends Area2D

@onready var timer: Timer = $Timer
@onready var audio_stream_player_2: AudioStreamPlayer = $AudioStreamPlayer2
@onready var audio_stream_player: AudioStreamPlayer = $"../../../AudioStreamPlayer"

func _on_body_entered(body: Node2D) -> void:
	print("u died")
	audio_stream_player_2.play()
	audio_stream_player.stop()
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	
