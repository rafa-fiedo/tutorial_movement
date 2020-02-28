extends KinematicBody2D

const GRAVITY = 0.1 # in pixels
const JUMP = 25 # start speed px/s
const SPEED = 20 # px/s

var velocity = Vector2.ZERO # (0,0)

func _ready():
	pass
	
func _on_Timer_timeout():
	print(str($Timer.wait_time) + " second(s) finished")
	
func _physics_process(delta):
	
	# if no keyboard input for left/right then x speed is 0
	velocity.x = 0 
	if(Input.is_action_pressed("ui_right")):
		velocity.x = SPEED
	elif(Input.is_action_pressed("ui_left")):
		velocity.x = -SPEED
	
	velocity.y += GRAVITY
	
	if (Input.is_action_just_pressed("ui_up")):
		velocity.y -= 25
		$Timer.start(8)
		
	velocity = move_and_slide(velocity)
