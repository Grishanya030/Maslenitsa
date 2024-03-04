extends CharacterBody2D
const SPEED = 300.0

func _physics_process(delta):
	velocity.y += 100 * delta + 60 - Global.game_time 
	move_and_slide()
