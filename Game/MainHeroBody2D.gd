extends CharacterBody2D


const SPEED = 500.0
const JUMP_VELOCITY = -400.0


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	var area = $Area2D.get_overlapping_bodies()
	for body in area:
		if (body != $Floor/CollisionShape2D3 || body != $Floor/CollisionShape2D2 || body != $Floor):
			body.queue_free()
		Global.points+=1


	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x /= 1.2

	move_and_slide()
