extends CharacterBody2D

const SPEED = 80

@onready var sprite = $Sprite2D

func _physics_process(delta):
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"): direction.x += 1
	if Input.is_action_pressed("ui_left"):  direction.x -= 1
	if Input.is_action_pressed("ui_down"):  direction.y += 1
	if Input.is_action_pressed("ui_up"):    direction.y -= 1

	if direction.x != 0:
		sprite.flip_h = direction.x < 0

	velocity = direction.normalized() * SPEED
	move_and_slide()
