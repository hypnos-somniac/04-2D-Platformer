extends KinematicBody2D

export var speed = 10
export var damage = 10
var direction = 1
var velocity = Vector2.ZERO




func _physics_process(delta):
	velocity.x += direction * speed
	move_and_slide_with_snap(velocity, Vector2.UP)


func _on_Area2D_body_entered(body):
	if velocity.x != 0 and body.name == "Platform" or body.name == "Enemy_Walls":
		velocity.x = 0
		direction *= -1

	if body.name == "Player":
		body.do_damage(damage)
