extends CharacterBody2D

 
# var SPEED = 300.0
const SPEED = 300.0
#跳跃初速度
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	#如果不触地
	if not is_on_floor():
		velocity += get_gravity() * delta
	#跳跃
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	#控制左右移动
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	#根据向量“velocity”进行移动。
	move_and_slide()
