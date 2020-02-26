extends KinematicBody2D

const GRAVITY = 25

var velocity = Vector2.ZERO

func _ready():
	pass
	
func _on_Timer_timeout():
	print("2 sec done!")
	
func _physics_process(delta):
	# Physics processing means that the frame rate is synced to the physics, i.e. the delta variable should be constant
	# print(delta) # 0.016667
	# print(str(Engine.get_frames_per_second()))
	print(velocity)
	velocity.y = GRAVITY * delta
	
	velocity = move_and_slide(velocity, Vector2.UP)
	pass
	
	
