extends KinematicBody2D

var velocity = Vector2(0,0)
var jumping = false

func _ready():
	$AnimatedSprite.play("default")
func _input(event):
	velocity = Vector2()
	$AnimatedSprite.play("default")
	if event.is_action_pressed("ui_right"):
		velocity.x += 250
		$AnimatedSprite.play("run")
	if event.is_action_pressed("ui_left"):
		velocity.x -= 250
		$AnimatedSprite.play("run")
	if event.is_action_pressed("ui_up") and not jumping:
		velocity.y -= 800
		jumping = true
		$AnimatedSprite.play("head")
	elif velocity.y < 440:
		velocity.y += 2400
		jumping = false
		
func _physics_process(delta):
	move_and_slide(velocity)
	
