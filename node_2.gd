extends Node2D

func _ready() ->void:
	pass
func _process(delta: float) ->void:
	#在“移动()”前面加“#”将代码注释
	移动()
	pass
func _input(event: InputEvent) -> void:
	#如果事件是鼠标按钮。
	if event is InputEventMouseButton:
		#如果事件为按下。
		if event.is_pressed():
			#“==1”表示鼠标左键，2表示鼠标右键。
			if event.button_index == 1:
				#在“向上()”前面加“#”将代码注释
				向上()
				pass
	#如果事件是键盘按键。
	if event is InputEventKey:
		#如果事件为按下。
		if event.is_pressed():
			#如果按下的键为W键。
			if event.keycode == KEY_W:
				#在“向上()”前面加“#”将代码注释
				向上()
				pass
func 移动():
	if Input.is_action_pressed("左"):
		%"悟空".position.x -= 1
		$charater.position.x -= 1
	if Input.is_action_pressed("右"):
		%"悟空".position.x += 1
		$charater.position.x += 1
	if Input.is_action_pressed("上"):
		%"悟空".position.y -= 1
		$charater.position.x += 1
	if Input.is_action_pressed("下"):
		%"悟空".position.y += 1
		$charater.position.x += 1
func 向上():
	%"悟空".position.y -= 1
	pass
