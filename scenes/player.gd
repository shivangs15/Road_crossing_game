extends CharacterBody2D

var direction: Vector2 
var speed: int = 100

func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("Left","Right","Up","Down")
	velocity = direction*speed
	animation()
	move_and_slide()
	


func animation():
	if direction:
		$AnimatedSprite2D.flip_h = direction.x > 0
		if direction.x != 0:
			$AnimatedSprite2D.animation = 'Left'
		else:
			$AnimatedSprite2D.animation = 'Up' if direction.y < 0 else 'Down'
	else:
		$AnimatedSprite2D.frame = 0
