extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -600.0
const GRAVITY = 1000.0

func _physics_process(delta):
	# 
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Left and right movement
	var direction = Input.get_axis("move_left", "move_right")
	velocity.x = direction * SPEED


	# Jump
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY


	move_and_slide()
